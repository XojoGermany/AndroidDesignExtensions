#tag MobileContainer
Begin MobileContainer NavigationBarContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Enabled         =   True
   Height          =   56
   LockBottom      =   False
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   Visible         =   True
   Width           =   360
   Begin MobileCanvas GradientCanvas
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   28
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   0
      Visible         =   True
      Width           =   360
   End
   Begin MobileLabel TitleLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   30
      Left            =   0
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Title"
      TextColor       =   &c00000000
      Top             =   26
      Visible         =   True
      Width           =   360
   End
   Begin MobileCanvas BackButtonCanvas
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   36
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   20
      Visible         =   True
      Width           =   36
   End
End
#tag EndMobileContainer

#tag ScreenCode
	#tag Event
		Sub Opening()
		  RaiseEvent Opening
		  
		  If HasBackgroundColor Then
		    
		    Self.BackgroundColor = BackgroundColor
		    
		  End If
		  
		  BackButtonCanvas.Visible = HasBackButton
		  
		  TitleLabel.Text = Self.Text
		  TitleLabel.TextFont = Font.BoldSystemFont(17.5)
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Pressed()
	#tag EndHook


	#tag Property, Flags = &h21
		Private BackButtonPressed As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		BackgroundColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		HasBackButton As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		HasBackgroundColor As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mText As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mText
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mText = value
			  TitleLabel.Text = value
			End Set
		#tag EndSetter
		Text As String
	#tag EndComputedProperty


#tag EndScreenCode

#tag Events GradientCanvas
	#tag Event
		Sub Paint(g As Graphics)
		  Var cStartColor As Color = &cF2F2F7
		  Var cEndColor As Color = Color.White
		  Var dStartAmt, dEndAmt As Double
		  
		  For i As Integer = 0 To g.Height
		    
		    dStartAmt = 1 - (i / g.Height)
		    dEndAmt = i / g.Height
		    g.DrawingColor = Color.RGB((cStartColor.Red * dStartAmt) + (cEndColor.Red * dEndAmt), _
		    (cStartColor.Green *dStartAmt) + (cEndColor.Green * dEndAmt), _
		    (cStartColor.Blue * dStartAmt) + (cEndColor.Blue * dEndAmt))
		    g.FillRectangle(0, i, g.Width, 1)
		    
		  Next
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TitleLabel
	#tag Event
		Sub Opening()
		  ' Me.TextFont = Font.BoldSystemFont(17.5)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackButtonCanvas
	#tag Event
		Sub PointerUp(position As Point, pointerInfo() As PointerEvent)
		  #Pragma Unused position
		  #Pragma Unused pointerInfo
		  
		  BackButtonPressed = False
		  Me.Refresh
		  
		  RaiseEvent Pressed
		End Sub
	#tag EndEvent
	#tag Event
		Sub PointerDown(position As Point, pointerInfo() As PointerEvent)
		  #Pragma Unused position
		  #Pragma Unused pointerInfo
		  
		  BackButtonPressed = True
		  Me.Refresh
		End Sub
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics)
		  Static oPic As Picture = Picture.SystemImage("chevron_left", Picture.SystemImageSizes.dp36, Color.PrimaryThemeColor)
		  Static oPicPressed As Picture = Picture.SystemImage("chevron_left", Picture.SystemImageSizes.dp36, _
		  Color.RGB(Color.PrimaryThemeColor.Red, Color.PrimaryThemeColor.Green, Color.PrimaryThemeColor.Blue, 125))
		  
		  g.DrawPicture(If(BackButtonPressed, oPicPressed, oPic), 0, 0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
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
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="360"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackButton"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Text"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
