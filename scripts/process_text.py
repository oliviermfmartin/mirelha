import sys

in_francais = open("./txt/mireille_pp2.txt", "r")
out_francais = open("./txt/mireille.txt", "w")

prg = ""
francais = []

for line in in_francais:

	l = line.strip()

	if len(l) > 0:
		prg += unicode(l + " ", 'utf8')
	else:
		francais.append(prg + " \n")
		prg = ""

francais.append(prg + " \n")

for line in francais:
	print >> out_francais, line.encode('utf8')