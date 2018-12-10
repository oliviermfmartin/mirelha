# install software if requires
# sudo apt-get install texlive texlive-luatex poppler-utils mupdf mupdf-tools

# pdf to text
# pdftotext -nopgbrk -layout ./pdf/mirelha.pdf ./txt/mirelha_raw.txt
# pdftotext -nopgbrk -layout ./pdf/mireille.pdf ./txt/mireille_raw.txt

# remove trailing whiteline
awk '{$1=$1};1' ./txt/mirelha_raw.txt > ./txt/mirelha_pp.txt
awk '{$1=$1};1' ./txt/mireille_raw.txt > ./txt/mireille_pp.txt

# remove head and tail
tail -n +9 txt/mireille_pp.txt > ./txt/mireille_pp1.txt
head -n -35 ./txt/mireille_pp1.txt > txt/mireille_pp.txt
rm -f txt/mireille_pp1.txt

head -n -8 ./txt/mirelha_pp.txt > txt/mirelha_pp1.txt
mv txt/mirelha_pp1.txt txt/mirelha_pp.txt
rm -f txt/mirelha_pp1.txt

# remove trailing breakline
sed -i '/^$/N;/^\n$/D' ./txt/mirelha_pp.txt
sed -i '/^$/N;/^\n$/D' ./txt/mireille_pp.txt
