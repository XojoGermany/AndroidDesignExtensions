#tag Module
Protected Module TextField
	#tag CompatibilityFlags = ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0, Description = 536574732074686520636F6C6F72207573656420746F20646973706C6179207468652073656C656374696F6E20686967686C696768742E
		Sub SetHighlightColorXC(Extends ctrl As MobileTextField, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setHighlightColor Lib "Object:ctrl:MobileTextField" (myColor As Integer)
		    setHighlightColor(c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574207468652074797065206F662074686520636F6E74656E742077697468206120636F6E7374616E7420617320646566696E656420666F7220456469746F72496E666F23696E707574547970652E20546869732077696C6C2074616B652063617265206F66206368616E67696E6720746865206B6579206C697374656E65722C2062792063616C6C696E67207365744B65794C697374656E657228616E64726F69642E746578742E6D6574686F642E4B65794C697374656E6572292C20746F206D617463682074686520676976656E20636F6E74656E7420747970652E2049662074686520676976656E20636F6E74656E74207479706520697320456469746F72496E666F23545950455F4E554C4C207468656E206120736F6674206B6579626F6172642077696C6C206E6F7420626520646973706C6179656420666F722074686973207465787420766965772E204E6F7465207468617420746865206D6178696D756D206E756D626572206F6620646973706C61796564206C696E65732028736565207365744D61784C696E657328696E7429292077696C6C206265206D6F64696669656420696620796F75206368616E67652074686520456469746F72496E666F23545950455F544558545F464C41475F4D554C54495F4C494E4520666C6167206F662074686520696E70757420747970652E
		Sub SetInputTypeXC(Extends ctrl As MobileTextField, type As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setInputType Lib "Object:ctrl:MobileTextField" (myType As Integer)
		    setInputType(type)
		    
		  #Else
		    
		    #Pragma Unused type
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732074657874206C65747465722D73706163696E6720696E20656D20756E6974732E205479706963616C2076616C75657320666F7220736C6967687420657870616E73696F6E2077696C6C2062652061726F756E6420302E30352E204E656761746976652076616C756573207469676874656E20746578742E
		Sub SetLetterSpacingXC(Extends ctrl As MobileTextField, letterSpacing As Single)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setLetterSpacing Lib "Object:ctrl:MobileTextField" (myLetterSpacing As Single)
		    setLetterSpacing(letterSpacing)
		    
		  #Else
		    
		    #Pragma Unused letterSpacing
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686520736F667420696E707574206D6574686F642077696C6C206265206D6164652076697369626C65207768656E2074686973205465787456696577206765747320666F63757365642E205468652064656661756C7420697320747275652E
		Sub SetShowSoftInputOnFocusXC(Extends ctrl As MobileTextField, show As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setShowSoftInputOnFocus Lib "Object:ctrl:MobileTextField" (myShow As Boolean)
		    setShowSoftInputOnFocus(show)
		    
		  #Else
		    
		    #Pragma Unused show
		    
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
