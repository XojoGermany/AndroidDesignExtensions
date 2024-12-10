#tag Module
Protected Module ColorXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 43616C63756C617465732061206E657720636F6C6F72206279206D756C7469706C79696E6720616E206164646974696F6E616C20616C70686120696E742076616C756520746F2074686520616C706861206368616E6E656C2028302D32353529206F66206120636F6C6F7220696E20696E746567657220747970652E
		Function CompositeARGBWithAlphaXC(Extends c As Color, alpha As Integer) As Color
		  #If TargetAndroid
		    
		    Declare Function compositeARGBWithAlpha Lib "com.google.android" Alias "material.color.MaterialColors.compositeARGBWithAlpha" (myOriginalARGB As Int32, myAlpha As Int32) As Int32
		    Return compositeARGBWithAlpha(c.ToInteger, alpha).ToAndroidColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4120636F6E76656E69656E63652066756E6374696F6E20746F206861726D6F6E697A6520616E792074776F20636F6C6F72732070726F76696465642C2072657475726E732074686520636F6C6F7220696E74206F6620746865206861726D6F6E697A656420636F6C6F722C206F7220746865206F726967696E616C2064657369676E20636F6C6F722076616C756520696620636F6C6F72206861726D6F6E697A6174696F6E206973206E6F7420617661696C61626C652E
		Function HarmonizeXC(Extends c As Color, colorToHarmonizeWith As Color) As Color
		  #If TargetAndroid
		    
		    Declare Function harmonize Lib "com.google.android" Alias "material.color.MaterialColors.harmonize" (myColorToHarmonize As Int32, myColorToHarmonizeWith As Int32) As Int32
		    Return harmonize(c.ToInteger, colorToHarmonizeWith.ToInteger).ToAndroidColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 44657465726D696E6573206966206120636F6C6F722073686F756C6420626520636F6E73696465726564206C69676874206F72206461726B2E
		Function IsLightColorXC(Extends c As Color) As Boolean
		  #If TargetAndroid
		    
		    Declare Function isLightColor Lib "com.google.android" Alias "material.color.MaterialColors.isColorLight" (myColor As Int32) As Boolean
		    Return isLightColor(c.ToInteger)
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C63756C61746573206120636F6C6F72207468617420726570726573656E747320746865206C61796572696E67206F6620746865206F7665726C6179436F6C6F72206F6E20746F70206F6620746865206261636B67726F756E64436F6C6F722E
		Function LayerXC(Extends c As Color, overlayColor As Color) As Color
		  #If TargetAndroid
		    
		    Declare Function layer Lib "com.google.android" Alias "material.color.MaterialColors.layer" (myBackgroundColor As Int32, myOverlayColor As Int32) As Int32
		    Return layer(c.ToInteger, overlayColor.ToInteger).ToAndroidColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C63756C61746573206120636F6C6F72207468617420726570726573656E747320746865206C61796572696E67206F6620746865206F7665726C6179436F6C6F72202877697468206F7665726C6179416C706861206170706C69656429206F6E20746F70206F6620746865206261636B67726F756E64436F6C6F722E
		Function LayerXC(Extends c As Color, overlayColor As Color, overlayAlpha As Single) As Color
		  #If TargetAndroid
		    
		    Declare Function layer Lib "com.google.android" Alias "material.color.MaterialColors.layer" (myBackgroundColor As Int32, myOverlayColor As Int32, myOverlayAlpha As Single) As Int32
		    Return layer(c.ToInteger, overlayColor.ToInteger, overlayAlpha).ToAndroidColor
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Attributes( Hidden )  Function ToAndroidColor(Extends androidColor As Int32) As Color
		  Var iColor As Integer = androidColor
		  
		  Return Color.FromString("&h" + iColor.ToHex.MiddleBytes(2, 6))
		End Function
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.background_dark, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Background_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.background_light, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Background_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.black, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Black As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.darker_gray, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Darker_Gray As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_blue_bright, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Blue_Bright As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_blue_dark, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Blue_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_blue_light, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Blue_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_green_dark, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Green_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_green_light, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Green_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_orange_dark, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Orange_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_orange_light, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Orange_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_purple, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Purple As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_red_dark, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Red_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.holo_red_light, null)" (obj As Ptr) As Int32
			    Return getColor(Resources).ToAndroidColor
			    
			  #EndIf
			End Get
		#tag EndGetter
		Holo_Red_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_0, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_0 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_10, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_10 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_100, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_100 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_1000, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_1000 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_200, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_200 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_300, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_300 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_400, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_400 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_50, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_50 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_500, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_500 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_600, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_600 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_700, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_700 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_800, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_800 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent1_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent1_900 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_0, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_0 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_10, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_10 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_100, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_100 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_1000 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_200, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_200 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_300, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_300 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_400, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_400 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_50, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_50 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_500, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_500 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_600, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_600 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_700, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_700 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_800, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_800 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent2_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent2_900 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_0, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_0 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_10, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_10 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_100, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_100 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_1000 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_200, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_200 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_300, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_300 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_400, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_400 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_50, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_50 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_500, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_500 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_600, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_600 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_700, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_700 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_800, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_800 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_accent3_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Accent3_900 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_background_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Background_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_background_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Background_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_activated_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Activated_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_activated_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Activated_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_highlight_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Highlight_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_highlight_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Highlight_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_normal_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Normal_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_control_normal_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Control_Normal_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_error_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Error_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_error_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Error_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_error_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Error_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_error_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Error_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_0, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_0 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_10, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_10 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_100, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_100 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_1000, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_1000 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_200, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_200 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_300, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_300 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_400, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_400 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_50, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_50 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_500, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_500 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_600, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_600 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_700, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_700 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_800, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_800 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral1_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral1_900 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_0, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_0 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_10, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_10 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_100, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_100 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_1000, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_1000 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_200, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_200 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_300, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_300 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_400, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_400 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_50, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_50 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_500, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_500 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_600, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_600 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_700, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_700 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_800, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_800 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 31+ (Android 12+)
			    If System.Version.MajorVersion >= 12 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_neutral2_900, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Neutral2_900 As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_background_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Background_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_background_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Background_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_error_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Error_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_error_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Error_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_error_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Error_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_error_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Error_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_fixed_variant, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Fixed_Variant As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_primary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Primary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_fixed_variant, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Fixed_Variant As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_secondary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Secondary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_surface_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Surface_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_surface_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Surface_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_surface_variant_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Surface_Variant_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_surface_variant_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Surface_Variant_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_fixed_variant, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Fixed_Variant As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_on_tertiary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_On_Tertiary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_outline_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Outline_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_outline_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Outline_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_outline_variant_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Outline_Variant_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_outline_variant_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Outline_Variant_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_neutral_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Neutral_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_neutral_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Neutral_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_neutral_variant_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Neutral_Variant_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_neutral_variant_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Neutral_Variant_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_primary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Primary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_primary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Primary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_secondary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Secondary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_secondary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Secondary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_tertiary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Tertiary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_palette_key_color_tertiary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Palette_Key_Color_Tertiary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_fixed_dim, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Fixed_Dim As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_primary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Primary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_fixed_dim, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Fixed_Dim As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_secondary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Secondary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_bright_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Bright_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_bright_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Bright_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_highest_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Highest_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_highest_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Highest_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_high_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_High_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_high_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_High_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_lowest_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Lowest_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_lowest_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Lowest_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_low_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Low_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_container_low_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Container_Low_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_dim_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Dim_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_dim_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Dim_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_variant_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Variant_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_surface_variant_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Surface_Variant_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_container_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Container_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_container_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Container_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_fixed, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Fixed As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_fixed_dim, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Fixed_Dim As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_tertiary_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Tertiary_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_hint_inverse_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Hint_Inverse_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_hint_inverse_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Hint_Inverse_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_primary_inverse_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Primary_Inverse_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_primary_inverse_disable_only_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Primary_Inverse_Disable_Only_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_primary_inverse_disable_only_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Primary_Inverse_Disable_Only_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_primary_inverse_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Primary_Inverse_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_secondary_and_tertiary_inverse_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Secondary_And_Tertiary_Inverse_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_secondary_and_tertiary_inverse_disabled_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Secondary_And_Tertiary_Inverse_Disabled_Dark As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_secondary_and_tertiary_inverse_disabled_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Secondary_And_Tertiary_Inverse_Disabled_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.system_text_secondary_and_tertiary_inverse_light, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		System_Text_Secondary_And_Tertiary_Inverse_Light As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.tab_indicator_text, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		Tab_Indicator_Text As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    ' Working for API 34+ (Android 14+)
			    If System.Version.MajorVersion >= 14 Then
			      
			      Declare Function getColor Lib kResourcesLib Alias "getColor(android.R.color.widget_edittext_dark, null)" (obj As Ptr) As Int32
			      Return getColor(Resources).ToAndroidColor
			      
			    Else
			      
			      Raise New AndroidException(kAndroidVersionNotSupported)
			      
			    End If
			    
			  #EndIf
			End Get
		#tag EndGetter
		Widget_Edittext_Dark As Color
	#tag EndComputedProperty


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
		#tag ViewProperty
			Name="Holo_Orange_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Background_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Background_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Black"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Darker_Gray"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Blue_Bright"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Blue_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Blue_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Green_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Green_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Orange_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Purple"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Red_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Holo_Red_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_0"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_10"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_100"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_1000"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_200"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_300"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_400"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_50"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_500"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_600"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_700"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_800"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent1_900"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_0"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_10"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_100"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_1000"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_200"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_300"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_400"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_50"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_500"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_600"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_700"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_800"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent2_900"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_0"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_10"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_100"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_1000"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_200"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_300"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_400"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_50"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_500"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_600"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_700"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_800"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Accent3_900"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Background_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Background_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Activated_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Activated_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Highlight_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Highlight_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Normal_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Control_Normal_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Error_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Error_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Error_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Error_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_0"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_10"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_100"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_1000"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_200"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_300"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_400"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_50"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_500"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_600"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_700"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_800"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral1_900"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_0"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_10"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_100"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_1000"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_200"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_300"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_400"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_50"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_500"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_600"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_700"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_800"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Neutral2_900"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Background_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Background_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Error_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Error_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Error_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Error_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Primary_Fixed_Variant"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Secondary_Fixed_Variant"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Surface_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Surface_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Surface_Variant_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Surface_Variant_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_On_Tertiary_Fixed_Variant"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Outline_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Outline_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Outline_Variant_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Outline_Variant_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Neutral_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Neutral_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Neutral_Variant_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Neutral_Variant_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Primary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Primary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Secondary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Secondary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Tertiary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Palette_Key_Color_Tertiary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Fixed_Dim"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Primary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Fixed_Dim"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Bright_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Bright_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_High_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_High_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Highest_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Highest_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Low_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Low_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Lowest_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Container_Lowest_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Dim_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Dim_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Secondary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Variant_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Surface_Variant_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Container_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Container_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Fixed"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Fixed_Dim"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Tertiary_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Hint_Inverse_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Hint_Inverse_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Primary_Inverse_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Primary_Inverse_Disable_Only_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Primary_Inverse_Disable_Only_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Primary_Inverse_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Secondary_And_Tertiary_Inverse_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Secondary_And_Tertiary_Inverse_Disabled_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Secondary_And_Tertiary_Inverse_Disabled_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="System_Text_Secondary_And_Tertiary_Inverse_Light"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tab_Indicator_Text"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Widget_Edittext_Dark"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
