# fmt can get corrupted
# sudo fmtutil-sys --all

# finish preprocess
python ./scripts/process_text.py

# compile tex document to pdf
cd tex
lualatex ./parallelfiles.tex

# cut pages in half
mutool poster -x 2 parallelfiles.pdf halfparallelfiles.pdf

# add cover
pdflatex add_cover.tex

# make book
pdflatex mirelha.tex
