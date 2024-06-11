module universal_constants
	implicit none
	real, parameter :: pi = 3.1415926536
end module universal_constants

real function trig_fun_degrees(trig_fun, degrees, minutes, seconds)
	use universal_constants
	implicit none
	real, external :: trig_fun
	integer, intent(in) :: degrees, minutes, seconds
	real :: angle
	
	angle = (degrees + minutes/60.0 + seconds/3600.0) * pi / 180.0
	trig_fun_degrees = trig_fun(angle)
end function trig_fun_degrees

program p52
	implicit none
	real, intrinsic :: sin, cos, tan
	real, external :: trig_fun_degrees
	integer :: degs, mins, secs
	character :: answer
	
	do
		print *, "Please give an angle in degrees, minutes and seconds"
		print *, "without any fraction parts"
		print *, "Degrees"
		read *, degs
		print *, "Minutes (0-59)"
		read *, mins
		print *, "Seconds (0-59)"
		read *, secs
		
		print *, "Its sine is", trig_fun_degrees(sin, degs, mins, secs)
		print *, "Its cosine is", trig_fun_degrees(cos, degs, mins, secs)
		print *, "Its tangent is", trig_fun_degrees(tan, degs, mins, secs)
		
		print *, "Another one? (Y/N)"
		read *, answer
		if (answer/="Y" .or. answer/="y") exit
	end do
end program p52
