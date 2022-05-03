IMAGE_PATH="uml/$1"
if [[ ! -f "$IMAGE_PATH" ]]; then
    IMAGE_PATH="uml/$1.pm"
fi
CAPTION=$(cat "doc/appendix/captions/$1.md")

echo "
\begin{figure}[H]
    \centering
    \includegraphics[width=\textwidth]{$IMAGE_PATH}
    \caption{$CAPTION}
    \label{fig:$1}
\end{figure}
" >> doc/appendix/appendix.tex