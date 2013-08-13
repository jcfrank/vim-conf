
DIR=~/.vim/bundle/snipMate

echo "backup and delete snipMate snippets folder ..."
# check if snipMate/snippets folder exists
if [ -d "$DIR/snippets" ]
then
	cd $DIR
	tar -czf snippets.tgz snippets/
	rm -fr snippets
else
	echo "the snippets folder does not exists."
fi

