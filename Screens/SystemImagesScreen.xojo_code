#tag MobileScreen
Begin TemplateScreen SystemImagesScreen
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
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   676
      InitialValue    =   ""
      LastAddedRowIndex=   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RowCount        =   0
      Scope           =   2
      ScrollPosition  =   0
      SelectedRowIndex=   0
      SelectedRowText =   ""
      SeparatorColor  =   &c00000000
      SeparatorThickness=   0
      Top             =   80
      Visible         =   True
      Width           =   360
   End
   Begin MobileLabel CountLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   24
      Left            =   130
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Untitled"
      TextColor       =   &c00000000
      Top             =   52
      Visible         =   True
      Width           =   100
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Event
		Sub Opening()
		  LoadSystemImages
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub LoadSystemImages()
		  For Each sImageName As String In App.SystemImages
		    
		    Table1.AddRow(sImageName)
		    Table1.RowBackgroundColorAt(Table1.LastAddedRowIndex) = &c000000FF ' transparent
		    Table1.RowPictureAt(Table1.LastAddedRowIndex) = Picture.SystemImage(sImageName, Picture.SystemImageSizes.dp48)
		    
		  Next
		  
		  CountLabel.Text = App.SystemImages.Count.ToString + " Images"
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "System Images"
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed()
		  Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Table1
	#tag Event
		Sub Opening()
		  Me.SeparatorColor = Color.LightGray
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  Var cb As New Clipboard
		  
		  cb.Text = Me.SelectedRowText
		  cb.Close
		  
		  MobilePopupMessage.Show("Copied Image Name '" + Me.SelectedRowText + "' to clipboard.")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CountLabel
	#tag Event
		Sub Opening()
		  Me.TextFont = Font.SystemFont(14)
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
