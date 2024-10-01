#tag Module
Protected Module PictureXC
	#tag Method, Flags = &h0, Description = 5072696E74732074686520506963747572652E
		Sub PrintXC(Extends pic As Picture, scaleMode As ScaleModesXC = ScaleModesXC.Fit)
		  #If TargetAndroid
		    
		    Declare Function PrintHelper Lib "androidx.print.PrintHelper:Kotlin" Alias _
		    "androidx.print.PrintHelper(context as android.content.Context)" (context As Ptr) As Ptr
		    
		    Declare Sub printBitmap Lib "androidx.print.PrintHelper.instance:Kotlin" Alias _
		    "printBitmap(jobname.toString(), bitmap as android.graphics.Bitmap)" (printHelper As Ptr, jobName As CString, bitmap As Ptr)
		    
		    Declare Sub setScaleMode Lib "androidx.print.PrintHelper.instance:Kotlin" Alias _
		    "setScaleMode(scalemode.toInt())" (printHelper As Ptr, scaleMode As Int32)
		    
		    Var oPrintHelper As Ptr = PrintHelper(oCurrentScreen.Handle)
		    
		    setScaleMode(oPrintHelper, Integer(scaleMode))
		    
		    printBitmap(oPrintHelper, "Xojo Print", pic.Handle(Picture.HandleTypes.AndroidBitmap))
		    
		  #Else
		    
		    #Pragma Unused scaleMode
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Enum, Name = ScaleModesXC, Type = Integer, Flags = &h0
		Fit = 1
		Fill = 2
	#tag EndEnum


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
