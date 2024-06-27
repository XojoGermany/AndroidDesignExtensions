#tag MobileScreen
Begin TemplateScreen AppScreen
   Compatibility   =   ""
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
   Begin AndroidMobileTable Table1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Enabled         =   True
      HasHeader       =   False
      Header          =   ""
      Height          =   700
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
      Top             =   56
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Method, Flags = &h21
		Private Sub AddRow(value As String, detail As String = "")
		  Table1.AddRow(value, detail)
		  Table1.RowDetailColorAt(Table1.LastAddedRowIndex) = Color.TextColor
		  Table1.RowTextColorAt(Table1.LastAddedRowIndex) = If(Color.IsDarkMode, &cD3D3D3, Color.PrimaryThemeColor)
		End Sub
	#tag EndMethod


#tag EndScreenCode

#tag Events NavigationBarContainer1
	#tag Event
		Sub Opening()
		  Me.Text = "Application"
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
		  Me.RowDetailFont = Font.SystemFont(13.5)
		  Me.RowTextFont = Font.BoldSystemFont
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  
		  AddRow("Class Name", App.ClassNameXC)
		  
		  AddRow("Data Directory", App.DataDirXC)
		  
		  AddRow("Device Protected Data Directory", App.DeviceProtectedDataDirXC)
		  
		  AddRow("Cache Directory", App.GetCacheDirXC)
		  
		  AddRow("Code Cache Directory", App.GetCodeCacheDirXC)
		  
		  AddRow("Data Directory", App.GetDataDirXC)
		  
		  AddRow("External Cache Directory", App.GetExternalCacheDirXC)
		  
		  AddRow("Files Directory", App.GetFilesDirXC)
		  
		  AddRow("isScreenHdr", App.IsScreenHdrXC.ToString)
		  
		  AddRow("isScreenRound", App.IsScreenRoundXC.ToString)
		  
		  AddRow("isVirtualPreload", App.IsVirtualPreloadXC.ToString)
		  
		  AddRow("Minimum SDK Version", App.MinSdkVersionXC.ToString)
		  
		  AddRow("Target SDK Version", App.TargetSdkVersionXC.ToString)
		  
		  AddRow("Native Library Directory", App.NativeLibraryDirXC)
		  
		  AddRow("Process Name", App.ProcessNameXC)
		  
		  AddRow("Public Source Directory", App.PublicSourceDirXC)
		  
		  AddRow("Source Directory", App.SourceDirXC)
		  
		  AddRow("Task Affinity", App.TaskAffinityXC)
		  
		  AddRow("UID", App.UidXC.ToString)
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
