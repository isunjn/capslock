;=====================================================================o
;                            Initialize                              ;|
;---------------------------------------------------------------------o
SetCapsLockState, AlwaysOff                                          ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                              Switch                                ;|
;---------------------------------o-----------------------------------o
;                    CapsLock + ` | {CapsLock}                       ;|
;---------------------------------o-----------------------------------o
CapsLock & `::                                                       ;|
GetKeyState, CapsLockState, CapsLock, T                              ;|
if CapsLockState = D                                                 ;|
    SetCapsLockState, AlwaysOff                                      ;|
else                                                                 ;|
    SetCapsLockState, AlwaysOn                                       ;|
KeyWait, ``                                                          ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                               Escape                               ;|
;----------------------------------o----------------------------------o
;                        CapsLock  |  ESC                            ;|
;----------------------------------o----------------------------------o
CapsLock::Send, {ESC}                                                ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                               Navigate                             ;|
;-----------------------------------o---------------------------------o
;                      CapsLock + h |  Left                          ;|
;                      CapsLock + j |  Down                          ;|
;                      CapsLock + k |  Up                            ;|
;                      CapsLock + l |  Right                         ;|
;                      CapsLock + i |  Home                          ;|
;                      CapsLock + o |  End                           ;|
;                      CapsLock + p |  PageDown                      ;|
;                      CapsLock + u |  PageUp                        ;|
;                      CapsLock + w |  Word                          ;|
;                      CapsLock + b |  Back                          ;|
;                      Alt to select                                 ;|
;-----------------------------------o---------------------------------o
CapsLock & h::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Left}                                                     ;|
else                                                                 ;|
    Send, +{Left}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & j::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Down}                                                     ;|
else                                                                 ;|
    Send, +{Down}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & k::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Up}                                                       ;|
else                                                                 ;|
    Send, +{Up}                                                      ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & l::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Right}                                                    ;|
else                                                                 ;|
    Send, +{Right}                                                   ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & i::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Home}                                                     ;|
else                                                                 ;|
    Send, +{Home}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & o::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {End}                                                      ;|
else                                                                 ;|
    Send, +{End}                                                     ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & u::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {PgUp}                                                     ;|
else                                                                 ;|
    Send, +{PgUp}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & p::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {PgDn}                                                     ;|
else                                                                 ;|
    Send, +{PgDn}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & w::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, ^{Right}                                                   ;|
else                                                                 ;|
    Send, ^+{Right}                                                  ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & b::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, ^{Left}                                                    ;|
else                                                                 ;|
    Send, ^+{Left}                                                   ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                                Scroll                              ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + f  |  Scroll Line Down              ;|
;                     CapsLock + d  |  Scroll Line Up                ;|
;               CapsLock + Alt + f  |  Scroll Page Down              ;|
;               CapsLock + Alt + d  |  Scroll Page Up                ;|
;-----------------------------------o---------------------------------o
CapsLock & f::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, ^{Down}                                                    ;|
else                                                                 ;|
    Send, !{PgDn}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & d::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, ^{Up}                                                      ;|
else                                                                 ;|
    Send, !{PgUp}                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                                Delete                              ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + s  |  Delete One Line               ;|
;                     CapsLock + n  |  BackSpace                     ;|
;                     CapsLock + m  |  Delete                        ;|
;               CapsLock + Alt + n  |  BackSpace One Word            ;|
;               CapsLock + Alt + m  |  Delete One Word               ;|
;-----------------------------------o---------------------------------o
CapsLock & s:: Send, ^+k                                             ;|
;-----------------------------------o                                ;|
CapsLock & n::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {BS}                                                       ;|
else                                                                 ;|
    Send, ^{BS}                                                      ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & m::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, {Del}                                                      ;|
else                                                                 ;|
    Send, ^{Del}                                                     ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                                 Edit                               ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + z  |  Ctrl + z (Cancel)             ;|
