#tag Module
Protected Module ApplicationXC
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0, Description = 436C61737320696D706C656D656E74696E6720746865204170706C69636174696F6E206F626A6563742E2046726F6D207468652022636C61737322206174747269627574652E
		Function ClassNameXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function className Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().className()" As CString
		    Return className
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46756C6C207061746820746F207468652064656661756C74206469726563746F72792061737369676E656420746F20746865207061636B61676520666F72206974732070657273697374656E7420646174612E
		Function DataDirXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function dataDir Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().dataDir()" As CString
		    Return dataDir
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46756C6C207061746820746F20746865206465766963652D70726F746563746564206469726563746F72792061737369676E656420746F20746865207061636B61676520666F72206974732070657273697374656E7420646174612E
		Function DeviceProtectedDataDirXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function deviceProtectedDataDir Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().deviceProtectedDataDir()" As CString
		    Return deviceProtectedDataDir
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D696E696D756D2053444B2076657273696F6E2074686973206170706C69636174696F6E2063616E2072756E206F6E2E2049742077696C6C206E6F742072756E206F6E206561726C6965722076657273696F6E732E
		Function MinSdkVersionXC(Extends myApp As MobileApplication) As Integer
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function minSdkVersion Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().minSdkVersion()" As Integer
		    Return minSdkVersion
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46756C6C207061746820746F20746865206469726563746F7279207768657265206E6174697665204A4E49206C6962726172696573206172652073746F7265642E
		Function NativeLibraryDirXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function nativeLibraryDir Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().nativeLibraryDir()" As CString
		    Return nativeLibraryDir
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206E616D65206F66207468652070726F636573732074686973206170706C69636174696F6E2073686F756C642072756E20696E2E2046726F6D20746865202270726F636573732220617474726962757465206F722C206966206E6F74207365742C207468652073616D65206173207061636B6167654E616D652E
		Function ProcessNameXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function processName Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().processName()" As CString
		    Return processName
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46756C6C207061746820746F20746865207075626C69636C7920617661696C61626C65207061727473206F6620736F757263654469722C20696E636C7564696E67207265736F757263657320616E64206D616E69666573742E2054686973206D617920626520646966666572656E742066726F6D20736F7572636544697220696620616E206170706C69636174696F6E20697320666F7277617264206C6F636B65642E
		Function PublicSourceDirXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function publicSourceDir Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().publicSourceDir()" As CString
		    Return publicSourceDir
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 46756C6C207061746820746F2074686520626173652041504B20666F722074686973206170706C69636174696F6E2E
		Function SourceDirXC(Extends myApp As MobileApplication) As String
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function sourceDir Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().sourceDir()" As CString
		    Return sourceDir
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206D696E696D756D2053444B2076657273696F6E2074686973206170706C69636174696F6E20746172676574732E204974206D61792072756E206F6E206561726C6965722076657273696F6E732C20627574206974206B6E6F777320686F7720746F20776F726B207769746820616E79206E6577206265686176696F7220616464656420617420746869732076657273696F6E2E2057696C6C206265204275696C642E56455253494F4E5F434F4445532E4355525F444556454C4F504D454E542069662074686973206973206120646576656C6F706D656E74206275696C6420616E64207468652061707020697320746172676574696E6720746861742E20596F752073686F756C6420636F6D7061726520746861742074686973206E756D626572206973203E3D207468652053444B2076657273696F6E206E756D62657220617420776869636820796F7572206265686176696F722077617320696E74726F64756365642E
		Function TargetSdkVersionXC(Extends myApp As MobileApplication) As Integer
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function targetSdkVersion Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().targetSdkVersion()" As Integer
		    Return targetSdkVersion
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 546865206B65726E656C20757365722D4944207468617420686173206265656E2061737369676E656420746F2074686973206170706C69636174696F6E3B2063757272656E746C792074686973206973206E6F74206120756E6971756520494420286D756C7469706C65206170706C69636174696F6E732063616E2068617665207468652073616D6520756964292E
		Function UidXC(Extends myApp As MobileApplication) As Integer
		  #Pragma Unused myApp
		  
		  #If TargetAndroid
		    
		    Var oCurrentScreen As MobileScreen = myApp.CurrentScreen
		    
		    #Pragma Unused oCurrentScreen
		    
		    Declare Function uid Lib "Object:oCurrentScreen:MobileScreen" Alias "getWindow()!!.getContext()!!.getApplicationInfo().uid()" As Integer
		    Return uid
		    
		  #EndIf
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
