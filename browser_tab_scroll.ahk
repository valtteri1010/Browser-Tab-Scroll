#Requires AutoHotkey v2.0

#HotIf WinActive("ahk_class Chrome_WidgetWin_1")
~WheelUp::
~WheelDown::
{
    MouseGetPos &x, &y
    WinGetPos &winX, &winY, &winW, &winH, "A"

    hWnd := WinGetID("A")
    WinGetClientPos &clientX, &clientY, &clientW, &clientH, hWnd

    tabBarTop := winY
    tabBarBottom := clientY

    if (y >= tabBarTop && y <= tabBarBottom) {
        if (A_ThisHotkey = "~WheelUp")
            Send("^" "{PgUp}")
        else if (A_ThisHotkey = "~WheelDown")
            Send("^" "{PgDn}")
    }
}
#HotIf
