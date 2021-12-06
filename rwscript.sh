#!/bin/bash
# Bei folgender Fehlermeldung, wenn ein Skript versucht wirt auszuführen, der auf Windows geschrieben wurde:


printf "Welcher Skript soll umgeschrieben werden? (ex. jojo.sh)\n"
read file_name_antwort

existsFile $(pwd)/$file_name_antwort

sed -i -e 's/\r$//' $file_name_antwort

printf "DONE!"\n

existsFile() {
	file=$1
	if [ -e $file ]; then
		exists=true
	else
		printf "%s doesn't exist\n" $file
		exists=false
		$2
	fi
}