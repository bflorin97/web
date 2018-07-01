
#!/bin/bash

init()
{
    if [ -z "$1" ] ; then
        echo "=== Error: Failed to initialize (Bad argument) ==="
        exit 1
	else 
		FOLDER_NAME=$1
    fi

    if [ -e "$FOLDER_NAME" ] ; then
        echo "=== Error: Project already created ==="
        exit 1
    fi
}

setup_html() {
	mkdir $FOLDER_NAME
	touch $FOLDER_NAME/main.css $FOLDER_NAME/main.js 
    cp $RESOURCE_PATH/main_ref.html $FOLDER_NAME/main.html
    cp $RESOURCE_PATH/README_ref.md $FOLDER_NAME/README.md
}

open_html() {
    xdg-open $FOLDER_NAME/main.html
}

echo "=== START ==="

FOLDER_NAME="default"
RESOURCE_PATH="resources"

init $@
setup_html
open_html

echo "=== DONE ==="
