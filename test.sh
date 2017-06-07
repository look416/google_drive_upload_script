FILE="$1"
IFS=$'\n'

if [ ! -z "$FILE" ]; then
	if [ -f "$FILE" ];then
		echo "file"
	elif [ -d "$FILE" ];then
			FOLDERNAME=$(basename $FILE)
			#FOLDER_ID=`createDirectory "$FOLDERNAME" "$ROOT_FOLDER" "$ACCESS_TOKEN"`
			for file in $(find "$FILE" -maxdepth 1 -mindepth 1);
			do
				echo "$file"
				#uploadFile "$file" "$FOLDER_ID" "$ACCESS_TOKEN"
			done
	fi
fi