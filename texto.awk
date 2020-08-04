#!/usr/bin/awk -f

{
	for(i = 1; i <= NF; i++)
		palavras[$i] = palavras[$i] " " NR
}

END {
	for (i in palavras)
		print i ": " palavras[i]
}
