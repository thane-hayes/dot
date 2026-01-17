; Hyper Keys for Windows - AHK v2
; LHyper = LCtrl+LAlt+LWin
; RHyper = RCtrl+RAlt+RWin

#Requires AutoHotkey v2.0

; === GENERAL (Editing) ===
<^<!<#x::Send "^x"          ; Cut
<^<!<#c::Send "^c"          ; Copy
<^<!<#v::Send "^v"          ; Paste
<^<!<#a::Send "^a"          ; Select All
<^<!<#z::Send "^z"          ; Undo
<^<!<#+z::Send "^y"         ; Redo (Windows uses Ctrl+Y)
<^<!<#s::Send "^s"          ; Save
<^<!<#n::Send "^n"          ; New
<^<!<#f::Send "^f"          ; Find
<^<!<#g::Send "{F3}"        ; Find Next (Windows uses F3)
<^<!<#w::Send "^w"          ; Close Tab
<^<!<#q::Send "!{F4}"       ; Quit App
<^<!<#Space::Send "#s"      ; Search (Win+S)
<^<!<#Tab::Send "!{Tab}"    ; App Switcher
<^<!<#e::Send "{Escape}"    ; Escape

; === NAVIGATION (Cursor) ===
<^<!<#h::Send "{Left}"
<^<!<#j::Send "{Down}"
<^<!<#k::Send "{Up}"
<^<!<#l::Send "{Right}"
<^<!<#u::Send "{Home}"      ; Line Start
<^<!<#i::Send "^{Left}"     ; Word Back
<^<!<#o::Send "^{Right}"    ; Word Forward
<^<!<#p::Send "{End}"       ; Line End

; === BROWSER (Tabs) ===
<^<!<#t::Send "^t"          ; New Tab
<^<!<#0::Send "^+{Tab}"     ; Prev Tab
<^<!<#1::Send "^1"
<^<!<#2::Send "^2"
<^<!<#3::Send "^3"
<^<!<#4::Send "^4"
<^<!<#5::Send "^5"
<^<!<#6::Send "^6"
<^<!<#7::Send "^7"
<^<!<#8::Send "^8"
<^<!<#9::Send "^9"

; === MOUSE ===
<^<!<#+h::MouseMove -30, 0, 0, "R"
<^<!<#+j::MouseMove 0, 30, 0, "R"
<^<!<#+k::MouseMove 0, -30, 0, "R"
<^<!<#+l::MouseMove 30, 0, 0, "R"
<^<!<#+b::Click
<^<!<#+n::Click "Right"

; === NVIM ===
<^<!<#+0::Send "^w^w"       ; Cycle Panes

; === TMUX (RHyper) ===
>^>!>#t::Send "^b" "c"      ; New Window
>^>!>#1::Send "^b" "1"
>^>!>#2::Send "^b" "2"
>^>!>#3::Send "^b" "3"
>^>!>#4::Send "^b" "4"
>^>!>#5::Send "^b" "5"
>^>!>#6::Send "^b" "6"
>^>!>#7::Send "^b" "7"
>^>!>#8::Send "^b" "8"
>^>!>#9::Send "^b" "9"
>^>!>#Escape::Send "^b" "["  ; Copy Mode
>^>!>#p::Send "^b" "]"       ; Paste

; === DEBUGGING (RHyper) ===
>^>!>#i::Send "{F12}"       ; Step Into
>^>!>#r::Send "^r"          ; Refresh (browser)
>^>!>#l::Send "^l"          ; Browser URL bar

; === ZOOM ===
F14::Send "^0"              ; Reset zoom
F15::Send "^{+}"            ; Zoom in
F16::Send "^-"              ; Zoom out
