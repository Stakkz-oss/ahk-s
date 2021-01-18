;Script made by Ninkjeboi
;Middle mouse button to strafe (Click Scrollwheel to strafe)

ALT::Suspend, Toggle
*Mbutton::
Loop
{
GetKeyState,state,Mbutton,P
if state = U
break
Send,{WheelUp}
Sleep 300
}
return