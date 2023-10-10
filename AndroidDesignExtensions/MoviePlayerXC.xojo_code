#tag Module
Protected Module MoviePlayerXC
	#tag CompatibilityFlags = (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0
		Function CanPauseXC(Extends ctrl As MobileMoviePlayer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canPause Lib "Object:ctrl:MobileMoviePlayer" As Boolean
		    Return canPause
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanSeekBackwardXC(Extends ctrl As MobileMoviePlayer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canSeekBackward Lib "Object:ctrl:MobileMoviePlayer" As Boolean
		    Return canSeekBackward
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CanSeekForwardXC(Extends ctrl As MobileMoviePlayer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function canSeekForward Lib "Object:ctrl:MobileMoviePlayer" As Boolean
		    Return canSeekForward
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetBufferPercentageXC(Extends ctrl As MobileMoviePlayer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getBufferPercentage Lib "Object:ctrl:MobileMoviePlayer" As Integer
		    Return getBufferPercentage
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetCurrentPositionXC(Extends ctrl As MobileMoviePlayer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function getCurrentPosition Lib "Object:ctrl:MobileMoviePlayer" As Integer
		    Return getCurrentPosition
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsPlayingXC(Extends ctrl As MobileMoviePlayer) As Boolean
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function isPlaying Lib "Object:ctrl:MobileMoviePlayer" As Boolean
		    Return isPlaying
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ResolveAdjustedSizeXC(Extends ctrl As MobileMoviePlayer, desiredSize As Integer, measureSpec As Integer) As Integer
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Function resolveAdjustedSize Lib "Object:ctrl:MobileMoviePlayer" (myDesiredSize As Integer, myMeasureSpec As Integer) As Integer
		    Return resolveAdjustedSize(desiredSize, measureSpec)
		    
		  #Else
		    
		    #Pragma Unused desiredSize
		    #Pragma Unused measureSpec
		    
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResumeXC(Extends ctrl As MobileMoviePlayer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub resume Lib "Object:ctrl:MobileMoviePlayer"
		    resume
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SeekToXC(Extends ctrl As MobileMoviePlayer, msec As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub seekTo Lib "Object:ctrl:MobileMoviePlayer" (myMsec As Integer)
		    seekTo(msec)
		    
		  #Else
		    
		    #Pragma Unused msec
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 536574732077686963682074797065206F6620617564696F20666F6375732077696C6C2062652072657175657374656420647572696E672074686520706C61796261636B2C206F7220636F6E6669677572657320706C61796261636B20746F206E6F74207265717565737420617564696F20666F6375732E2056616C69642076616C75657320666F7220666F6375732072657175657374732061726520417564696F4D616E6167657223415544494F464F4355535F4741494E2C20417564696F4D616E6167657223415544494F464F4355535F4741494E5F5452414E5349454E542C20417564696F4D616E6167657223415544494F464F4355535F4741494E5F5452414E5349454E545F4D41595F4455434B2C20616E6420417564696F4D616E6167657223415544494F464F4355535F4741494E5F5452414E5349454E545F4558434C55534956452E204F722075736520417564696F4D616E6167657223415544494F464F4355535F4E4F4E4520746F2065787072657373207468617420617564696F20666F6375732073686F756C64206E6F7420626520726571756573746564207768656E20706C61796261636B207374617274732E20596F752063616E20666F7220696E7374616E6365207573652074686973207768656E20706C6179696E6720612073696C656E7420616E696D6174696F6E207468726F756768207468697320636C6173732C20616E6420796F7520646F6E27742077616E7420746F20616666656374206F7468657220617564696F206170706C69636174696F6E7320706C6179696E6720696E20746865206261636B67726F756E642E
		Sub SetAudioFocusRequestXC(Extends ctrl As MobileMoviePlayer, focusGain As Integer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub setAudioFocusRequest Lib "Object:ctrl:MobileMoviePlayer" (myFocusGain As Integer)
		    setAudioFocusRequest(focusGain)
		    
		  #Else
		    
		    #Pragma Unused focusGain
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub StopPlaybackXC(Extends ctrl As MobileMoviePlayer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub stopPlayback Lib "Object:ctrl:MobileMoviePlayer"
		    stopPlayback
		    
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SuspendXC(Extends ctrl As MobileMoviePlayer)
		  #Pragma Unused ctrl
		  
		  #If TargetAndroid
		    
		    Declare Sub suspend Lib "Object:ctrl:MobileMoviePlayer"
		    suspend
		    
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
