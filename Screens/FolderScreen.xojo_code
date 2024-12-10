#tag MobileScreen
Begin TemplateScreenWithBackButton FolderScreen
   Compatibility   =   ""
   Device          =   1
   HasBackButton   =   True
   HasNavigationBar=   True
   Modal           =   False
   Orientation     =   0
   Title           =   "Folders"
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   700
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastRowIndex    =   0
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
      Top             =   0
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Method, Flags = &h21
		Private Sub AddRow(folder As FolderItem, androidVersion As Integer = -1)
		  If folder Is Nil Or Not folder.Exists Then Return
		  
		  If androidVersion > -1 And System.Version.MajorVersion >= androidVersion Then
		    
		    Table1.AddRow(folder.Name + " (Android " + androidVersion.ToString + "+)", "📂" + folder.NativePath)
		    
		  Else
		    
		    Table1.AddRow(folder.Name, "📂" + folder.NativePath)
		    
		  End If
		  
		  Table1.RowDetailColorAt(Table1.LastAddedRowIndex) = Color.TextColor
		  Table1.RowTextColorAt(Table1.LastAddedRowIndex) = If(Color.IsDarkMode, &cF1F0F7, Color.PrimaryThemeColor)
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  ' Working for API 29+ (Android 10+)
		  If System.Version.MajorVersion >= 10 And Color.IsDarkMode Then
		    
		    Me.SetVerticalScrollbarThumbColor(&c73737D)
		    
		  End If
		  
		  Me.RowDetailFont = Font.SystemFont(13.5)
		  Me.RowTextFont = Font.BoldSystemFont
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  
		  AddRow(SpecialFolderXC.AlarmsXC)
		  
		  ' Working for API 29+ (Android 10+)
		  If System.Version.MajorVersion >= 10 Then
		    
		    AddRow(SpecialFolderXC.AudiobooksXC, 10)
		    
		  End If
		  
		  AddRow(SpecialFolderXC.DCIMXC)
		  
		  AddRow(SpecialFolderXC.DocumentsXC)
		  
		  AddRow(SpecialFolderXC.DownloadsXC)
		  
		  AddRow(SpecialFolderXC.MoviesXC)
		  
		  AddRow(SpecialFolderXC.MusicXC)
		  
		  AddRow(SpecialFolderXC.NotificationsXC)
		  
		  AddRow(SpecialFolderXC.PicturesXC)
		  
		  AddRow(SpecialFolderXC.PodcastsXC)
		  
		  ' Working for API 31+ (Android 12+)
		  If System.Version.MajorVersion >= 12 Then
		    
		    AddRow(SpecialFolderXC.RecordingsXC, 12)
		    
		  End If
		  
		  AddRow(SpecialFolderXC.RingtonesXC)
		  
		  ' Working for API 29+ (Android 10+)
		  If System.Version.MajorVersion >= 10 Then
		    
		    AddRow(SpecialFolderXC.ScreenshotsXC)
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="ToolbarColor"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TitleCentered"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="StatusBarColor"
		Visible=false
		Group="Behavior"
		InitialValue="Color.Clear"
		Type="Color"
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
		Visible=true
		Group="Behavior"
		InitialValue="False"
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
	#tag ViewProperty
		Name="HasBackButton"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
