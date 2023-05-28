#tag MobileScreen
Begin TemplateScreen ImageScreen
   Compatibility   =   ""
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
      HasGradient     =   False
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
   Begin MobileImageViewer Image1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      DisplayMode     =   1
      Enabled         =   True
      Height          =   240
      Image           =   241680383
      Left            =   91
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   80
      Visible         =   True
      Width           =   177
   End
   Begin MobileSlider AlphaSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   91
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      MaximumValue    =   255.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   328
      Value           =   255.0
      Visible         =   True
      Width           =   177
   End
   Begin MobileLabel AlphaLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   40
      Left            =   91
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Text            =   "Alpha: 255"
      TextColor       =   &c00000000
      Top             =   358
      Visible         =   True
      Width           =   177
   End
   Begin MobileButton BackgroundColor1Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Yellow Background Color"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   458
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton BackgroundColor2Button
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Red Background Color"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   406
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton ShadowColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Orange Shadow"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   510
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton TintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Red Tint Color"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   562
      Visible         =   True
      Width           =   200
   End
   Begin MobileButton ClearTintColorButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Clear Tint Color"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   614
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
		  Me.Text = "Image Viewers"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AlphaSlider
	#tag Event
		Sub ValueChanged()
		  Image1.SetImageAlphaXC(Me.Value)
		  AlphaLabel.Text = "Alpha: " + Me.Value.ToString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColor1Button
	#tag Event
		Sub Pressed()
		  Image1.SetBackgroundColorXC(Color.Yellow)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackgroundColor2Button
	#tag Event
		Sub Pressed()
		  Image1.SetBackgroundColorXC(Color.Red)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ShadowColorButton
	#tag Event
		Sub Pressed()
		  Image1.SetOutlineSpotShadowColorXC(Color.Orange)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TintColorButton
	#tag Event
		Sub Pressed()
		  Image1.SetColorFilterXC(Color.Red)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClearTintColorButton
	#tag Event
		Sub Pressed()
		  Image1.ClearColorFilterXC
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
