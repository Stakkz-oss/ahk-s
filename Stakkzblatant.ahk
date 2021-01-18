#NoEnv
SendMode, Input
SetBatchLines -1
CoordMode, Mouse, Screen

mouseXY(x, y)
{
DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0)
}

strafe(left)
{
moveCount := 18
sleepInterval := 1
relativeMove := 22
if (left)
{
key := "d"
move := relativeMove
} else
{
key := "a"
move := -relativeMove
}
send {%key% down}
DllCall("Sleep", "UInt", 10)
Loop, %moveCount%
{
mouseXY(move, -(move/4))
DllCall("Sleep", "UInt", sleepInterval)
}
send {%key% up}
}

$XButton2::
while getkeystate("XButton2","P")
{
strafe(true)
strafe(false)
}
return