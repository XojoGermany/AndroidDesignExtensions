#tag MobileScreen
Begin TemplateScreen HTMLScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   HasBackButton   =   False
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
   Begin MobileHTMLViewer HTMLViewer1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      CanGoBack       =   False
      CanGoForward    =   False
      Enabled         =   True
      Height          =   541
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   116
      Visible         =   True
      Width           =   360
   End
   Begin AppearanceTextField Search
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowSpellChecking=   False
      Enabled         =   True
      Height          =   44
      Hint            =   "URL or Search on page"
      InputType       =   0
      Left            =   94
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
      Top             =   67
      Visible         =   True
      Width           =   148
   End
   Begin MobileButton SearchButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Search"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   702
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton SaveButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Save WebArchive"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   180
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      Top             =   701
      Visible         =   True
      Width           =   170
   End
   Begin MobileButton LoadButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "Load"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   True
      Height          =   44
      Left            =   250
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Top             =   67
      Visible         =   True
      Width           =   100
   End
   Begin MobileButton BackwardButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "❮"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   False
      Height          =   44
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   67
      Visible         =   True
      Width           =   38
   End
   Begin MobileButton ForwardButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Caption         =   "❯"
      CaptionColor    =   &cFFFFFF00
      Enabled         =   False
      Height          =   44
      Left            =   51
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   2
      Top             =   67
      Visible         =   True
      Width           =   38
   End
   Begin Timer LoadTimer
      Enabled         =   True
      Left            =   0
      LockedInPosition=   False
      PanelIndex      =   -1
      Parent          =   ""
      Period          =   5
      RunMode         =   0
      Scope           =   2
      Top             =   0
   End
   Begin MobileProgressBar LoadProgress
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   14
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumValue    =   100.0
      MinimumValue    =   0.0
      Scope           =   2
      Top             =   51
      Value           =   0.0
      Visible         =   False
      Width           =   360
   End
   Begin MobileSlider TextZoomSlider
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      Height          =   30
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumValue    =   250.0
      MinimumValue    =   10.0
      Scope           =   2
      Top             =   664
      Value           =   50.0
      Visible         =   True
      Width           =   281
   End
   Begin AppearanceLabel TextZoomLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      Enabled         =   True
      Height          =   28
      Left            =   299
      LineBreakMode   =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      Text            =   "100 %"
      TextColor       =   &c00000000
      Top             =   668
      Visible         =   True
      Width           =   51
   End
End
#tag EndMobileScreen

#tag ScreenCode
#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "HTML Viewers"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HTMLViewer1
	#tag Event
		Sub Opening()
		  ' Me.SetBackgroundColor(&cFFD60A00)
		  Me.LoadURL("https://www.xojo.com")
		  Me.SetOverScrollModeXC(OverScrollModesXC.Never)
		  Me.SetBuiltInZoomControlsXC(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Search
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(Color.Clear)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SearchButton
	#tag Event
		Sub Pressed()
		  HTMLViewer1.FindAllAsyncXC(Search.Text)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SaveButton
	#tag Event
		Sub Pressed()
		  Var path As String
		  
		  path = SpecialFolder.Documents.Child("My WebArchive.webarchive").NativePath
		  
		  HTMLViewer1.SaveAsWebArchiveXC(path)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LoadButton
	#tag Event
		Sub Pressed()
		  HTMLViewer1.LoadURL(Search.Text)
		  
		  BackwardButton.Enabled = HTMLViewer1.CanGoBackXC
		  ForwardButton.Enabled = HTMLViewer1.CanGoForwardXC
		  
		  LoadProgress.Visible = True
		  LoadTimer.RunMode = Timer.RunModes.Multiple
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackwardButton
	#tag Event
		Sub Pressed()
		  If HTMLViewer1.CanGoBackXC Then
		    
		    LoadProgress.Visible = True
		    LoadTimer.RunMode = Timer.RunModes.Multiple
		    HTMLViewer1.GoBackXC
		    Search.Text = HTMLViewer1.GetOriginalUrlXC
		    
		  End If
		  
		  ForwardButton.Enabled = HTMLViewer1.CanGoForwardXC
		  
		  Me.Enabled = HTMLViewer1.CanGoBackXC
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.SetCornerRadiusXC(80)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ForwardButton
	#tag Event
		Sub Pressed()
		  If HTMLViewer1.CanGoForwardXC Then
		    
		    LoadProgress.Visible = True
		    LoadTimer.RunMode = Timer.RunModes.Multiple
		    HTMLViewer1.GoForwardXC
		    Search.Text = HTMLViewer1.GetOriginalUrlXC
		    
		  End If
		  
		  BackwardButton.Enabled = HTMLViewer1.CanGoBackXC
		  
		  Me.Enabled = HTMLViewer1.CanGoForwardXC
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.SetCornerRadiusXC(80)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LoadTimer
	#tag Event
		Sub Run()
		  If HTMLViewer1.GetProgressXC = 100 Then
		    
		    LoadProgress.Visible = False
		    LoadProgress.Value = 0
		    Me.RunMode = Timer.RunModes.Off
		    
		  End If
		  
		  LoadProgress.Value = HTMLViewer1.GetProgressXC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TextZoomSlider
	#tag Event
		Sub ValueChanged()
		  HTMLViewer1.SetTextZoomXC(Me.Value)
		  TextZoomLabel.Text = HTMLViewer1.GetTextZoomXC.ToString + " %"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="HasBackButton"
		Visible=true
		Group="Behavior"
		InitialValue="False"
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
