#tag Class
Protected Class WindowInsetsCompatTypes
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 416E20696E73657473207479706520726570726573656E74696E67207468652077696E646F77206F6620612063617074696F6E206261722E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function captionBar Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.captionBar" As Integer
			    Return captionBar
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared CaptionBar As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 52657475726E7320616E20696E73657473207479706520726570726573656E74696E672074686520617265612074686174207573656420627920446973706C61794375746F7574436F6D7061742E0A0A54686973206973206571756976616C656E7420746F20746865207361666520696E73657473206F6E20676574446973706C61794375746F75742E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function displayCutout Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.displayCutout" As Integer
			    Return displayCutout
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared DisplayCutout As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 416E20696E73657473207479706520726570726573656E74696E67207468652077696E646F77206F6620616E20496E7075744D6574686F642E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function ime Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.ime" As Integer
			    Return ime
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared Ime As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function mandatorySystemGestures Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.mandatorySystemGestures" As Integer
			    Return mandatorySystemGestures
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared MandatorySystemGestures As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 416E20696E73657473207479706520726570726573656E74696E6720616E792073797374656D206261727320666F72206E617669676174696F6E2E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function navigationBars Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.navigationBars" As Integer
			    Return navigationBars
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared NavigationBars As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 416E20696E73657473207479706520726570726573656E74696E6720616E792073797374656D206261727320666F7220646973706C6179696E67207374617475732E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function statusBars Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.statusBars" As Integer
			    Return statusBars
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared StatusBars As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 416C6C2073797374656D20626172732E20496E636C7564657320737461747573426172732C2063617074696F6E4261722061732077656C6C206173206E617669676174696F6E426172732C20627574206E6F7420696D652E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function systemBars Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.systemBars" As Integer
			    Return systemBars
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared SystemBars As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit)), Description = 52657475726E7320616E20696E73657473207479706520726570726573656E74696E67207468652073797374656D206765737475726520696E736574732E0A0A5468652073797374656D206765737475726520696E7365747320726570726573656E74207468652061726561206F6620612077696E646F772077686572652073797374656D2067657374757265732068617665207072696F7269747920616E64206D617920636F6E73756D6520736F6D65206F7220616C6C20746F75636820696E7075742C20652E672E2064756520746F2074686520612073797374656D20626172206F6363757079696E672069742C206F72206974206265696E6720726573657276656420666F7220746F7563682D6F6E6C792067657374757265732E0A0A53696D706C652074617073206172652067756172616E7465656420746F207265616368207468652077696E646F77206576656E2077697468696E207468652073797374656D206765737475726520696E736574732C206173206C6F6E67206173207468657920617265206F757473696465207468652073797374656D2077696E646F7720696E736574732E0A0A5768656E2053595354454D5F55495F464C41475F4C41594F55545F535441424C45206973207265717565737465642C20616E20696E7365742077696C6C2062652072657475726E6564206576656E207768656E207468652073797374656D2067657374757265732061726520696E6163746976652064756520746F2053595354454D5F55495F464C41475F4C41594F55545F46554C4C53435245454E206F722053595354454D5F55495F464C41475F4C41594F55545F484944455F4E415649474154494F4E2E
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function systemGestures Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.systemGestures" As Integer
			    Return systemGestures
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared SystemGestures As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, CompatibilityFlags = (TargetAndroid and (Target64Bit))
		#tag Getter
			Get
			  #If TargetAndroid
			    
			    Declare Function tappableElement Lib "androidx.core.view" Alias "WindowInsetsCompat.Type.tappableElement" As Integer
			    Return tappableElement
			    
			  #EndIf
			End Get
		#tag EndGetter
		Shared TappableElement As Integer
	#tag EndComputedProperty


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
End Class
#tag EndClass
