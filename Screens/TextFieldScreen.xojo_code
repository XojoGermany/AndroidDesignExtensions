#tag MobileScreen
Begin TemplateScreen TextFieldScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   HasNavigationBar=   False
   Modal           =   False
   Orientation     =   0
   Title           =   "Untitled"
   Begin NavigationBarContainer NavigationBarContainer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      BackgroundColor =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      HasBackButton   =   False
      HasBackgroundColor=   False
      HasGradient     =   True
      Height          =   56
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   ""
      Top             =   0
      Visible         =   True
      Width           =   360
   End
   Begin AppearanceTextField DefaultField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Default TextField"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   80
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceTextField BackgroundColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Background Color"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   236
      Visible         =   True
      Width           =   200
   End
   Begin MobileTextField TransparentField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Transparent"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   288
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceTextField PaddingField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Padding"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   340
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceTextField HighlightColorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Highlight Color"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c00000000
      Top             =   184
      Visible         =   True
      Width           =   200
   End
   Begin AppearanceTextField MultilineField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   148
      Hint            =   "Multiline"
      InputType       =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Since MobileTextArea has no Hint property, we simply use MobileTextField and enable Multiline."
      TextColor       =   &c00000000
      Top             =   399
      Visible         =   True
      Width           =   320
   End
   Begin MobileSwitch PasswordSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   288
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   555
      Value           =   False
      Visible         =   True
      Width           =   50
   End
   Begin AppearanceLabel PasswordLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   26
      Left            =   188
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Password"
      TextColor       =   &c00000000
      Top             =   557
      Visible         =   True
      Width           =   100
   End
   Begin AppearanceTextField ErrorField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      Enabled         =   True
      Height          =   44
      Hint            =   "Error TextField"
      InputType       =   0
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Hello World"
      TextColor       =   &c00000000
      Top             =   132
      Visible         =   True
      Width           =   200
   End
End
#tag EndMobileScreen

#tag ScreenCode
#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Text Fields"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DefaultField
	#tag Event
		Sub Opening()
		  Me.SetLetterSpacingXC(0.25)
		  Me.SetTintXC(Color.Green)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColorField
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(&cD6D6D600)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TransparentField
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(Color.Clear)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PaddingField
	#tag Event
		Sub Opening()
		  Me.SetPaddingXC(0, 20, 0, 10)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HighlightColorField
	#tag Event
		Sub Opening()
		  Me.SetHighlightColorXC(Color.Red)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MultilineField
	#tag Event
		Sub Opening()
		  Me.SetInputTypeXC(kTYPE_CLASS_TEXT + _
		  kTYPE_TEXT_FLAG_MULTI_LINE)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PasswordSwitch
	#tag Event
		Sub ValueChanged()
		  MultilineField.SetInputTypeXC(kTYPE_CLASS_TEXT + _
		  kTYPE_TEXT_FLAG_MULTI_LINE + _
		  If(PasswordSwitch.Value, kTYPE_TEXT_VARIATION_PASSWORD, 0))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ErrorField
	#tag Event
		Sub Opening()
		  Me.SetErrorXC("My Error Message")
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Modal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="NavigationBarHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
