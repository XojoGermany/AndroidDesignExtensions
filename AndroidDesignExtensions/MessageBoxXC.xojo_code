#tag Module
Protected Module MessageBoxXC
	#tag Method, Flags = &h0
		Sub SetBackgroundColorXC(Extends ctrl As MobileMessageBox, c As Color)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setBackground Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setBackground(android.graphics.drawable.ColorDrawable(backgroundcolor.toInt()))" _
		    (ref As Ptr, backgroundColor As Int32) As Ptr
		    Call setBackground(ctrl.Handle, c.ToInteger)
		    
		  #Else
		    
		    #Pragma Unused c
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundInsetBottomXC(Extends ctrl As MobileMessageBox, backgroundInsetBottom As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setBackgroundInsetBottom Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setBackgroundInsetBottom(backgroundinsetbottom.toInt())" _
		    (ref As Ptr, backgroundInsetBottom As Int32) As Ptr
		    Call setBackgroundInsetBottom(ctrl.Handle, backgroundInsetBottom)
		    
		  #Else
		    
		    #Pragma Unused backgroundInsetBottom
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundInsetEndXC(Extends ctrl As MobileMessageBox, backgroundInsetEnd As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setBackgroundInsetEnd Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setBackgroundInsetEnd(backgroundinsetend.toInt())" _
		    (ref As Ptr, backgroundInsetEnd As Int32) As Ptr
		    Call setBackgroundInsetEnd(ctrl.Handle, backgroundInsetEnd)
		    
		  #Else
		    
		    #Pragma Unused backgroundInsetEnd
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundInsetStartXC(Extends ctrl As MobileMessageBox, backgroundInsetStart As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setBackgroundInsetStart Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setBackgroundInsetStart(backgroundinsetstart.toInt())" _
		    (ref As Ptr, backgroundInsetStart As Int32) As Ptr
		    Call setBackgroundInsetStart(ctrl.Handle, backgroundInsetStart)
		    
		  #Else
		    
		    #Pragma Unused backgroundInsetStart
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundInsetTopXC(Extends ctrl As MobileMessageBox, backgroundInsetTop As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setBackgroundInsetTop Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setBackgroundInsetTop(backgroundinsettop.toInt())" _
		    (ref As Ptr, backgroundInsetTop As Int32) As Ptr
		    Call setBackgroundInsetTop(ctrl.Handle, backgroundInsetTop)
		    
		  #Else
		    
		    #Pragma Unused backgroundInsetTop
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320776865746865722074686973206469616C6F672069732063616E63656C61626C65207769746820746865204241434B206B65792E
		Sub SetCancelableXC(Extends ctrl As MobileMessageBox, flag As Boolean)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setCancelable Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setCancelable(flag)" _
		    (ref As Ptr, flag As Boolean) As Ptr
		    Call setCancelable(ctrl.Handle, flag)
		    
		  #Else
		    
		    #Pragma Unused flag
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5069637475726520746F20757365206173207468652069636F6E206F72204E696C20696620796F7520646F6E27742077616E7420616E2069636F6E2E
		Sub SetIconXC(Extends ctrl As MobileMessageBox, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setIcon Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setIcon(myicon as android.graphics.drawable.Drawable)" _
		    (ref As Ptr, myIcon As Ptr) As Ptr
		    Call setIcon(ctrl.Handle, icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNegativeButtonIconXC(Extends ctrl As MobileMessageBox, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setNegativeButtonIcon Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setNegativeButtonIcon(myicon as android.graphics.drawable.Drawable)" _
		    (ref As Ptr, myIcon As Ptr) As Ptr
		    Call setNegativeButtonIcon(ctrl.Handle, icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetPositiveButtonIconXC(Extends ctrl As MobileMessageBox, icon As Picture)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function setPositiveButtonIcon Lib "Kotlin" Alias _
		    "(ref as com.google.android.material.dialog.MaterialAlertDialogBuilder).setPositiveButtonIcon(myicon as android.graphics.drawable.Drawable)" _
		    (ref As Ptr, myIcon As Ptr) As Ptr
		    Call setPositiveButtonIcon(ctrl.Handle, icon.ToDrawable)
		    
		  #Else
		    
		    #Pragma Unused icon
		    
		  #EndIf
		End Sub
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
