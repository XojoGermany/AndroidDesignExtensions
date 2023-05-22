#tag Module
Protected Module TextField
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub BackgroundColor(Extends myTextField As MobileTextField, Assigns myColor As Color)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setBackgroundColor Lib "Object:myTextField:MobileTextField" (aColor As Integer)
		    setBackgroundColor(myColor.ToInteger) ' 0 = Transparent
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub HighlightColor(Extends myTextField As MobileTextField, Assigns myColor As Color)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:myTextField:MobileTextField" (aColor As Integer)
		    setHighlightColor(myColor.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused myColor
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetInputType(Extends myTextField As MobileTextField, myValue As Integer)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setInputType Lib "Object:myTextField:MobileTextField" (aValue As Integer)
		    setInputType(myValue)
		    
		  #Else
		    
		    #Pragma Unused myValue
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPadding(Extends myTextField As MobileTextField, left As Integer, top As Integer, right As Integer, bottom As Integer)
		  #Pragma Unused myTextField
		  
		  #If TargetAndroid
		    
		    Declare Sub setPadding Lib "Object:myTextField:MobileTextField" (aLeft As Integer, aTop As Integer, aRight As Integer, aBottom As Integer)
		    setPadding(left, top, right, bottom)
		    
		  #Else
		    
		    #Pragma Unused left
		    #Pragma Unused top
		    #Pragma Unused right
		    #Pragma Unused bottom
		    
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Constant, Name = kTYPE_CLASS_DATETIME, Type = Double, Dynamic = False, Default = \"4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_NUMBER, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_PHONE, Type = Double, Dynamic = False, Default = \"3", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_CLASS_TEXT, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_DATE, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_DATETIME_VARIATION_TIME, Type = Double, Dynamic = False, Default = \"32", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_CLASS, Type = Double, Dynamic = False, Default = \"15", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_FLAGS, Type = Double, Dynamic = False, Default = \"16773120", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_MASK_VARIATION, Type = Double, Dynamic = False, Default = \"4080", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NULL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_FLAG_DECIMAL, Type = Double, Dynamic = False, Default = \"8192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_FLAG_SIGNED, Type = Double, Dynamic = False, Default = \"4096", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_NUMBER_VARIATION_PASSWORD, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_AUTO_COMPLETE, Type = Double, Dynamic = False, Default = \"65536", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_AUTO_CORRECT, Type = Double, Dynamic = False, Default = \"32768", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_CHARACTERS, Type = Double, Dynamic = False, Default = \"4096", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_SENTENCES, Type = Double, Dynamic = False, Default = \"16384", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_CAP_WORDS, Type = Double, Dynamic = False, Default = \"8192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_ENABLE_TEXT_CONVERSION_SUGGESTIONS, Type = Double, Dynamic = False, Default = \"1048576", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_IME_MULTI_LINE, Type = Double, Dynamic = False, Default = \"262144", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_MULTI_LINE, Type = Double, Dynamic = False, Default = \"131072", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_FLAG_NO_SUGGESTIONS, Type = Double, Dynamic = False, Default = \"524288", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_EMAIL_ADDRESS, Type = Double, Dynamic = False, Default = \"32", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_EMAIL_SUBJECT, Type = Double, Dynamic = False, Default = \"48", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_FILTER, Type = Double, Dynamic = False, Default = \"176", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_LONG_MESSAGE, Type = Double, Dynamic = False, Default = \"180", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_NORMAL, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PASSWORD, Type = Double, Dynamic = False, Default = \"128", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PERSON_NAME, Type = Double, Dynamic = False, Default = \"96", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_PHONETIC, Type = Double, Dynamic = False, Default = \"192", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_POSTAL_ADDRESS, Type = Double, Dynamic = False, Default = \"112", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_SHORT_MESSAGE, Type = Double, Dynamic = False, Default = \"64", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_URI, Type = Double, Dynamic = False, Default = \"16", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_VISIBLE_PASSWORD, Type = Double, Dynamic = False, Default = \"144", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_EDIT_TEXT, Type = Double, Dynamic = False, Default = \"160", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_EMAIL_ADDRESS, Type = Double, Dynamic = False, Default = \"208", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kTYPE_TEXT_VARIATION_WEB_PASSWORD, Type = Double, Dynamic = False, Default = \"224", Scope = Public
	#tag EndConstant


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
