#tag MobileScreen
Begin TemplateScreen HomeScreen
   Compatibility   =   "(TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))"
   HasNavigationBar=   False
   Modal           =   False
   Orientation     =   0
   Title           =   "Android Design Extension"
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
      LockedInPosition=   True
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
   Begin MobileRectangle HeaderBackground
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      BorderColor     =   &c00000000
      BorderThickness =   0.0
      CornerSize      =   0.0
      Enabled         =   True
      FillColor       =   &cF2F2F700
      Height          =   56
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
   Begin AppearanceLabel HeaderLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      Enabled         =   True
      Height          =   30
      Left            =   0
      LineBreakMode   =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      Text            =   "Android Design Extensions"
      TextColor       =   &c00000000
      Top             =   26
      Visible         =   True
      Width           =   360
   End
End
#tag EndMobileScreen

#tag ScreenCode
	#tag Event
		Sub Opening()
		  Self.SetNavigationBarColorXC(If(Color.IsDarkMode, &c121212, &cF2F2F7))
		  Self.SetNavigationBarDividerColorXC(If(Color.IsDarkMode, &c121212, &cF2F2F7))
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddRow(title As String, tag As String, picName As String = "", picColor As Color = &c000000FF)
		  Static oChevronPic As Picture
		  
		  If oChevronPic = Nil Then
		    
		    oChevronPic = Picture.SystemImage("chevron_right", Picture.SystemImageSizes.dp24, &cC5C5C7)
		    
		  End If
		  
		  Table1.AddRow(title)
		  Table1.RowPictureAt(Table1.LastAddedRowIndex, True) = oChevronPic
		  Table1.RowTagAt(Table1.LastAddedRowIndex) = tag
		  
		  If Not picName.IsEmpty Then
		    
		    Table1.RowPictureAt(Table1.LastAddedRowIndex) = GetPicture(picName, picColor)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddSection(section As String)
		  Table1.AddRow("", EndOfLine + section.Uppercase)
		  
		  If Color.IsDarkMode Then
		    
		    Table1.RowDetailColorAt(Table1.LastAddedRowIndex) = &c91919100
		    
		  Else
		    
		    
		    Table1.RowBackgroundColorAt(Table1.LastAddedRowIndex) = &cF2F2F7
		    Table1.RowDetailColorAt(Table1.LastAddedRowIndex) = &c85858A
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetPicture(name As String, aColor As Color = &c000000FF) As Picture
		  Var kSize As Picture.SystemImageSizes = Picture.SystemImageSizes.dp24
		  
		  If aColor <> Color.Clear Then
		    
		    Return Picture.SystemImage(name, kSize, aColor)
		    
		  Else
		    
		    Return Picture.SystemImage(name, kSize)
		    
		  End If
		End Function
	#tag EndMethod


#tag EndScreenCode

#tag Events Table1
	#tag Event
		Sub Opening()
		  Me.RowDetailFont = Font.SystemFont(13.5)
		  Me.RowTextFont = Font.SystemFont(17)
		  Me.SeparatorColor = If(Color.IsDarkMode, &c21212100, &cCACACC00)
		  
		  AddSection("Control Extensions")
		  AddRow("Controls", "control", "crop_rotate", &cFF260000)
		  
		  AddSection("Button Extensions")
		  AddRow("Buttons", "button", "checkbox_blank", &c419CFF00)
		  
		  AddSection("Label Extensions")
		  AddRow("Labels", "label", "format_color_text", &c419CFF00)
		  
		  AddSection("HTMLViewer Extensions")
		  AddRow("HTMLViewer Examples", "htmlviewer", "code_tags", &cFF453A00)
		  
		  AddSection("TabPanel Extensions")
		  AddRow("TabPanel Examples", "tabpanel", "tab", &c32D74B00)
		  
		  AddSection("Image Extensions")
		  AddRow("Image Examples", "imageviewer", "image", &c5E5CE600)
		  
		  AddSection("Indicator Extensions")
		  AddRow("Indicator Examples", "indicator", "ray_vertex", &cFF40FF00)
		  
		  AddSection("Screen Extensions")
		  AddRow("Screen Examples", "screen", "cellphone_android", &cFFD60A00)
		  
		  AddSection("Scroll Extensions")
		  AddRow("Scroll Examples", "scrollablearea", "arrow_expand_vertical", &cFC800700)
		  
		  AddSection("Table Extensions")
		  AddRow("Table Examples", "androidmobiletable", "format_list_bulleted", &c78D2FE00)
		  
		  AddSection("TextControl Extensions")
		  AddRow("TextField Examples", "textfield", "comment_processing_outline", &cCC66FE00)
		  AddRow("TextArea Examples", "textarea", "comment_text_outline", &c6AC4DC00)
		  
		  AddSection("Framework")
		  AddRow("Fonts Examples", "font", "format_font", If(Color.IsDarkMode, Color.White, &c34343400))
		  AddRow("System Images", "systemimages", "image_area", &cFF2F9200)
		  
		  AddSection("About")
		  AddRow("Donate", "donate", "paypal", &c049BE5)
		  AddSection("") ' footer (empty row)
		  
		  If Color.IsDarkMode Then
		    
		    For index As Integer = 0 To Me.LastAddedRowIndex
		      
		      If Me.RowPictureAt(index) <> Nil Then
		        
		        Me.RowTextColorAt(index) = Color.White
		        
		      End If
		      
		    Next
		    
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged()
		  Var oRowTag As Variant = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  If oRowTag = Nil Then Return
		  
		  Select Case oRowTag
		  Case "androidmobiletable"
		    
		    TableScreen.Show
		    
		  Case "button"
		    
		    ButtonScreen.Show
		    
		  Case "control"
		    
		    ControlScreen.Show
		    
		  Case "donate"
		    
		    System.GotoURL("https://paypal.me/MTrippensee")
		    
		  Case "font"
		    
		    FontScreen.Show
		    
		  Case "htmlviewer"
		    
		    HTMLScreen.Show
		    
		  Case "imageviewer"
		    
		    ImageScreen.Show
		    
		  Case "indicator"
		    
		    IndicatorScreen.Show
		    
		  Case "label"
		    
		    LabelScreen.Show
		    
		  Case "screen"
		    
		    ActivityScreen.Show
		    
		  Case "scrollablearea"
		    
		    ScrollableAreaScreen.Show
		    
		  Case "systemimages"
		    
		    SystemImagesScreen.Show
		    
		  Case "tabpanel"
		    
		    TabPanelScreen.Show
		    
		  Case "textarea"
		    
		    TextAreaScreen.Show
		    
		  Case "textfield"
		    
		    TextFieldScreen.Show
		    
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HeaderBackground
	#tag Event
		Sub Opening()
		  If Color.IsDarkMode Then
		    
		    Me.FillColor = Color.Clear
		    
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events HeaderLabel
	#tag Event
		Sub Opening()
		  Me.TextFont = Font.BoldSystemFont(17.5)
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
