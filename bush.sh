for filenames in "*" 
do
	i=0
	for filename in $filenames
	do
		i=$((i+1))
		name="${filename%.*}"
		ex="${filename##*.}"
		newFileame=$name"$i."$ex
		$(mv $filename "./"$newFileame)
		echo $newFileame
	done 
done
