#tag Module
Protected Module TabPanelXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 52657475726E7320776865746865722074686973205461624C61796F75742068617320616E20756E626F756E64656420726970706C65206566666563742C206F7220696620726970706C6520697320626F756E6420746F2074686520746162206974656D2073697A652E
		Function HasUnboundedRippleXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasUnboundedRipple Lib "Object:ctrl:MobileTabPanel" As Boolean
		    Return hasUnboundedRipple
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E73207768657468657220746162206C6162656C732077696C6C20626520646973706C6179656420696E6C696E652077697468207461622069636F6E732C206F7220696620746865792077696C6C20626520646973706C6179656420756E6465726E65617468207461622069636F6E732E
		Function IsInlineLabelXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isInlineLabel Lib "Object:ctrl:MobileTabPanel" As Boolean
		    Return isInlineLabel
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742077686574686572206F72206E6F742073656C656374696F6E20696E64696361746F722077696474682069732066697420746F2066756C6C207769647468206F662074686520746162206974656D2C206F722066697420746F2074686520746162206974656D277320636F6E74656E742E
		Function IsTabIndicatorFullWidthXC(Extends ctrl As MobileTabPanel) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isTabIndicatorFullWidth Lib "Object:ctrl:MobileTabPanel" As Boolean
		    Return isTabIndicatorFullWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207768657468657220746162206C6162656C732077696C6C20626520646973706C6179656420696E6C696E652077697468207461622069636F6E732C206F7220696620746865792077696C6C20626520646973706C6179656420756E6465726E65617468207461622069636F6E732E
		Sub SetInlineLabelXC(Extends ctrl As MobileTabPanel, value As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInlineLabel Lib "Object:ctrl:MobileTabPanel" (myInline As Boolean)
		    setInlineLabel(value)
		    
		  #Else
		    
		    #Pragma Unused value
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207363726F6C6C20706F736974696F6E206F6620746865205461624C61796F75742E
		Sub SetScrollPositionXC(Extends ctrl As MobileTabPanel, position As Integer, positionOffset As Single, updateSelectedTabView As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollPosition Lib "Object:ctrl:MobileTabPanel" (myPosition As Integer, myPositionOffset As Single, myUpdateSelectedTabView As Boolean)
		    setScrollPosition(position, positionOffset, updateSelectedTabView)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused positionOffset
		    #Pragma Unused updateSelectedTabView
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207363726F6C6C20706F736974696F6E206F6620746865205461624C61796F75742E
		Sub SetScrollPositionXC(Extends ctrl As MobileTabPanel, position As Integer, positionOffset As Single, updateSelectedTabView As Boolean, updateIndicatorPosition As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setScrollPosition Lib "Object:ctrl:MobileTabPanel" (myPosition As Integer, myPositionOffset As Single, myUpdateSelectedTabView As Boolean, myUpdateIndicatorPosition As Boolean)
		    setScrollPosition(position, positionOffset, updateSelectedTabView, updateIndicatorPosition)
		    
		  #Else
		    
		    #Pragma Unused position
		    #Pragma Unused positionOffset
		    #Pragma Unused updateSelectedTabView
		    #Pragma Unused updateIndicatorPosition
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657473207468652074616220696E64696361746F72277320636F6C6F7220666F72207468652063757272656E746C792073656C6563746564207461622E
		Sub SetSelectedTabIndicatorColorXC(Extends ctrl As MobileTabPanel, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectedTabIndicatorColor Lib "Object:ctrl:MobileTabPanel" (myColor As Integer)
		    setSelectedTabIndicatorColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365742074686520696E64696361746F722067726176697479207573656420746F20616C69676E20746865207461622073656C656374696F6E20696E64696361746F7220696E20746865205461624C61796F75742E20596F75206D757374207365742074686520696E64696361746F7220686569676874207669612074686520637573746F6D20696E64696361746F72206472617761626C65277320696E7472696E736963206865696768742028707265666572726564292C207669612074686520746162496E64696361746F7248656967687420617474726962757465202864657072656361746564292C206F72207669612073657453656C6563746564546162496E64696361746F7248656967687428696E7429202864657072656361746564292E204F74686572776973652C2074686520696E64696361746F722077696C6C206E6F742062652073686F776E20756E6C65737320677261766974792069732073657420746F20494E44494341544F525F475241564954595F535452455443482C20696E20776869636820636173652069742077696C6C2069676E6F726520696E64696361746F722068656967687420616E642073747265746368206163726F73732074686520656E7469726520686569676874206F6620746865205461624C61796F75742E20546869732064656661756C747320746F20494E44494341544F525F475241564954595F424F54544F4D206966206E6F74207365742E
		Sub SetSelectedTabIndicatorGravityXC(Extends ctrl As MobileTabPanel, indicatorGravity As TabIndicatorGravityXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setSelectedTabIndicatorGravity Lib "Object:ctrl:MobileTabPanel" (myIndicatorGravity As Integer)
		    setSelectedTabIndicatorGravity(Integer(indicatorGravity))
		    
		  #Else
		    
		    #Pragma Unused indicatorGravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTabBackgroundColorAtXC(Extends ctrl As MobileTabPanel, index As Integer, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:ctrl:MobileTabPanel" Alias "getTabAt(2)!!.view.setBackgroundColor" (myColor As Integer)
		    setBackgroundColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206772617669747920746F20757365207768656E206C6179696E67206F75742074686520746162732E
		Sub SetTabGravityXC(Extends ctrl As MobileTabPanel, gravity As TabGravityXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabGravity Lib "Object:ctrl:MobileTabPanel" (myGravity As Integer)
		    setTabGravity(Integer(gravity))
		    
		  #Else
		    
		    #Pragma Unused gravity
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206D6F6465206279207768696368207468652073656C656374696F6E20696E64696361746F722073686F756C6420616E696D617465207768656E206D6F76696E67206265747765656E2064657374696E6174696F6E732E0A0A44656661756C747320746F20494E44494341544F525F414E494D4154494F4E5F4D4F44455F4C494E4541522E204368616E67696E6720746869732069732075736566756C2061732061207374796C69737469632063686F6963652E
		Sub SetTabIndicatorAnimationModeXC(Extends ctrl As MobileTabPanel, tabIndicatorAnimationMode As TabIndicatorAnimationModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabIndicatorAnimationMode Lib "Object:ctrl:MobileTabPanel" (myTabIndicatorAnimationMode As Integer)
		    setTabIndicatorAnimationMode(Integer(tabIndicatorAnimationMode))
		    
		  #Else
		    
		    #Pragma Unused tabIndicatorAnimationMode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 456E61626C65206F722064697361626C65206F7074696F6E20746F2066697420746865207461622073656C656374696F6E20696E64696361746F7220746F207468652066756C6C207769647468206F662074686520746162206974656D20726174686572207468616E20746F2074686520746162206974656D277320636F6E74656E742E
		Sub SetTabIndicatorFullWidthXC(Extends ctrl As MobileTabPanel, tabIndicatorFullWidth As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabIndicatorFullWidth Lib "Object:ctrl:MobileTabPanel" (myTabIndicatorFullWidth As Boolean)
		    setTabIndicatorFullWidth(tabIndicatorFullWidth)
		    
		  #Else
		    
		    #Pragma Unused tabIndicatorFullWidth
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865206265686176696F72206D6F646520666F7220746865205461627320696E2074686973206C61796F75742E205468652076616C696420696E707574206F7074696F6E73206172653A0A0A4D4F44455F46495845443A204669786564207461627320646973706C617920616C6C207461627320636F6E63757272656E746C7920616E642061726520626573742075736564207769746820636F6E74656E7420746861742062656E65666974732066726F6D20717569636B207069766F7473206265747765656E20746162732E0A0A4D4F44455F5343524F4C4C41424C453A205363726F6C6C61626C65207461627320646973706C6179206120737562736574206F66207461627320617420616E7920676976656E206D6F6D656E742C20616E642063616E20636F6E7461696E206C6F6E67657220746162206C6162656C7320616E642061206C6172676572206E756D626572206F6620746162732E2054686579206172652062657374207573656420666F722062726F7773696E6720636F6E746578747320696E20746F75636820696E7465726661636573207768656E20757365727320646F6E2774206E65656420746F206469726563746C7920636F6D706172652074686520746162206C6162656C732E2054686973206D6F646520697320636F6D6D6F6E6C79207573656420776974682061205669657750616765722E
		Sub SetTabModeXC(Extends ctrl As MobileTabPanel, mode As TabModesXC)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabMode Lib "Object:ctrl:MobileTabPanel" (myMode As Integer)
		    setTabMode(Integer(mode))
		    
		  #Else
		    
		    #Pragma Unused mode
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865207465787420636F6C6F727320666F722074686520646966666572656E742073746174657320286E6F726D616C2C2073656C656374656429207573656420666F722074686520746162732E
		Sub SetTabTextColorsXC(Extends ctrl As MobileTabPanel, normalColor As Color, selectedColor As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTabTextColors Lib "Object:ctrl:MobileTabPanel" (myNormalColor As Integer, mySelectedColor As Integer)
		    setTabTextColors(normalColor.ToInteger, selectedColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused normalColor
		    #Pragma Unused selectedColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420776865746865722074686973205461624C61796F75742077696C6C206861766520616E20756E626F756E64656420726970706C6520656666656374206F7220696620726970706C652077696C6C20626520626F756E6420746F2074686520746162206974656D2073697A652E0A0A44656661756C747320746F2066616C73652E
		Sub SetUnboundedRippleXC(Extends ctrl As MobileTabPanel, unboundedRipple As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setUnboundedRipple Lib "Object:ctrl:MobileTabPanel" (myUnboundedRipple As Boolean)
		    setUnboundedRipple(unboundedRipple)
		    
		  #Else
		    
		    #Pragma Unused unboundedRipple
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Enum, Name = TabGravityXC, Type = Integer, Flags = &h0
		Fill = 0
		  Center = 1
		Start = 2
	#tag EndEnum

	#tag Enum, Name = TabIndicatorAnimationModesXC, Type = Integer, Flags = &h0
		Linear = 0
		  Elastic = 1
		Fade = 2
	#tag EndEnum

	#tag Enum, Name = TabIndicatorGravityXC, Type = Integer, Flags = &h0
		Bottom = 0
		  Center = 1
		  Top = 2
		Stretch = 3
	#tag EndEnum

	#tag Enum, Name = TabModesXC, Type = Integer, Flags = &h0
		Scrollable = 0
		  Fixed = 1
		Auto = 2
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
