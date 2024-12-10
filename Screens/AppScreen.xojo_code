#tag MobileScreen
Begin TemplateScreenWithBackButton AppScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   Device          =   1
   HasBackButton   =   True
   HasNavigationBar=   True
   Modal           =   False
   Orientation     =   0
   Title           =   "Application"
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
		Private Sub AddRow(value As String, detail As String = "")
		  Table1.AddRow(value, detail)
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
		  
		  AddRow("Scale Factor", ScaleFactorXC.ToString)
		  
		  AddRow("Font Scale Factor", FontScaleXC.ToString)
		  
		  ' Working for API 30+ (Android 11+)
		  If System.Version.MajorVersion >= 11 Then
		    
		    AddRow("Night Mode Active", IsNightModeActiveXC.ToString)
		    
		  End If
		  
		  AddRow("Class Name", App.ClassNameXC)
		  
		  AddRow("Data Directory", "📂" + App.DataDirXC)
		  
		  AddRow("Device Protected Data Directory", "📂" + App.DeviceProtectedDataDirXC)
		  
		  AddRow("Cache Directory", "📂" + App.GetCacheDirXC)
		  
		  AddRow("Code Cache Directory", "📂" + App.GetCodeCacheDirXC)
		  
		  AddRow("Data Directory", "📂" + App.GetDataDirXC)
		  
		  AddRow("External Cache Directory", "📂" + App.GetExternalCacheDirXC)
		  
		  AddRow("Files Directory", "📂" + App.GetFilesDirXC)
		  
		  AddRow("isScreenHdr", App.IsScreenHdrXC.ToString)
		  
		  AddRow("isScreenRound", App.IsScreenRoundXC.ToString)
		  
		  ' Working for API 27+ (Android 8.1+)
		  If System.Version.MajorVersion >= 8 And System.Version.MinorVersion >= 1 Then
		    
		    AddRow("isVirtualPreload", App.IsVirtualPreloadXC.ToString)
		    
		  End If
		  
		  AddRow("Minimum SDK Version", App.MinSdkVersionXC.ToString)
		  
		  AddRow("Target SDK Version", App.TargetSdkVersionXC.ToString)
		  
		  AddRow("Native Library Directory", "📂" + App.NativeLibraryDirXC)
		  
		  AddRow("Process Name", App.ProcessNameXC)
		  
		  AddRow("Public Source Directory", "📂" + App.PublicSourceDirXC)
		  
		  AddRow("Source Directory", "📂" + App.SourceDirXC)
		  
		  AddRow("Task Affinity", App.TaskAffinityXC)
		  
		  AddRow("UID", App.UidXC.ToString)
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
