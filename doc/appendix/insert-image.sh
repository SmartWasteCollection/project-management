IMAGE_PATH="uml/$1.svg"
CAPTION="doc/appendix/captions/$1.md"

echo "
\begin{figure}[H]
    \centering
    \includegraphics[width=.85\textwidth]{$IMAGE_PATH}
    \caption{$CAPTION}
    \label{fig:$1}
\end{figure}
" >> doc/appendix/appendix.tex