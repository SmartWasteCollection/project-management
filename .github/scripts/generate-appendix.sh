echo "\section*{Appendice}" > doc/appendix/appendix.tex
echo "\label{sec:appendix}" >> doc/appendix/appendix.tex

while read file; do
  ./.github/scripts/insert-image.sh "$file"
done < doc/appendix/APPENDIX.md