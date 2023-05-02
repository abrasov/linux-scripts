#!/bin/bash
if [[ $(cat $1 | wc -l) -ne $(sort -u $1 | wc -l) ]]; then
	echo -e "Найденные дубликаты номеров:"
	sort $1| uniq -d
else
	echo -e "В файле нет дубликатов"
fi

exit 0

