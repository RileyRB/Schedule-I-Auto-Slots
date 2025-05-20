F6::Reload

F7:: 
    while true{
        loop 2{
            PressE()
            DllCall("mouse_event", "UInt",0x01, "UInt",900, "UInt",0)
            PressE()
            DllCall("mouse_event", "UInt",0x01, "UInt",700, "UInt",0)
        }
        PressE()
        DllCall("mouse_event", "UInt",0x01, "UInt",4000, "UInt",0)
    }
return

PressE(){
    loop 8  {
        Send, {e down}
        Sleep, 50
        Send, {e up}
    }
    return
}

^q::
    MsgBox, 4, Quit, Are you sure you want to close this AutoHotkey script?
    IfMsgBox, Yes
    {
        ExitApp
    }
return