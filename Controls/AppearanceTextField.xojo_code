#tag Class
Protected Class AppearanceTextField
Inherits MobileTextField
	#tag CompatibilityFlags = (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
	#tag Event
		Sub Opening()
		  If Color.IsDarkMode Then
		    
		    Me.TextColor = &cD3D3D3
		    Me.SetBoxBackgroundColorXC(&c303034)
		    
		  End If
		  
		  ' Call Opening-Event.
		  RaiseEvent Opening
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


	#tag ViewBehavior
		#tag ViewProperty
			Name="MaximumCharactersAllowed"
			Visible=true
			Group="Text Control"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowSpellChecking"
			Visible=true
			Group="Text Field"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Text"
			Visible=true
			Group="Text Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="ReadOnly"
			Visible=true
			Group="Text Field"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionLength"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectionStart"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
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
			Name="Alignment"
			Visible=true
			Group="Text Control"
			InitialValue="Left"
			Type="MobileTextControl.Alignments"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"1 - Center"
				"2 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
			Group="Text Control"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityHint"
			Visible=true
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AccessibilityLabel"
			Visible=true
			Group="UI Control"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputType"
			Visible=true
			Group="Text Field"
			InitialValue="0"
			Type="MobileTextField.InputTypes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - NumbersAndPunctuation"
				"2 - URL"
				"3 - Numbers"
				"4 - Phone"
				"5 - NamePhone"
				"6 - Email"
				"7 - Decimal"
				"8 - Twitter"
				"9 - WebSearch"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hint"
			Visible=true
			Group="Text Field"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Password"
			Visible=true
			Group="Text Field"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
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
End Class
#tag EndClass
