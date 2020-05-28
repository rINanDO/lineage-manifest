#!/bin/bash


CURRENT_DIR="$PWD"
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/repos.sh"

COUNT=0

cd ../..

echo -n "OK to sync repo (y/N)? "
read USERINPUT
case $USERINPUT in
 y|Y)
	echo "Synching..."
repo sync --force-sync
 ;;
 *) ;;
esac

. build/envsetup.sh


cd $CURRENT_DIR

#Register repositories
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

        echo "===================================================="
        echo "Registering repository for $FOLDER"
        echo "===================================================="
        croot && mkdir -p "$FOLDER" && cd "$FOLDER" && git init
        git config credential.helper store

	# Ensure source repo
	FOUND=`git remote -v|grep "^$SOURCE_REPONAME"`
	if [ -z "$FOUND" ]; then
		git remote add $SOURCE_REPONAME $SOURCE_REPOSITORY
	fi
	git fetch $SOURCE_REPONAME

	# Ensure target repo
	FOUND=`git remote -v|grep "^$TARGET_REPONAME"`
	if [ -z "$FOUND" ]; then
		git remote add $TARGET_REPONAME $TARGET_REPOSITORY
	fi
	git fetch $TARGET_REPONAME

        if [ $ACTION == "checkout" ]; then
            git checkout $TARGET_REPONAME/$TARGET_BRANCH
        fi
        echo ""
	COUNT=$(($COUNT + 1))
done

cd "$CURRENT_DIR"
