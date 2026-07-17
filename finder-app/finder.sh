
#!/bin/sh

filesdir=$1
searchstr=$2


if [ "$#" -ne 2 ]
then
    echo "Usage: $0 <directory> <search_string>"
    exit 1
fi


if [ ! -d "$filesdir" ]
then
    echo "Error: $filesdir is not a directory."
    exit 1
fi

files=$(find "$filesdir" -type f | wc -l)

matches=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $files and the number of matching lines are $matches"

# echo "These are the files and lines that contains $searchstr"
# grep -r "$searchstr" "$filesdir"
