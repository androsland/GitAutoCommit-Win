DIR='/path/to/repository'
DUMMYFILE='dummyfile.txt'
$DIR/inotifywait -mr --excludei '.git' --format '%w;%f;%e' $DIR  1>$DIR/$DUMMYFILE
