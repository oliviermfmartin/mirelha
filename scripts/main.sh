# pdf to text
pdftotext -nopgbrk -layout ./pdf/mirelha.pdf ./txt/mirelha_raw.txt
pdftotext -nopgbrk -layout ./pdf/mireille.pdf ./txt/mireille_raw.txt

# remove trailing whiteline
awk '{$1=$1};1' ./txt/mirelha_raw.txt > ./txt/mirelha.txt
awk '{$1=$1};1' ./txt/mireille_raw.txt > ./txt/mireille.txt


# fmt can get corrupted
# sudo fmtutil-sys --all

# compile tex document to pdf
cd tex
lualatex ./mirelha.tex
cd ..