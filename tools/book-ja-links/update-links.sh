#!/bin/sh

case $# in
    2)
        ;;
    *)
        echo "Usage: $0 HTML-DIR CSV-FILE" 1>&2
        exit 1
        ;;
esac

HTML_DIR=$1
CSV_FILE=$2

set -e

IFS=,
exec 3< $CSV_FILE

while read FILE LINK 0<&3
do
    sd '<a href="(https://doc.rust-jp.rs/book-ja/)">' "<a href=\"\${1}$LINK\">" $HTML_DIR/$FILE
done

exec 3<&-
