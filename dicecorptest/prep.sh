echo "Updating matrix..."
if cd matrix; then git pull; else git clone ssh://git@gitlab.matrixmcloud.com/developers/matrix.git; fi
echo "updating rest..."
if cd rest; then git pull; else git clone ssh://git@gitlab.matrixmcloud.com/developers/rest.git; fi
