#tag Module
Protected Module PopupMenuXC
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0, Description = 4765742074686520636F6E6669677572656420686F72697A6F6E74616C206F666673657420696E20706978656C7320666F7220746865207370696E6E6572277320706F7075702077696E646F77206F662063686F696365732E204F6E6C792076616C696420696E204D4F44455F44524F50444F574E3B206F74686572206D6F6465732077696C6C2072657475726E20302E
		Function GetDropDownHorizontalOffsetXC(Extends ctrl As MobilePopupMenu) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDropDownHorizontalOffset Lib "Object:ctrl:MobilePopupMenu" As Integer
		    Return getDropDownHorizontalOffset
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742074686520636F6E6669677572656420766572746963616C206F666673657420696E20706978656C7320666F7220746865207370696E6E6572277320706F7075702077696E646F77206F662063686F696365732E204F6E6C792076616C696420696E204D4F44455F44524F50444F574E3B206F74686572206D6F6465732077696C6C2072657475726E20302E
		Function GetDropDownVerticalOffsetXC(Extends ctrl As MobilePopupMenu) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDropDownVerticalOffset Lib "Object:ctrl:MobilePopupMenu" As Integer
		    Return getDropDownVerticalOffset
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 4765742074686520636F6E66696775726564207769647468206F6620746865207370696E6E6572277320706F7075702077696E646F77206F662063686F6963657320696E20706978656C732E205468652072657475726E65642076616C7565206D617920616C736F206265205669657747726F75702E4C61796F7574506172616D732E4D415443485F504152454E54206D65616E696E672074686520706F7075702077696E646F772077696C6C206D6174636820746865207769647468206F6620746865205370696E6E657220697473656C662C206F72205669657747726F75702E4C61796F7574506172616D732E575241505F434F4E54454E5420746F207772617020746F20746865206D656173757265642073697A65206F6620636F6E7461696E65642064726F70646F776E206C697374206974656D732E
		Function GetDropDownWidthXC(Extends ctrl As MobilePopupMenu) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getDropDownWidth Lib "Object:ctrl:MobilePopupMenu" As Integer
		    Return getDropDownWidth
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 43616C6C207468697320766965772773204F6E436C69636B4C697374656E65722C20696620697420697320646566696E65642E20506572666F726D7320616C6C206E6F726D616C20616374696F6E73206173736F636961746564207769746820636C69636B696E673A207265706F7274696E67206163636573736962696C697479206576656E742C20706C6179696E67206120736F756E642C206574632E
		Function PerformClickXC(Extends ctrl As MobilePopupMenu) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function performClick Lib "Object:ctrl:MobilePopupMenu" As Boolean
		    Return performClick
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574206120686F72697A6F6E74616C206F666673657420696E20706978656C7320666F7220746865207370696E6E6572277320706F7075702077696E646F77206F662063686F696365732E204F6E6C792076616C696420696E204D4F44455F44524F50444F574E3B2074686973206D6574686F642069732061206E6F2D6F7020696E206F74686572206D6F6465732E
		Sub SetDropDownHorizontalOffsetXC(Extends ctrl As MobilePopupMenu, pixels As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDropDownHorizontalOffset Lib "Object:ctrl:MobilePopupMenu" (myPixels As Integer)
		    setDropDownHorizontalOffset(pixels)
		    
		  #Else
		    
		    #Pragma Unused pixels
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574206120766572746963616C206F666673657420696E20706978656C7320666F7220746865207370696E6E6572277320706F7075702077696E646F77206F662063686F696365732E204F6E6C792076616C696420696E204D4F44455F44524F50444F574E3B2074686973206D6574686F642069732061206E6F2D6F7020696E206F74686572206D6F6465732E
		Sub SetDropDownVerticalOffsetXC(Extends ctrl As MobilePopupMenu, pixels As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDropDownVerticalOffset Lib "Object:ctrl:MobilePopupMenu" (myPixels As Integer)
		    setDropDownVerticalOffset(pixels)
		    
		  #Else
		    
		    #Pragma Unused pixels
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420746865207769647468206F6620746865207370696E6E6572277320706F7075702077696E646F77206F662063686F6963657320696E20706978656C732E20546869732076616C7565206D617920616C736F2062652073657420746F205669657747726F75702E4C61796F7574506172616D732E4D415443485F504152454E5420746F206D6174636820746865207769647468206F6620746865205370696E6E657220697473656C662C206F72205669657747726F75702E4C61796F7574506172616D732E575241505F434F4E54454E5420746F207772617020746F20746865206D656173757265642073697A65206F6620636F6E7461696E65642064726F70646F776E206C697374206974656D732E0A0A4F6E6C792076616C696420696E204D4F44455F44524F50444F574E3B2074686973206D6574686F642069732061206E6F2D6F7020696E206F74686572206D6F6465732E
		Sub SetDropDownWidthXC(Extends ctrl As MobilePopupMenu, pixels As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setDropDownWidth Lib "Object:ctrl:MobilePopupMenu" (myPixels As Integer)
		    setDropDownWidth(pixels)
		    
		  #Else
		    
		    #Pragma Unused pixels
		    
		  #EndIf
		End Sub
	#tag EndMethod


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