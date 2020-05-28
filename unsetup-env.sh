#!/bin/bash


DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/repos.sh"

CURRENT_DIR="$PWD"
COUNT=0

#Restore original repositories
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

	GIT_REPO_URL=`echo "https://github.com/$TARGET_REPONAME/$SOURCE_REPOSITORY"`

        echo "===================================================="
        echo "Unregistering repository for $FOLDER"
        echo "===================================================="

        croot && cd "$FOLDER" && git config --unset credential.helper && git remote remove $TARGET_REPONAME
        croot && rm -rf "$FOLDER"
        repo sync $FOLDER
	echo ""
	COUNT=$(($COUNT + 1))
done

cd "$CURRENT_DIR"
