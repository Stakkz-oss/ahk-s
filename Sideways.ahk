;Script made by Ninkjeboi
;Mouse 4 to strafe

#NoEnv ; Ninkje
; #Warn ; boi
SendMode Input ; Idi
SetWorkingDir %A_ScriptDir% ; Ninkjeboi
#NoEnv
SendMode, Input
SetBatchLines -1
CoordMode, Mouse, Screen

mouseXY(x, y){
DllCall("mouse_event",uint,1,int,x,int,y­,uint,0,int,0)
}

strafe(left){
moveCount := 35
sleepInterval := 2
relativeMove := 15
if(left){
key := "w"
move := -relativeMove
} else {
key := "s"
move := relativeMove
}
Send, {Blind}{%key% down}
DllCall("Sleep", "UInt", 5)
Loop, %moveCount% {
mouseXY(move, 0)
DllCall("Sleep", "UInt", sleepInterval)
}
Send, {Blind}{%key% up}
}

*XButton1::
while getkeystate("XButton1","P") {
strafe(false)
strafe(true)
}
return