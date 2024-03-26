#tag Module
Protected Module XojoExtensionsXC
	#tag Method, Flags = &h0
		Function SaveSystemImage(systemImage As String, size As Picture.SystemImageSizes = Picture.SystemImageSizes.dp48, c As Color = &c000000) As FolderItem
		  Var oFile As FolderItem = SpecialFolder.Documents.Child(systemImage + c.ToString + ".png")
		  
		  If oFile Is Nil Or Not oFile.Exists Then
		    
		    Var oPic As Picture = Picture.SystemImage(systemImage, size, c)
		    oPic.Save(oFile, Picture.Formats.PNG)
		    
		  End If
		  
		  Return oFile
		End Function
	#tag EndMethod


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
	#tag EndViewBehavior
End Module
#tag EndModule
