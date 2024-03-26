#tag Module
Protected Module ButtonXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 476574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Function GetCornerRadiusXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCornerRadius Lib "Object:ctrl:MobileButton" As Integer
		    Return getCornerRadius
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Function GetCornerRadiusXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCornerRadius Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getCornerRadius
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652069636F6E206772617669747920666F72207468697320627574746F6E2E
		Function GetIconGravityXC(Extends ctrl As MobileButton) As IconGravity
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconGravity Lib "Object:ctrl:MobileButton" As Integer
		    Return IconGravity(getIconGravity)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652069636F6E206772617669747920666F72207468697320627574746F6E2E
		Function GetIconGravityXC(Extends ctrl As MobileDateTimePicker) As IconGravity
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconGravity Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return IconGravity(getIconGravity)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652070616464696E67206265747765656E2074686520627574746F6E2069636F6E20616E642074686520627574746F6E20746578742C2069662069636F6E2069732070726573656E742E
		Function GetIconPaddingXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconPadding Lib "Object:ctrl:MobileButton" As Integer
		    Return getIconPadding
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 47657473207468652070616464696E67206265747765656E2074686520627574746F6E2069636F6E20616E642074686520627574746F6E20746578742C2069662069636F6E2069732070726573656E742E
		Function GetIconPaddingXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconPadding Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getIconPadding
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073697A65206F66207468652069636F6E20696620697420776173207365742E
		Function GetIconSizeXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconSize Lib "Object:ctrl:MobileButton" As Integer
		    Return getIconSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073697A65206F66207468652069636F6E20696620697420776173207365742E
		Function GetIconSizeXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getIconSize Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getIconSize
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520626F74746F6D20696E73657420666F72207468697320627574746F6E2E
		Function GetInsetBottomXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInsetBottom Lib "Object:ctrl:MobileButton" As Integer
		    Return getInsetBottom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520626F74746F6D20696E73657420666F72207468697320627574746F6E2E
		Function GetInsetBottomXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInsetBottom Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getInsetBottom
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520746F7020696E73657420666F72207468697320627574746F6E2E
		Function GetInsetTopXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInsetTop Lib "Object:ctrl:MobileButton" As Integer
		    Return getInsetTop
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520746F7020696E73657420666F72207468697320627574746F6E2E
		Function GetInsetTopXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getInsetTop Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getInsetTop
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865207374726F6B6520776964746820666F72207468697320627574746F6E2E
		Function GetStrokeWidthXC(Extends ctrl As MobileButton) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getStrokeWidth Lib "Object:ctrl:MobileButton" As Integer
		    Return getStrokeWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865207374726F6B6520776964746820666F72207468697320627574746F6E2E
		Function GetStrokeWidthXC(Extends ctrl As MobileDateTimePicker) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getStrokeWidth Lib "Object:ctrl:MobileDateTimePicker" As Integer
		    Return getStrokeWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function PerformClickXC(Extends ctrl As MobileDateTimePicker) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function performClick Lib "Object:ctrl:MobileDateTimePicker" As Boolean
		    Return performClick
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206261636B67726F756E6420746F206120676976656E207265736F757263652E20546865207265736F757263652073686F756C6420726566657220746F2061204472617761626C65206F626A656374206F72203020746F2072656D6F766520746865206261636B67726F756E642E
		Sub SetBackgroundResourceXC(Extends ctrl As MobileButton, resid As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundResource Lib "Object:ctrl:MobileButton" (myResId As Integer)
		    setBackgroundResource(resid)
		    
		  #Else
		    
		    #Pragma Unused resid
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206261636B67726F756E6420746F206120676976656E207265736F757263652E20546865207265736F757263652073686F756C6420726566657220746F2061204472617761626C65206F626A656374206F72203020746F2072656D6F766520746865206261636B67726F756E642E
		Sub SetBackgroundResourceXC(Extends ctrl As MobileDateTimePicker, resid As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundResource Lib "Object:ctrl:MobileDateTimePicker" (myResId As Integer)
		    setBackgroundResource(resid)
		    
		  #Else
		    
		    #Pragma Unused resid
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetCornerRadiusXC(Extends ctrl As MobileButton, radius As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:ctrl:MobileButton" (myRadius As Integer)
		    setCornerRadius(radius)
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetCornerRadiusXC(Extends ctrl As MobileDateTimePicker, radius As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCornerRadius Lib "Object:ctrl:MobileDateTimePicker" (myRadius As Integer)
		    setCornerRadius(radius)
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652069636F6E206772617669747920666F72207468697320627574746F6E2E
		Sub SetIconGravityXC(Extends ctrl As MobileButton, gravity As IconGravity)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconGravity Lib "Object:ctrl:MobileButton" (myIconGravity As Integer)
		    setIconGravity(Integer(gravity))
		    
		  #Else
		    
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652069636F6E206772617669747920666F72207468697320627574746F6E2E
		Sub SetIconGravityXC(Extends ctrl As MobileDateTimePicker, gravity As IconGravity)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconGravity Lib "Object:ctrl:MobileDateTimePicker" (myIconGravity As Integer)
		    setIconGravity(Integer(gravity))
		    
		  #Else
		    
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652070616464696E67206265747765656E2074686520627574746F6E2069636F6E20616E642074686520627574746F6E20746578742C2069662069636F6E2069732070726573656E742E
		Sub SetIconPaddingXC(Extends ctrl As MobileButton, iconPadding As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconPadding Lib "Object:ctrl:MobileButton" (myIconPadding As Integer)
		    setIconPadding(iconPadding)
		    
		  #Else
		    
		    #Pragma Unused iconPadding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652070616464696E67206265747765656E2074686520627574746F6E2069636F6E20616E642074686520627574746F6E20746578742C2069662069636F6E2069732070726573656E742E
		Sub SetIconPaddingXC(Extends ctrl As MobileDateTimePicker, iconPadding As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconPadding Lib "Object:ctrl:MobileDateTimePicker" (myIconPadding As Integer)
		    setIconPadding(iconPadding)
		    
		  #Else
		    
		    #Pragma Unused iconPadding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520776964746820616E6420686569676874206F66207468652069636F6E2E20557365203020746F2075736520736F75726365204472617761626C652073697A652E
		Sub SetIconSizeXC(Extends ctrl As MobileButton, iconSize As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconSize Lib "Object:ctrl:MobileButton" (myIconSize As Integer)
		    setIconSize(iconSize)
		    
		  #Else
		    
		    #Pragma Unused iconSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520776964746820616E6420686569676874206F66207468652069636F6E2E20557365203020746F2075736520736F75726365204472617761626C652073697A652E
		Sub SetIconSizeXC(Extends ctrl As MobileDateTimePicker, iconSize As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconSize Lib "Object:ctrl:MobileDateTimePicker" (myIconSize As Integer)
		    setIconSize(iconSize)
		    
		  #Else
		    
		    #Pragma Unused iconSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E74206D6F646520666F72207468652069636F6E2073686F776E20666F72207468697320627574746F6E2E
		Sub SetIconTintModeXC(Extends ctrl As MobileButton, mode As PorterDuffModes)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconTintMode Lib "Object:ctrl:MobileButton:Kotlin" Alias "setIconTintMode(android.graphics.PorterDuff.Mode.valueOf(mymode.toString()))" (myMode As CString)
		    setIconTintMode(mode.ToString)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E74206D6F646520666F72207468652069636F6E2073686F776E20666F72207468697320627574746F6E2E
		Sub SetIconTintModeXC(Extends ctrl As MobileDateTimePicker, mode As PorterDuffModes)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconTintMode Lib "Object:ctrl:MobileDateTimePicker:Kotlin" Alias "setIconTintMode(android.graphics.PorterDuff.Mode.valueOf(mymode.toString()))" (myMode As CString)
		    setIconTintMode(mode.ToString)
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E74206C69737420666F72207468652069636F6E2073686F776E20666F72207468697320627574746F6E2E
		Sub SetIconTintXC(Extends ctrl As MobileButton, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconTint Lib "Object:ctrl:MobileButton:Kotlin" Alias _
		    "setStrokeColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setIconTint(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074696E74206C69737420666F72207468652069636F6E2073686F776E20666F72207468697320627574746F6E2E
		Sub SetIconTintXC(Extends ctrl As MobileDateTimePicker, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIconTint Lib "Object:ctrl:MobileDateTimePicker:Kotlin" Alias _
		    "setStrokeColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setIconTint(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652069636F6E20746F2073686F7720666F72207468697320627574746F6E2E2042792064656661756C742C20746869732069636F6E2077696C6C2062652073686F776E206F6E20746865206C6566742073696465206F662074686520627574746F6E2E
		Sub SetIconXC(Extends ctrl As MobileButton, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIcon Lib "Object:ctrl:MobileButton:Kotlin" Alias "setIcon(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		    setIcon(file.NativePath)
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652069636F6E20746F2073686F7720666F72207468697320627574746F6E2E2042792064656661756C742C20746869732069636F6E2077696C6C2062652073686F776E206F6E20746865206C6566742073696465206F662074686520627574746F6E2E
		Sub SetIconXC(Extends ctrl As MobileDateTimePicker, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setIcon Lib "Object:ctrl:MobileDateTimePicker:Kotlin" Alias "setIcon(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		    setIcon(file.NativePath)
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20626F74746F6D20696E7365742E
		Sub SetInsetBottomXC(Extends ctrl As MobileButton, insetBottom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetBottom Lib "Object:ctrl:MobileButton" (myInsetBottom As Integer)
		    setInsetBottom(insetBottom)
		    
		  #Else
		    
		    #Pragma Unused insetBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20626F74746F6D20696E7365742E
		Sub SetInsetBottomXC(Extends ctrl As MobileDateTimePicker, insetBottom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetBottom Lib "Object:ctrl:MobileDateTimePicker" (myInsetBottom As Integer)
		    setInsetBottom(insetBottom)
		    
		  #Else
		    
		    #Pragma Unused insetBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20746F7020696E7365742E
		Sub SetInsetTopXC(Extends ctrl As MobileButton, insetTop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetTop Lib "Object:ctrl:MobileButton" (myInsetTop As Integer)
		    setInsetTop(insetTop)
		    
		  #Else
		    
		    #Pragma Unused insetTop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520627574746F6E20746F7020696E7365742E
		Sub SetInsetTopXC(Extends ctrl As MobileDateTimePicker, insetTop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInsetTop Lib "Object:ctrl:MobileDateTimePicker" (myInsetTop As Integer)
		    setInsetTop(insetTop)
		    
		  #Else
		    
		    #Pragma Unused insetTop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520726970706C6520636F6C6F7220666F72207468697320627574746F6E2E
		Sub SetRippleColorXC(Extends ctrl As MobileButton, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setRippleColor Lib "Object:ctrl:MobileButton:Kotlin" Alias _
		    "setRippleColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setRippleColor(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520726970706C6520636F6C6F7220666F72207468697320627574746F6E2E
		Sub SetRippleColorXC(Extends ctrl As MobileDateTimePicker, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setRippleColor Lib "Object:ctrl:MobileDateTimePicker:Kotlin" Alias _
		    "setRippleColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setRippleColor(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileButton, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileButton" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
		    setShadowLayer(radius, dX, dY, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused radius
		    #Pragma Unused dX
		    #Pragma Unused dY
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4769766573207468652074657874206120736861646F77206F66207468652073706563696669656420626C75722072616469757320616E6420636F6C6F722C20746865207370656369666965642064697374616E63652066726F6D2069747320647261776E20706F736974696F6E2E0A0A546865207465787420736861646F772070726F647563656420646F6573206E6F7420696E7465726163742077697468207468652070726F70657274696573206F6E207669657720746861742061726520726573706F6E7369626C6520666F72207265616C2074696D6520736861646F77732C20656C65766174696F6E20616E64207472616E736C6174696F6E5A2E
		Sub SetShadowLayerXC(Extends ctrl As MobileDateTimePicker, radius As Single, dX As Single, dY As Single, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShadowLayer Lib "Object:ctrl:MobileDateTimePicker" (myRadius As Single, mydX As Single, mydY As Single, myColor As Integer)
		    setShadowLayer(radius, dX, dY, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused radius
		    #Pragma Unused dX
		    #Pragma Unused dY
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374726F6B6520636F6C6F7220666F72207468697320627574746F6E2E20426F7468207374726F6B6520636F6C6F7220616E64207374726F6B65207769647468206D7573742062652073657420666F722061207374726F6B6520746F20626520647261776E2E
		Sub SetStrokeColorXC(Extends ctrl As MobileButton, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStrokeColor Lib "Object:ctrl:MobileButton:Kotlin" Alias _
		    "setStrokeColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setStrokeColor(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374726F6B6520636F6C6F7220666F72207468697320627574746F6E2E20426F7468207374726F6B6520636F6C6F7220616E64207374726F6B65207769647468206D7573742062652073657420666F722061207374726F6B6520746F20626520647261776E2E
		Sub SetStrokeColorXC(Extends ctrl As MobileDateTimePicker, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStrokeColor Lib "Object:ctrl:MobileDateTimePicker:Kotlin" _
		    Alias "setStrokeColor(android.content.res.ColorStateList.valueOf(android.graphics.Color.argb(alpha.toInt(), r.toInt(), g.toInt(), b.toInt())))" _
		    (alpha As Integer, r As Integer, g As Integer, b As Integer)
		    
		    setStrokeColor(255 - c.Alpha, c.Red, c.Green, c.Blue)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetStrokeWidthXC(Extends ctrl As MobileButton, strokeWidth As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStrokeWidth Lib "Object:ctrl:MobileButton" (myStrokeWidth As Integer)
		    setStrokeWidth(strokeWidth)
		    
		  #Else
		    
		    #Pragma Unused strokeWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722072616469757320666F72207468697320627574746F6E2E
		Sub SetStrokeWidthXC(Extends ctrl As MobileDateTimePicker, strokeWidth As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setStrokeWidth Lib "Object:ctrl:MobileDateTimePicker" (myStrokeWidth As Integer)
		    setStrokeWidth(strokeWidth)
		    
		  #Else
		    
		    #Pragma Unused strokeWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Enum, Name = IconGravity, Type = Integer, Flags = &h0
		End_ = 3
		  Start = 1
		  TextEnd = 4
		  TextStart = 2
		  TextTop = 32
		Top = 16
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