;                     CapsLock + x  |  Ctrl + x (Cut)                ;|
;                     CapsLock + c  |  Ctrl + c (Copy)               ;|
;                     CapsLock + v  |  Ctrl + z (Paste)              ;|
;                     CapsLock + a  |  Ctrl + a (Select All)         ;|
;                     CapsLock + y  |  Ctrl + z (Yeild)              ;|
;-----------------------------------o---------------------------------o
CapsLock & z:: Send, ^z                                              ;|
CapsLock & x:: Send, ^x                                              ;|
CapsLock & c:: Send, ^c                                              ;|
CapsLock & v:: Send, ^v                                              ;|
CapsLock & a:: Send, ^a                                              ;|
CapsLock & y:: Send, ^y                                              ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                              Convenience                           ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + ;  |  Open Line Down                ;|
;                     CapsLock + g  |  Open Line Up                  ;|
;                     CapsLock + /  |  Comment                       ;|
;                     CapsLock + '  |  =                             ;|
;                     CapsLock + ,  |  _                             ;|
;                     CapsLock + .  |  =>                            ;|
;               CapsLock + Alt + ,  |  Left tab                      ;|
;               CapsLock + Alt + .  |  Right tab                     ;|
;-----------------------------------o---------------------------------o
CapsLock & `;::Send, {End}{Enter}                                    ;|
CapsLock & g::Send, {Up}{End}{Enter}                                 ;|
CapsLock & /:: Send, ^/                                              ;|     
CapsLock & ':: Send, =                                               ;|
;-----------------------------------o                                ;|
CapsLock & ,::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, _                                                          ;|
else                                                                 ;|
    Send, ^{PgUp}                                                    ;|
return                                                               ;|
;-----------------------------------o                                ;|
CapsLock & .::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, => {}                                                      ;|
else                                                                 ;|
    Send, ^{PgDn}                                                    ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                               Tab & Window                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + r  |  Swith Tab                     ;|
;                     CapsLock + e  |  Switch Window                 ;|
;                     CapsLock + q  |  Close Tab                     ;|
;               CapsLock + Alt + q  |  Close Window                  ;|
;-----------------------------------o---------------------------------o
CapsLock & r::Send, ^{Tab}                                           ;|
CapsLock & e::Send, !{Tab}                                           ;|
;-----------------------------------o                                ;|
CapsLock & q::                                                       ;|
if GetKeyState("alt") = 0                                            ;|
    Send, ^w                                                         ;|
else                                                                 ;|
    Send, !{F4}                                                      ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                               Run & Active                         ;|
;-----------------------------------o---------------------------------o
;                     CapsLock + t  |  Open Windows Terminal         ;|
;-----------------------------------o---------------------------------o
CapsLock & t::                                                       ;|
terminal := WinExist("ahk_exe WindowsTerminal.exe")                  ;|
if (terminal)                                                        ;|
{                                                                    ;|
    active := WinActive("ahk_id " terminal)                          ;|
    if (active)                                                      ;|
        WinMinimize, ahk_id %active%                                 ;|
    else                                                             ;|
        WinActivate, ahk_id %terminal%                               ;|
}                                                                    ;|
else                                                                 ;|
    Run, wt.exe                                                      ;|
return                                                               ;|
;---------------------------------------------------------------------o


;=====================================================================o
;                                 Mouse                              ;|
;-----------------------------------o---------------------------------o
;                   CapsLock + Up   |  Mouse Up                      ;|
;                   CapsLock + Down |  Mouse Down                    ;|
;                   CapsLock + Left |  Mouse Left                    ;|
;                  CapsLock + Right |  Mouse Right                   ;|
;    CapsLock + Enter(Push Release) |  Mouse Left Push(Release)      ;|
;-----------------------------------o---------------------------------o
CapsLock & Up::    MouseMove, 0, -10, 0, R                           ;|
CapsLock & Down::  MouseMove, 0, 10, 0, R                            ;|
CapsLock & Left::  MouseMove, -10, 0, 0, R                           ;|
CapsLock & Right:: MouseMove, 10, 0, 0, R                            ;|
;-----------------------------------o                                ;|
CapsLock & Enter::                                                   ;|
SendEvent {Blind}{LButton down}                                      ;|
KeyWait Enter                                                        ;|
SendEvent {Blind}{LButton up}                                        ;|
return                                                               ;|
;---------------------------------------------------------------------o
