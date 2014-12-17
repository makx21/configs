#!/bin/bash

DOCUMENT_ROOT='{your project document root}';

SVN_SERVER='{svn://.....}';
SVN_USERNAME='{username}';
SVN_PASSWORD='{pass}';

echo "Changing directories to $DOCUMENT_ROOT...";
cd $DOCUMENT_ROOT;

echo "Checking the server revision...";
SERVER_REVISION=`svn info --username $SVN_USERNAME --password $SVN_PASSWORD $SVN_SERVER | grep Revision:`;
echo "Server at revision $SERVER_REVISION";

echo "Checking the working copy revision...";
LOCAL_REVISION=`svn info | grep Revision:`;
echo "Working copy at revision $LOCAL_REVISION";

if [[ "$SERVER_REVISION" == "$LOCAL_REVISION" ]]; then
        echo "Server is up to date. Nothing to do.";
else
         echo "Running SVN update. Please wait...";
        svn update --username $SVN_USERNAME --password $SVN_PASSWORD;
"svn_update.sh" 29L, 805C                                                                                                                                                                 1,1           Top

echo "Changing directories to $DOCUMENT_ROOT...";
cd $DOCUMENT_ROOT;

echo "Checking the server revision...";
SERVER_REVISION=`svn info --username $SVN_USERNAME --password $SVN_PASSWORD $SVN_SERVER | grep Revision:`;
echo "Server at revision $SERVER_REVISION";

echo "Checking the working copy revision...";
LOCAL_REVISION=`svn info | grep Revision:`;
echo "Working copy at revision $LOCAL_REVISION";

if [[ "$SERVER_REVISION" == "$LOCAL_REVISION" ]]; then
        echo "Server is up to date. Nothing to do.";
else
         echo "Running SVN update. Please wait...";
        svn update --username $SVN_USERNAME --password $SVN_PASSWORD;
fi

echo "Finished";

exit
