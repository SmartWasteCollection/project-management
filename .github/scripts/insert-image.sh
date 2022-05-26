IMAGE_PATH="img/$1"
if [[ ! -f "$IMAGE_PATH.png" ]]; then
    IMAGE_PATH="img/$1.pm"
fi
CAPTION=$(cat "doc/appendix/captions/$1.md")

echo "
\begin{figure}[H]
    \centering
    \includegraphics[width=\textwidth]{$IMAGE_PATH}
    \caption{$CAPTION \hyperlink{back:$1}{Torna indietro}.}
    \label{fig:$1}
\end{figure}" >> doc/appendix/appendix.tex