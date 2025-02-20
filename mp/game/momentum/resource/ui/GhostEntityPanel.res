"resource/ui/GhostEntityPanel.res"
{
	"GhostEntityPanel"
	{
		"ControlName"	"EditablePanel"
		"fieldName"		"GhostEntityPanel"
		// "xpos"			"cs-0.5"
		// "ypos"			"50"
		"wide"			"80"
		"tall"			"36"
		"autoResize"	"0"
		"pinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"	"0"
		"paintborder"	"1"
        "BgColor_override" "BlackHO"
        "OffsetX" "-74"
        "OffsetY" "-60"
	}

	"GhostEntityPanelAvatar"
	{
		"ControlName"	"ImagePanel"
		"fieldName"		"GhostEntityPanelAvatar"
        "proportionalToParent" "1"
        "xpos" "32"
        "ypos" "4"
        "tall" "17"
        "wide" "17"
	}

	"GhostEntityPanelName"
    {
        "ControlName"       "Label"
        "fieldName"         "GhostEntityPanelName"
        "xpos" "0"
        "ypos" "2"
        "wide" "100"
        "tall" "0"
        "pin_to_sibling" "GhostEntityPanelAvatar"
        "pin_to_sibling_corner" "6"
        "pin_corner_to_sibling" "4"
        "visible"           "1"
        "enabled"           "1"
        "tabPosition"       "0"
        "labelText"         "PLAYER"
        "textAlignment"     "center"
        "dulltext"          "0"
        "brighttext"        "0"
        "font"              "Default"
        "fgcolor_override" 	"White"
        "auto_tall_tocontents" "1"
    }
}