---
header-includes:
  - \usepackage{multicol}
  - \setlength{\columnsep}{1cm}
geometry: landscape, margin=0.4in
fontsize: 9pt
---

# Karabiner Shortcuts

\begin{multicols}{2}
\raggedright

\textbf{GENERAL (Editing)}

\begin{tabular}{lll}
Cut & LH-X & cmd-x \\
Copy & LH-C & cmd-c \\
Paste & LH-V & cmd-v \\
Select All & LH-A & cmd-a \\
Undo & LH-Z & cmd-z \\
Redo & LH-SH-Z & cmd-shift-z \\
Save & LH-S & cmd-s \\
New & LH-N & cmd-n \\
Find & LH-F & cmd-f \\
Find Next & LH-G & cmd-g \\
Close Tab & LH-W & cmd-w \\
Quit App & LH-Q & cmd-q \\
Spotlight & LH-SPACE & cmd-space \\
App Switcher & LH-TAB & cmd-tab \\
Escape & LH-E & esc \\
\end{tabular}

\vspace{0.2cm}
\textbf{NAVIGATION (Cursor)}

\begin{tabular}{lll}
Arrow Left & LH-H & left \\
Arrow Down & LH-J & down \\
Arrow Up & LH-K & up \\
Arrow Right & LH-L & right \\
Line Start & LH-U & ctrl-a \\
Word Back & LH-I & opt-left \\
Word Forward & LH-O & opt-right \\
Line End & LH-P & ctrl-e \\
\end{tabular}

\vspace{0.2cm}
\textbf{BROWSER}

\begin{tabular}{lll}
New Tab & LH-T & cmd-t \\
Prev Tab & LH-0 & ctrl-shift-tab \\
Switch Tab & LH-1..9 & cmd-1..9 \\
Refresh & RH-R & cmd-r \\
URL Bar & RH-L & cmd-l \\
Zoom Reset & F14 & cmd-0 \\
Zoom In & F15 & cmd-+ \\
Zoom Out & F16 & cmd-- \\
\end{tabular}

\vspace{0.2cm}
\textbf{MOUSE}

\begin{tabular}{lll}
Move Left & LH-SH-H & mouse left \\
Move Down & LH-SH-J & mouse down \\
Move Up & LH-SH-K & mouse up \\
Move Right & LH-SH-L & mouse right \\
Left Click & LH-SH-B & click \\
Right Click & LH-SH-N & right-click \\
\end{tabular}

\columnbreak

\textbf{NVIM}

\begin{tabular}{lll}
Cycle Panes & LH-SH-0 & ctrl-w ctrl-w \\
\end{tabular}

\vspace{0.2cm}
\textit{Leader (Space)}

\begin{tabular}{lll}
Find Files & SPC-p & telescope \\
Live Grep & SPC-g & telescope \\
Buffers & SPC-b & telescope \\
Recent Files & SPC-r & telescope \\
Registers & SPC-v & telescope \\
File Tree & SPC-e & nvim-tree \\
Find in Tree & SPC-f & find file \\
Window Nav & SPC-hjkl & panes \\
Page Up/Down & SPC-u/d & scroll \\
Session Search & SPC-ss & sessions \\
Rename & SPC-rn & LSP rename \\
Code Action & SPC-ca & LSP action \\
\end{tabular}

\vspace{0.2cm}
\textit{LSP (no leader)}

\begin{tabular}{lll}
Go to Def & gd & definition \\
Go to Decl & gD & declaration \\
Go to Impl & gi & implementation \\
References & gr & references \\
Hover Docs & K & hover info \\
Exit Insert & jj & Escape \\
\end{tabular}

\vspace{0.2cm}
\textbf{TMUX}

\begin{tabular}{lll}
New Window & RH-T & ctrl-b c \\
Window 1-9 & RH-1..9 & ctrl-b 1..9 \\
Copy Mode & RH-ESC & ctrl-b [ \\
Paste & RH-P & ctrl-b ] \\
\end{tabular}

\vspace{0.2cm}
\textit{Copy Mode (vi)}

\begin{tabular}{lll}
Start Select & v & char select \\
Line Select & V & line select \\
Copy Exit & Enter & yank \\
Half Page & ctrl-u/d & 12 lines \\
Full Page & ctrl-b/f & full page \\
Jump N Lines & 12k/14j & num + dir \\
\end{tabular}

\vspace{0.2cm}
\textbf{DEBUGGING}

\begin{tabular}{lll}
Step Into & RH-I & F12 \\
Apple Menu & RH-A & ctrl-F2 \\
\end{tabular}

\vspace{0.2cm}
\textbf{SLACK}

\begin{tabular}{lll}
All Unreads & RH-SH-O & cmd-shift-a \\
Switcher & RH-SH-P & cmd-k \\
Forward & RH-SH-[ & ctrl-cmd-right \\
\end{tabular}

\end{multicols}
