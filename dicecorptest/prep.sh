echo "Updating matrix..."
if cd matrix; then git pull; cd ..; else git clone ssh://git@gitlab.matrixmcloud.com/developers/matrix.git; fi
echo "Updating rest..."
if cd rest; then git pull; cd ..; else git clone ssh://git@gitlab.matrixmcloud.com/developers/rest.git; fi
echo "Updating Smarty..."
if cd Smarty/plugins; then git pull; cd ../..; else cd Smarty; git clone ssh://git@gitlab.matrixmcloud.com/developers/smartyplugins.git plugins; cd ..; fi
