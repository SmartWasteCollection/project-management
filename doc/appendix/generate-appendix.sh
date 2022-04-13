echo "section{Appendice}" > doc/appendix/appendix.tex

while read file; do
  if test -f "$file".pm.puml; then
      mv uml/"$file".pm.puml uml/"$file".puml
  fi
  ./doc/appendix/insert-image.sh "$file"
done < doc/appendix/APPENDIX.md