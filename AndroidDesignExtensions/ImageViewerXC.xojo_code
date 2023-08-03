#tag Module
Protected Module ImageViewerXC
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 52656D6F7665732074686520696D616765277320436F6C6F7246696C7465722E
		Sub ClearColorFilterXC(Extends ctrl As MobileImageViewer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub clearColorFilter Lib "Object:ctrl:MobileImageViewer"
		    clearColorFilter
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 54727565207768656E20496D616765566965772069732061646A757374696E672069747320626F756E647320746F207072657365727665207468652061737065637420726174696F206F6620697473206472617761626C652E
		Function GetAdjustViewBoundsXC(Extends ctrl As MobileImageViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getAdjustViewBounds Lib "Object:ctrl:MobileImageViewer" As Boolean
		    Return getAdjustViewBounds
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E2077686574686572207468697320496D616765566965772063726F707320746F2070616464696E672E
		Function GetCropToPaddingXC(Extends ctrl As MobileImageViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCropToPadding Lib "Object:ctrl:MobileImageViewer" As Boolean
		    Return getCropToPadding
		    
		  #Else
		    
		    Return False
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732074686520616C70686120746861742077696C6C206265206170706C69656420746F20746865206472617761626C65206F66207468697320496D616765566965772E
		Function GetImageAlphaXC(Extends ctrl As MobileImageViewer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getImageAlpha Lib "Object:ctrl:MobileImageViewer" As Integer
		    Return getImageAlpha
		    
		  #Else
		    
		    Return 255
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 52657475726E732077686574686572207468697320566965772068617320636F6E74656E74207768696368206F7665726C6170732E
		Function HasOverlappingRenderingXC(Extends ctrl As MobileImageViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function hasOverlappingRendering Lib "Object:ctrl:MobileImageViewer" As Boolean
		    Return hasOverlappingRendering
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 496E64696361746573207768657468657220746869732056696577206973206F70617175652E20416E206F706171756520566965772067756172616E7465657320746861742069742077696C6C206472617720616C6C2074686520706978656C73206F7665726C617070696E672069747320626F756E6473207573696E6720612066756C6C79206F706171756520636F6C6F722E20537562636C6173736573206F6620566965772073686F756C64206F766572726964652074686973206D6574686F64207768656E6576657220706F737369626C6520746F20696E646963617465207768657468657220616E20696E7374616E6365206973206F70617175652E204F706171756520566965777320617265207472656174656420696E2061207370656369616C20776179206279207468652056696577206869657261726368792C20706F737369626C7920616C6C6F77696E6720697420746F20706572666F726D206F7074696D697A6174696F6E7320647572696E6720696E76616C69646174652F64726177207061737365732E
		Function IsOpaqueXC(Extends ctrl As MobileImageViewer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isOpaque Lib "Object:ctrl:MobileImageViewer" As Boolean
		    Return isOpaque
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468697320746F207472756520696620796F752077616E742074686520496D6167655669657720746F2061646A7573742069747320626F756E647320746F207072657365727665207468652061737065637420726174696F206F6620697473206472617761626C652E0A0A4E6F74653A20496620746865206170706C69636174696F6E207461726765747320415049206C6576656C203137206F72206C6F7765722C2061646A75737456696577426F756E64732077696C6C20616C6C6F7720746865206472617761626C6520746F20736872696E6B20746865207669657720626F756E64732C20627574206E6F742067726F7720746F2066696C6C20617661696C61626C65206D6561737572656420737061636520696E20616C6C2063617365732E205468697320697320666F7220636F6D7061746962696C6974792077697468206C6567616379204D6561737572655370656320616E642052656C61746976654C61796F7574206265686176696F722E
		Sub SetAdjustViewBoundsXC(Extends ctrl As MobileImageViewer, adjustViewBounds As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAdjustViewBounds Lib "Object:ctrl:MobileImageViewer" (myAdjustViewBounds As Boolean)
		    setAdjustViewBounds(adjustViewBounds)
		    
		  #Else
		    
		    #Pragma Unused adjustViewBounds
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 53657420612074696E74696E67206F7074696F6E20666F722074686520696D6167652E
		Sub SetColorFilterXC(Extends ctrl As MobileImageViewer, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setColorFilter Lib "Object:ctrl:MobileImageViewer" (myColor As Integer)
		    setColorFilter(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686574686572207468697320496D616765566965772077696C6C2063726F7020746F2070616464696E672E
		Sub SetCropToPaddingXC(Extends ctrl As MobileImageViewer, cropToPadding As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setCropToPadding Lib "Object:ctrl:MobileImageViewer" (myCropToPadding As Boolean)
		    setCropToPadding(cropToPadding)
		    
		  #Else
		    
		    #Pragma Unused cropToPadding
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074686520616C7068612076616C756520746861742073686F756C64206265206170706C69656420746F2074686520696D6167652E
		Sub SetImageAlphaXC(Extends ctrl As MobileImageViewer, alpha As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setImageAlpha Lib "Object:ctrl:MobileImageViewer" (myAlpha As Integer)
		    setImageAlpha(alpha)
		    
		  #Else
		    
		    #Pragma Unused alpha
		    
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
