echo "\section{Appendice}" > doc/appendix/appendix.tex

while read file; do
  ./doc/appendix/insert-image.sh "$file"
done < doc/appendix/APPENDIX.md