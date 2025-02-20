"resource/ui/PaintGunPanel.res"
{
    "PaintGunPanel"
    {
        "ControlName"		"PaintGunPanel"
        "fieldName"		"PaintGunPanel"
        "xpos"		"rs1.5"
        "ypos"		"cs-1.0"
        "wide"		"200"
        "tall"		"100"
        "autoResize"		"0"
        "pinCorner"		"0"
        "tabPosition"		"0"
    }	
    "LabelSliderScale"
    {
        "ControlName"		"Label"
        "fieldName"		"LabelSliderScale"
        "xpos"		"5"
        "ypos"		"5"
        "autoResize"		"0"
        "pinCorner"		"0"
        "visible"		"1"
        "enabled"		"1"
        "tabPosition"		"0"
        "labelText"		"#MOM_PaintGunPanel_SliderText"
        "font" "DefaultSmall"
        "textAlignment"		"west"
        "dulltext"		"0"
        "brighttext"		"0"
        "wrap"		"0"
        "Default"		"0"
        "auto_tall_tocontents" "1"
        "auto_wide_tocontents" "1"
    }
    
    "SliderScale"
    {
        "ControlName" "CvarSlider"
        "fieldName" "SliderScale"
        "xpos" "0"
        "ypos" "-10"
        "wide"		"145"
        "tall"		"20"
        "autoResize"		"0"
        "pinCorner"		"0"
        "RoundedCorners"		"15"
        "pin_corner_to_sibling"		"0"
        "pin_to_sibling_corner"		"0"
        "visible"		"1"
        "enabled"		"1"
        "tabPosition"		"0"
        "leftText"		"#GameUI_Low"
        "rightText"		"#GameUI_High"
        "font" "DefaultSmall"
        "cvar_name" "mom_paintgun_scale"
        "precision"     "2"
        "autoapply"     "1"
		"usecvarbounds" "1"
        "actionsignallevel" "1"
        "mouseinputenabled" "1"
        "pin_to_sibling" "LabelSliderScale"
        "pin_to_sibling_corner" "2"
        "pin_corner_to_sibling" "0"
    }
    "TextSliderScale"
    {
        "ControlName"	"CvarTextEntry"
        "fieldName"		"TextSliderScale"
        "xpos"		"0"
        "ypos"		"0"
        "wide"		"35"
        "tall"		"18"
        "autoResize"		"0"
        "pinCorner"		"0"
        "visible"		"1"
        "enabled"		"1"
        "tabPosition"		"0"
        "textHidden"		"0"
        "editable"		"1"
        "maxchars"		"-1"
        "cvar_name" "mom_paintgun_scale"
        "NumericInputOnly"		"1"
        "unicode"		"0"
        "mouseinputenabled" "1"
        "keyboardinputenabled" "1"
        "pin_to_sibling" "SliderScale"
        "pin_to_sibling_corner" "1"
        "pin_corner_to_sibling" "0"
    }
    "ToggleViewmodel"
    {
        "ControlName" "CvarToggleCheckButton"
        "fieldName" "ToggleViewmodel"
        "xpos" "0"
        "ypos" "0"
        "visible"		"1"
        "enabled"		"1"
        "font" "DefaultSmall"
        "labelText"		"#MOM_PaintGunPanel_Viewmodel"
        "textAlignment" "west"
        "auto_wide_tocontents" "1"
        "cvar_name" "mom_paintgun_drawmodel"
        "auto_wide_tocontents" "1"
        "auto_tall_tocontents" "1"
        "pin_to_sibling" "SliderScale"
        "pin_to_sibling_corner" "2"
        "pin_corner_to_sibling" "0"
    }
    "ToggleSound"
    {
        "ControlName" "CvarToggleCheckButton"
        "fieldName" "ToggleSound"
        "xpos" "0"
        "ypos" "0"
        "visible"		"1"
        "enabled"		"1"
        "font" "DefaultSmall"
        "labelText"		"#MOM_PaintGunPanel_Sound"
        "textAlignment" "west"
        "auto_wide_tocontents" "1"
        "cvar_name" "mom_paintgun_shoot_sound"
        "auto_wide_tocontents" "1"
        "auto_tall_tocontents" "1"
        "pin_to_sibling" "ToggleViewmodel"
        "pin_to_sibling_corner" "2"
        "pin_corner_to_sibling" "0"
    }
    "LabelColorButton"
    {
        "ControlName"		"Label"
        "fieldName"		"LabelColorButton"
        "xpos"		"0"
        "ypos"		"10"
        "autoResize"		"0"
        "pinCorner"		"0"
        "visible"		"1"
        "enabled"		"1"
        "tabPosition"		"0"
        "labelText"		"#MOM_PaintGunPanel_Color"
        "font" "DefaultSmall"
        "textAlignment"		"east"
        "dulltext"		"0"
        "brighttext"		"0"
        "wrap"		"0"
        "Default"		"0"
        "auto_wide_tocontents" "1"
        "auto_tall_tocontents" "1"
        "pin_to_sibling" "ToggleSound"
        "pin_to_sibling_corner" "2"
        "pin_corner_to_sibling" "0"
    }
    "PickColorButton"
    {
        "ControlName" "Button"
        "fieldName" "PickColorButton"
        "xpos" "0"
        "ypos" "0"
        "command" "picker"
        "visible" "1"
        "enabled" "1"
        "labelText" ""
        "tooltiptext" "#MOM_PaintGunPanel_Color_TT"
        "actionsignallevel" "1"
        "pin_to_sibling" "LabelColorButton"
        "pin_to_sibling_corner" "5"
        "pin_corner_to_sibling" "7"
    }
    "CloseButton"
    {
        "ControlName" "Button"
        "fieldName" "CloseButton"
        "xpos" "rs1.25"
        "ypos" "rs1.5"
        "command" "Close"
        "visible" "1"
        "enabled" "1"
        "labelText" "Close"
        "actionsignallevel" "1"
        "proportionalToParent" "1"
    }
}