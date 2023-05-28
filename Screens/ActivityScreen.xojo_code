#tag MobileScreen
Begin TemplateScreen ActivityScreen
   Compatibility   =   ""
   HasNavigationBar=   False
   Modal           =   False
   Orientation     =   0
   Title           =   "Screens"
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
   Begin MobileButton LandscapeButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Landscape"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      Top             =   64
      Visible         =   True
      Width           =   150
   End
   Begin MobileButton PortraitButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Portrait"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   190
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   64
      Visible         =   True
      Width           =   150
   End
   Begin MobileScrollableArea ScrollableArea1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   588
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      ScrollContent   =   724957183
      Top             =   168
      Visible         =   True
      Width           =   360
   End
   Begin MobileButton TranslucentButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Translucent (False)"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   116
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Event
		Sub Opening()
		  ' // Add items to bottom toolbar
		  ' Var notifyIcon As Picture = Picture.SystemImage("notifications")
		  ' Var notifyItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Notify", notifyIcon)
		  ' Toolbar.AddButton(notifyItem)
		  ' 
		  ' Var androidIcon As Picture = Picture.SystemImage("android")
		  ' Var androidItem As New MobileToolbarButton(MobileToolbarButton.Types.Plain, "Android", androidIcon)
		  ' Toolbar.AddButton(androidItem)
		  
		  ' Self.SystemUiVisibility = 
		End Sub
	#tag EndEvent


#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Screens"
		  Me.HasGradient = False
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LandscapeButton
	#tag Event
		Sub Pressed()
		  Self.SetRequestedOrientationXC(0) ' Landscape
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PortraitButton
	#tag Event
		Sub Pressed()
		  Self.SetRequestedOrientationXC(1) ' Portrait
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TranslucentButton
	#tag Event
		Sub Pressed()
		  Static value As Boolean
		  
		  value = Not value
		  
		  Call Self.SetTranslucentXC(value)
		  
		  Me.Caption = "Translucent (" + value.ToString + ")"
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
