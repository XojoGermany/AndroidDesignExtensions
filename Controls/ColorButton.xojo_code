#tag Class
Protected Class ColorButton
Inherits MobileButton
	#tag Event
		Sub Opening()
		  ' Call Opening-Event
		  RaiseEvent Opening
		  
		  Me.SetCornerRadiusXC(180)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Pressed()
		  Select Case App.BackgroundMode
		  Case 0
		    
		    App.CurrentScreen.SetStatusBarColorXC(MyColor)
		    
		  Case 1
		    
		    App.CurrentScreen.SetBackgroundColorXC(MyColor)
		    
		  Case 2
		    
		    App.CurrentScreen.SetNavigationBarColorXC(MyColor)
		    
		  Case 3
		    
		    App.CurrentScreen.SetNavigationBarDividerColorXC(MyColor)
		    
		  End Select
		  
		  ' Call Pressed-Event
		  RaiseEvent Pressed
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub MyBackgroundColor(Assigns myColor As Color)
		  Self.MyColor = myColor
		  Self.SetBackgroundColorXC(myColor)
		  Self.SetCornerRadiusXC(44)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Pressed()
	#tag EndHook


	#tag Property, Flags = &h21
		Private MyColor As Color
	#tag EndProperty


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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="44"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="UI Control"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Caption"
			Visible=true
			Group="Button"
			InitialValue="Button"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CaptionColor"
			Visible=true
			Group="Button"
			InitialValue="&cffffff"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
