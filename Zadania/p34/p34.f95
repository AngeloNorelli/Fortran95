program p34
	implicit none
	real :: a, b, c
	
interface
	function mean(x,y)
		implicit none
		real, intent(in) :: x, y
		real :: mean
	end function mean
end interface

	a = 30; b = 60; c = mean(a, b)
	write(*, *) "mean =", c
	stop
end program p34

function mean(x,y)
	implicit none
	real, intent(in) :: x, y
	real :: mean
	mean = (x + y) / 2
	return
end function mean
