#tag Module
Protected Module SliderXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F66207468652063757272656E746C7920616374697665207468756D622C206F72202D31206966206E6F207468756D62206973206163746976652E
		Function GetActiveThumbIndexXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getActiveThumbIndex Lib kLibMobileSlider As Int32
		      Return getActiveThumbIndex
		      
		    #Else
		      
		      Return -1
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520696E646578206F66207468652063757272656E746C7920666F6375736564207468756D622E
		Function GetFocusedThumbIndexXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getFocusedThumbIndex Lib kLibMobileSlider As Int32
		      Return getFocusedThumbIndex
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726164697573206F66207468652068616C6F2E
		Function GetHaloRadiusXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getHaloRadius Lib kLibMobileSlider As Int32
		      Return getHaloRadius
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520737465702073697A65207573656420746F206D61726B20746865207469636B732E0A0A4120737465702073697A65206F662030206D65616E7320746861742074686520736C69646572206973206F7065726174696E6720696E20636F6E74696E756F7573206D6F64652E204120737465702073697A652067726561746572207468616E2030206D65616E7320746861742074686520736C69646572206973206F7065726174696E6720696E206469736372657465206D6F64652E
		Function GetStepSizeXC(Extends ctrl As MobileSlider) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getStepSize Lib kLibMobileSlider As Single
		      Return getStepSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520656C65766174696F6E206F6620746865207468756D622E
		Function GetThumbElevationXC(Extends ctrl As MobileSlider) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbElevation Lib kLibMobileSlider As Single
		      Return getThumbElevation
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520686569676874206F6620746865207468756D622E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Function GetThumbHeightXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbHeight Lib kLibMobileSlider As Int32
		      Return getThumbHeight
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726164697573206F6620746865207468756D622E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Function GetThumbRadiusXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbRadius Lib kLibMobileSlider As Int32
		      Return getThumbRadius
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765747320746865207374726F6B6520776964746820666F7220746865207468756D62
		Function GetThumbStrokeWidthXC(Extends ctrl As MobileSlider) As Single
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbStrokeWidth Lib kLibMobileSlider As Single
		      Return getThumbStrokeWidth
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073697A65206F662074686520676170206265747765656E20746865207468756D6220616E642074686520747261636B2E
		Function GetThumbTrackGapSizeXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbTrackGapSize Lib kLibMobileSlider As Int32
		      Return getThumbTrackGapSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207769647468206F6620746865207468756D622E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Function GetThumbWidthXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getThumbWidth Lib kLibMobileSlider As Int32
		      Return getThumbWidth
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726164697573206F662074686520616374697665207469636B20696E20706978656C732E
		Function GetTickActiveRadiusXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTickActiveRadius Lib kLibMobileSlider As Int32
		      Return getTickActiveRadius
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520726164697573206F662074686520696E616374697665207469636B20696E20706978656C732E
		Function GetTickInactiveRadiusXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTickInactiveRadius Lib kLibMobileSlider As Int32
		      Return getTickInactiveRadius
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F726E65722073697A65206F6E20746865206F757473696465206F662074686520747261636B2E
		Function GetTrackCornerSizeXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackCornerSize Lib kLibMobileSlider As Int32
		      Return getTrackCornerSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520686569676874206F662074686520747261636B20696E20706978656C732E
		Function GetTrackHeightXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackHeight Lib kLibMobileSlider As Int32
		      Return getTrackHeight
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 476574732074686520747261636B2069636F6E732073697A652073686F776E2C2069662070726573656E742E
		Function GetTrackIconSizeXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackIconSize Lib kLibMobileSlider As Int32
		      Return getTrackIconSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520636F726E65722073697A65206F6E2074686520696E73696465206F662074686520747261636B202876697369626C65207769746820676170292E
		Function GetTrackInsideCornerSizeXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackInsideCornerSize Lib kLibMobileSlider As Int32
		      Return getTrackInsideCornerSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520736964652070616464696E67206F662074686520747261636B2E
		Function GetTrackSidePaddingXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackSidePadding Lib kLibMobileSlider As Int32
		      Return getTrackSidePadding
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207468652073697A65206F66207468652073746F7020696E64696361746F7220617420746865206564676573206F662074686520747261636B2E
		Function GetTrackStopIndicatorSizeXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackStopIndicatorSize Lib kLibMobileSlider As Int32
		      Return getTrackStopIndicatorSize
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320746865207769647468206F662074686520747261636B20696E20706978656C732E
		Function GetTrackWidthXC(Extends ctrl As MobileSlider) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function getTrackWidth Lib kLibMobileSlider As Int32
		      Return getTrackWidth
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E7320747275652069662074686520736C69646572206861732061204C6162656C466F726D61747465722061747461636865642C2066616C7365206F74686572776973652E
		Function HasLabelFormatterXC(Extends ctrl As MobileSlider) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function hasLabelFormatter Lib kLibMobileSlider As Boolean
		      Return hasLabelFormatter
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsCenteredXC(Extends ctrl As MobileSlider) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function isCentered Lib kLibMobileSlider As Boolean
		      Return isCentered
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746865207469636B206D61726B73206172652076697369626C652E204F6E6C792075736564207768656E2074686520736C6964657220697320696E206469736372657465206D6F64652E
		Function IsTickVisibleXC(Extends ctrl As MobileSlider) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function isTickVisible Lib kLibMobileSlider As Boolean
		      Return isTickVisible
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsVerticalXC(Extends ctrl As MobileSlider) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Function isVertical Lib kLibMobileSlider As Boolean
		      Return isVertical
		      
		    #EndIf
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520736C6964657220746F20626520696E2063656E746572656420636F6E66696775726174696F6E2C206D65616E696E6720746865207374617274696E672076616C756520697320706F736974696F6E656420696E20746865206D6964646C65206F662074686520736C696465722E
		Sub SetCenteredXC(Extends ctrl As MobileSlider, isCentered As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setCentered Lib kLibMobileSlider (isCentered As Boolean)
		      setCentered(isCentered)
		      
		    #Else
		      
		      #Pragma Unused isCentered
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused isCentered
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520637573746F6D207468756D62206472617761626C652077686963682077696C6C206265207573656420666F7220616C6C2076616C756520706F736974696F6E732E204E6F746520746861742074686520637573746F6D206472617761626C652070726F76696465642077696C6C20626520726573697A656420746F206D6174636820746865207468756D62207261646975732073657420627920237365745468756D6252616469757328696E7429206F7220237365745468756D625261646975735265736F7572636528696E74292E20426520617761726520746861742074686520696D616765207175616C697479206D617920626520636F6D70726F6D6973656420647572696E6720726573697A696E672E
		Sub SetCustomThumbDrawableXC(Extends ctrl As MobileSlider, drawable As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setCustomThumbDrawable Lib kLibMobileSliderKotlin Alias "setCustomThumbDrawable(mydrawable as android.graphics.drawable.Drawable)" (myDrawable As Ptr)
		      setCustomThumbDrawable(drawable.ToDrawable)
		      
		    #Else
		      
		      #Pragma Unused drawable
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused drawable
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E646578206F66207468652063757272656E746C7920666F6375736564207468756D62
		Sub SetFocusedThumbIndexXC(Extends ctrl As MobileSlider, index As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setFocusedThumbIndex Lib kLibMobileSlider (index As Int32)
		      setFocusedThumbIndex(index)
		      
		    #Else
		      
		      #Pragma Unused index
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused index
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520726164697573206F66207468652068616C6F20696E20706978656C732E
		Sub SetHaloRadiusXC(Extends ctrl As MobileSlider, radius As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setHaloRadius Lib kLibMobileSlider (radius As Int32)
		      setHaloRadius(radius)
		      
		    #Else
		      
		      #Pragma Unused radius
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F66207468652068616C6F2E
		Sub SetHaloTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setHaloTintList Lib kLibMobileSliderKotlin Alias _
		      "setHaloTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setHaloTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320612074696E7420746F207468652070726F6772657373206261636B67726F756E642C206966206F6E65206578697374732E20446F6573206E6F74206D6F64696679207468652063757272656E742074696E74206D6F64652C20776869636820697320506F72746572447566662E4D6F6465235352435F41544F502062792064656661756C742E0A0A5468652070726F6772657373206261636B67726F756E64206D757374206265207370656369666965642061732061206C61796572207769746820696420522E69642E6261636B67726F756E6420696E2061204C617965724472617761626C652075736564206173207468652070726F6772657373206472617761626C652E0A0A53756273657175656E742063616C6C7320746F2073657450726F67726573734472617761626C6528616E64726F69642E67726170686963732E6472617761626C652E4472617761626C652920776865726520746865206472617761626C6520636F6E7461696E7320612070726F6772657373206261636B67726F756E642077696C6C206175746F6D61746963616C6C79206D757461746520746865206472617761626C6520616E64206170706C7920746865207370656369666965642074696E7420616E642074696E74206D6F6465207573696E67204472617761626C652373657454696E744C69737428436F6C6F7253746174654C697374292E
		Sub SetProgressBackgroundTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setProgressBackgroundTintList Lib kLibMobileSliderKotlin Alias _
		      "setProgressBackgroundTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setProgressBackgroundTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4170706C69657320612074696E7420746F207468652070726F677265737320696E64696361746F722C206966206F6E65206578697374732C206F7220746F2074686520656E746972652070726F6772657373206472617761626C65206F74686572776973652E20446F6573206E6F74206D6F64696679207468652063757272656E742074696E74206D6F64652C20776869636820697320506F72746572447566662E4D6F6465235352435F494E2062792064656661756C742E0A0A5468652070726F677265737320696E64696361746F722073686F756C64206265207370656369666965642061732061206C61796572207769746820696420522E69642E70726F677265737320696E2061204C617965724472617761626C652075736564206173207468652070726F6772657373206472617761626C652E0A0A53756273657175656E742063616C6C7320746F2073657450726F67726573734472617761626C6528616E64726F69642E67726170686963732E6472617761626C652E4472617761626C65292077696C6C206175746F6D61746963616C6C79206D757461746520746865206472617761626C6520616E64206170706C7920746865207370656369666965642074696E7420616E642074696E74206D6F6465207573696E67204472617761626C652373657454696E744C69737428436F6C6F7253746174654C697374292E
		Sub SetProgressTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setProgressTintList Lib kLibMobileSliderKotlin Alias _
		      "setProgressTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setProgressTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520737465702073697A6520746F2075736520746F206D61726B20746865207469636B732E0A0A53657474696E6720746869732076616C756520746F20302077696C6C206D616B652074686520736C69646572206F70657261746520696E20636F6E74696E756F7573206D6F64652E2053657474696E6720746869732076616C756520746F2061206E756D6265722067726561746572207468616E20302077696C6C206D616B652074686520736C69646572206F70657261746520696E206469736372657465206D6F64652E0A0A54686520737465702073697A65206D757374206576656E6C7920646976696465207468652072616E676520646573637269626564206279207468652076616C756546726F6D20616E642076616C7565546F2C206974206D757374206265206120666163746F72206F66207468652072616E67652E2049662074686520737465702073697A65206973206E6F74206120666163746F72206F66207468652072616E67652C20616E20496C6C6567616C5374617465457863657074696F6E2077696C6C206265207468726F776E207768656E20746869732076696577206973206C616964206F75742E0A0A53657474696E6720746869732076616C756520746F2061206E656761746976652076616C75652077696C6C20726573756C7420696E20616E20496C6C6567616C417267756D656E74457863657074696F6E2E
		Sub SetStepSizeXC(Extends ctrl As MobileSlider, stepSize As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setStepSize Lib kLibMobileSlider (stepSize As Single)
		      setStepSize(stepSize)
		      
		    #Else
		      
		      #Pragma Unused stepSize
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused stepSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetThumbColorXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setTint Lib kLibMobileSlider Alias "getThumb()!!.setTint" (myTintColor As Int32)
		      setTint(c.ToInteger)
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520656C65766174696F6E206F6620746865207468756D622E
		Sub SetThumbElevationXC(Extends ctrl As MobileSlider, elevation As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbElevation Lib kLibMobileSlider (elevation As Single)
		      setThumbElevation(elevation)
		      
		    #Else
		      
		      #Pragma Unused elevation
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused elevation
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520686569676874206F6620746865207468756D6220696E20706978656C732E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Sub SetThumbHeightXC(Extends ctrl As MobileSlider, height As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbHeight Lib kLibMobileSlider (height As Int32)
		      setThumbHeight(height)
		      
		    #Else
		      
		      #Pragma Unused height
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused height
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520726164697573206F6620746865207468756D6220696E20706978656C732E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Sub SetThumbRadiusXC(Extends ctrl As MobileSlider, radius As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbRadius Lib kLibMobileSlider (radius As Int32)
		      setThumbRadius(radius)
		      
		    #Else
		      
		      #Pragma Unused radius
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused radius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207374726F6B6520636F6C6F7220666F7220746865207468756D62732E20426F7468207468756D625374726F6B6520636F6C6F7220616E64207468756D625374726F6B65207769647468206D7573742062652073657420666F722061207374726F6B6520746F20626520647261776E2E
		Sub SetThumbStrokeColorXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setThumbStrokeColor Lib kLibMobileSliderKotlin Alias _
		      "setThumbStrokeColor(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setThumbStrokeColor(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520656C65766174696F6E206F6620746865207468756D622E
		Sub SetThumbStrokeWidthXC(Extends ctrl As MobileSlider, thumbStrokeWidth As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbStrokeWidth Lib kLibMobileSlider (thumbStrokeWidth As Single)
		      setThumbStrokeWidth(thumbStrokeWidth)
		      
		    #Else
		      
		      #Pragma Unused thumbStrokeWidth
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused thumbStrokeWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207468756D622E
		Sub SetThumbTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setThumbTintList Lib kLibMobileSliderKotlin Alias _
		      "setThumbTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setThumbTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073697A65206F662074686520676170206265747765656E20746865207468756D6220616E642074686520747261636B2E
		Sub SetThumbTrackGapSizeXC(Extends ctrl As MobileSlider, thumbTrackGapSize As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbTrackGapSize Lib kLibMobileSlider (thumbTrackGapSize As Int32)
		      setThumbTrackGapSize(thumbTrackGapSize)
		      
		    #Else
		      
		      #Pragma Unused thumbTrackGapSize
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused thumbTrackGapSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207769647468206F6620746865207468756D6220696E20706978656C732E204E6F746520746861742073657474696E6720746869732077696C6C20616C736F2061666665637420637573746F6D206472617761626C657320736574207468726F75676820736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C652C20736574437573746F6D5468756D624472617761626C6573466F7256616C7565732C20616E6420736574437573746F6D5468756D624472617761626C6573466F7256616C7565732E
		Sub SetThumbWidthXC(Extends ctrl As MobileSlider, width As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setThumbWidth Lib kLibMobileSlider (width As Int32)
		      setThumbWidth(width)
		      
		    #Else
		      
		      #Pragma Unused width
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused width
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207468756D6220746861742077696C6C20626520647261776E2061742074686520656E64206F66207468652070726F6772657373206D657465722077697468696E20746865205365656B4261722E0A0A496620746865207468756D6220697320612076616C6964206472617761626C652028692E652E206E6F74206E756C6C292C2068616C66206974732077696474682077696C6C206265207573656420617320746865206E6577207468756D62206F666673657420284073656520237365745468756D624F666673657428696E7429292E
		Attributes( Deprecated = "SetThumbXC(thumb As Picture)" )  Sub SetThumbXC(Extends ctrl As MobileSlider, file As FolderItem)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setThumb Lib kLibMobileSliderKotlin Alias "setThumb(android.graphics.drawable.Drawable.createFromPath(myicon.toString()))" (myIcon As CString)
		      setThumb(file.NativePath)
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused file
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207468756D6220746861742077696C6C20626520647261776E2061742074686520656E64206F66207468652070726F6772657373206D657465722077697468696E20746865205365656B4261722E0A0A496620746865207468756D6220697320612076616C6964206472617761626C652028692E652E206E6F74206E756C6C292C2068616C66206974732077696474682077696C6C206265207573656420617320746865206E6577207468756D62206F666673657420284073656520237365745468756D624F666673657428696E7429292E
		Sub SetThumbXC(Extends ctrl As MobileSlider, thumb As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setThumb Lib kLibMobileSliderKotlin Alias "setThumb(thumb as android.graphics.drawable.Drawable)" (thumb As Ptr)
		      setThumb(thumb.ToDrawable)
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused thumb
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520726164697573206F662074686520616374697665207469636B20696E20706978656C732E
		Sub SetTickActiveRadiusXC(Extends ctrl As MobileSlider, tickActiveRadius As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTickActiveRadius Lib kLibMobileSlider (tickActiveRadius As Int32)
		      setTickActiveRadius(tickActiveRadius)
		      
		    #Else
		      
		      #Pragma Unused tickActiveRadius
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused tickActiveRadius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207469636B73206F6E207468652061637469766520706F7274696F6E206F662074686520747261636B2E
		Sub SetTickActiveTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTickActiveTintList Lib kLibMobileSliderKotlin Alias _
		      "setTickActiveTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTickActiveTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520726164697573206F662074686520696E616374697665207469636B20696E20706978656C732E
		Sub SetTickInactiveRadiusXC(Extends ctrl As MobileSlider, tickInactiveRadius As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTickInactiveRadius Lib kLibMobileSlider (tickInactiveRadius As Int32)
		      setTickInactiveRadius(tickInactiveRadius)
		      
		    #Else
		      
		      #Pragma Unused tickInactiveRadius
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused tickInactiveRadius
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207469636B73206F6E2074686520696E61637469766520706F7274696F6E206F662074686520747261636B2E
		Sub SetTickInactiveTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTickInactiveTintList Lib kLibMobileSliderKotlin Alias _
		      "setTickInactiveTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTickInactiveTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F6620746865207469636B73206F6E2074686520696E61637469766520706F7274696F6E206F662074686520747261636B2E
		Sub SetTickTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTickTintList Lib kLibMobileSliderKotlin Alias _
		      "setTickTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTickTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetTintXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion < 2026.01
		      
		      Declare Sub setTint Lib kLibMobileSlider Alias "getProgressDrawable()!!.setTint" (myTintColor As Int32)
		      setTint(c.ToInteger)
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F66207468652061637469766520706F7274696F6E206F662074686520747261636B2E
		Sub SetTrackActiveTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTrackActiveTintList Lib kLibMobileSliderKotlin Alias _
		      "setTrackActiveTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTrackActiveTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722073697A65206F6E20746865206F757473696465206F662074686520747261636B2E
		Sub SetTrackCornerSizeXC(Extends ctrl As MobileSlider, cornerSize As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackCornerSize Lib kLibMobileSlider (cornerSize As Int32)
		      setTrackCornerSize(cornerSize)
		      
		    #Else
		      
		      #Pragma Unused cornerSize
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused cornerSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520686569676874206F662074686520747261636B20696E20706978656C732E
		Sub SetTrackHeightXC(Extends ctrl As MobileSlider, trackHeight As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackHeight Lib kLibMobileSlider (trackHeight As Int32)
		      setTrackHeight(trackHeight)
		      
		    #Else
		      
		      #Pragma Unused trackHeight
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused trackHeight
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652061637469766520747261636B2069636F6E20636F6C6F722E
		Sub SetTrackIconActiveColorXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTrackIconActiveColor Lib kLibMobileSliderKotlin Alias _
		      "setTrackIconActiveColor(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTrackIconActiveColor(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652061637469766520747261636B20656E642069636F6E2E
		Sub SetTrackIconActiveEndXC(Extends ctrl As MobileSlider, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackIconActiveEnd Lib kLibMobileSliderKotlin Alias "setTrackIconActiveEnd(mydrawable as android.graphics.drawable.Drawable)" (myDrawable As Ptr)
		      setTrackIconActiveEnd(icon.ToDrawable)
		      
		    #Else
		      
		      #Pragma Unused icon
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652061637469766520747261636B2073746172742069636F6E2E
		Sub SetTrackIconActiveStartXC(Extends ctrl As MobileSlider, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackIconActiveStart Lib kLibMobileSliderKotlin Alias "setTrackIconActiveStart(mydrawable as android.graphics.drawable.Drawable)" (myDrawable As Ptr)
		      setTrackIconActiveStart(icon.ToDrawable)
		      
		    #Else
		      
		      #Pragma Unused icon
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E61637469766520747261636B2069636F6E20636F6C6F722E
		Sub SetTrackIconInactiveColorXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTrackIconInactiveColor Lib kLibMobileSliderKotlin Alias _
		      "setTrackIconInactiveColor(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTrackIconInactiveColor(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E61637469766520747261636B20656E642069636F6E2E
		Sub SetTrackIconInactiveEndXC(Extends ctrl As MobileSlider, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackIconInactiveEnd Lib kLibMobileSliderKotlin Alias "setTrackIconInactiveEnd(mydrawable as android.graphics.drawable.Drawable)" (myDrawable As Ptr)
		      setTrackIconInactiveEnd(icon.ToDrawable)
		      
		    #Else
		      
		      #Pragma Unused icon
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520696E61637469766520747261636B2073746172742069636F6E2E
		Sub SetTrackIconInactiveStartXC(Extends ctrl As MobileSlider, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackIconInactiveStart Lib kLibMobileSliderKotlin Alias "setTrackIconInactiveStart(mydrawable as android.graphics.drawable.Drawable)" (myDrawable As Ptr)
		      setTrackIconInactiveStart(icon.ToDrawable)
		      
		    #Else
		      
		      #Pragma Unused icon
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520747261636B2069636F6E732073697A652E
		Sub SetTrackIconSizeXC(Extends ctrl As MobileSlider, size As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackIconSize Lib kLibMobileSlider (size As Int32)
		      setTrackIconSize(size)
		      
		    #Else
		      
		      #Pragma Unused size
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused size
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662074686520696E61637469766520706F7274696F6E206F662074686520747261636B2E
		Sub SetTrackInactiveTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTrackInactiveTintList Lib kLibMobileSliderKotlin Alias _
		      "setTrackInactiveTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTrackInactiveTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F726E65722073697A65206F6E2074686520696E73696465206F662074686520747261636B202876697369626C65207769746820676170292E
		Sub SetTrackInsideCornerSizeXC(Extends ctrl As MobileSlider, cornerSize As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackInsideCornerSize Lib kLibMobileSlider (cornerSize As Int32)
		      setTrackInsideCornerSize(cornerSize)
		      
		    #Else
		      
		      #Pragma Unused cornerSize
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused cornerSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652073697A65206F66207468652073746F7020696E64696361746F7220617420746865206564676573206F662074686520747261636B2E
		Sub SetTrackStopIndicatorSizeXC(Extends ctrl As MobileSlider, trackStopIndicatorSize As Int32)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion>= 2026.01
		      
		      Declare Sub setTrackStopIndicatorSize Lib kLibMobileSlider (trackStopIndicatorSize As Int32)
		      setTrackStopIndicatorSize(trackStopIndicatorSize)
		      
		    #Else
		      
		      #Pragma Unused trackStopIndicatorSize
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused trackStopIndicatorSize
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72206F662074686520747261636B2E
		Sub SetTrackTintListXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    #If XojoVersion >= 2026.01
		      
		      Declare Sub setTrackTintList Lib kLibMobileSliderKotlin Alias _
		      "setTrackTintList(tint as android.content.res.ColorStateList)" (tint As Ptr)
		      setTrackTintList(c.ToColorStateList)
		      
		    #Else
		      
		      #Pragma Unused c
		      
		    #EndIf
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Constant, Name = kLibMobileSlider, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileSlider", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLibMobileSliderKotlin, Type = String, Dynamic = False, Default = \"Object:ctrl:MobileSlider:Kotlin", Scope = Private
	#tag EndConstant


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
