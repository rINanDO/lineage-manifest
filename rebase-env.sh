#!/bin/bash

DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/repos.sh"

CURRENT_DIR="$PWD"
COUNT=0

cd ../..
. build/envsetup.sh

echo Stashing your work...
while [ "x${PROJECTS[COUNT]}" != "x" ]
do
	CURRENT="${PROJECTS[COUNT]}"
	FOLDER=`echo "$CURRENT" | awk '{print $1}'`

        echo "======= Stashing repository '$FOLDER' =========="
        croot && cd "$FOLDER"
        git stash
        echo "========================================================================"
	COUNT=$(($COUNT + 1))
done

COUNT=0

breakfast i9100
echo -n "OK to sync repo (y/N)? "
read USERINPUT
case $USERINPUT in
 y|Y)
	echo "Synching..."
        repo sync --force-sync
        . build/envsetup.sh
 ;;
 *) ;;
esac



echo Cleaning untracked files...
repo forall -vc "git clean -f"

#Register all custom repositories
echo Rebasing repo''s from  $SOURCE_REPO_REMOTE to $CUSTOM_REPO_REMOTE ...
while [ "x${PROJECTS[COUNT]}" != "x" ]
do
	CURRENT="${PROJECTS[COUNT]}"
	FOLDER=`echo "$CURRENT" | awk '{print $1}'`
	SOURCE_REPOSITORY=`echo "$CURRENT" | awk '{print $2}'`
        SOURCE_REPONAME=`echo "$CURRENT" | awk '{print $3}'`
        SOURCE_BRANCH=`echo "$CURRENT" | awk '{print $4}'`
	TARGET_REPOSITORY=`echo "$CURRENT" | awk '{print $5}'`
	TARGET_REPONAME=`echo "$CURRENT" | awk '{print $6}'`
        TARGET_BRANCH=`echo "$CURRENT" | awk '{print $7}'`
        ACTION=`echo "$CURRENT" | awk '{print $8}'`
        PARAM1=`echo "$CURRENT" | awk '{print $9}'`
        PARAM2=`echo "$CURRENT" | awk '{print $10}'`

	SOURCE_BRANCH_IS_NOT_A_TAG=`echo "$SOURCE_BRANCH"|grep tags`

        echo "======= Rebasing repository for '$FOLDER' $ACTION =========="
        croot && cd "$FOLDER"
	git config credential.helper store
        case $ACTION in
         rebase )
	        git fetch --unshallow $SOURCE_REPONAME
	        git fetch --unshallow $TARGET_REPONAME
	        git checkout $TARGET_REPONAME/$TARGET_BRANCH
		if [ -z "$SOURCE_BRANCH_IS_NOT_A_TAG" ]; then
			git rebase $SOURCE_REPONAME/$SOURCE_BRANCH
		else
			git rebase $SOURCE_BRANCH
		fi

                git stash apply
		echo -n "OK to push to repo (y/N)? "
		read USERINPUT
		case $USERINPUT in
		 y|Y)
		    echo "Pushing to $TARGET_REPONAME"
		    	git push $TARGET_REPONAME HEAD:$TARGET_BRANCH --force
		        git config credential.helper store
		    ;;
		 *) ;;
		esac
		;;
	 cherrypick )
                git cherry-pick $PARAM1
		git cherry-pick $PARAM2
		;;
	  checkout )
		git fetch --unshallow $TARGET_REPONAME
		git checkout $TARGET_REPONAME/$TARGET_BRANCH
		;;		
	esac
        echo "========================================================================"
	COUNT=$(($COUNT + 1))
done

cd "$CURRENT_DIR"

croot && breakfast i9100

