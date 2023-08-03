#tag Module
Protected Module SliderXC
	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetThumbColorXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTint Lib "Object:ctrl:MobileSlider" Alias "getThumb()!!.setTint" (myTintColor As Integer)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5370656369666965732074696E7420636F6C6F7220666F722074686973206472617761626C652E
		Sub SetTintXC(Extends ctrl As MobileSlider, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setTint Lib "Object:ctrl:MobileSlider" Alias "getProgressDrawable()!!.setTint" (myTintColor As Integer)
		    setTint(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
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
