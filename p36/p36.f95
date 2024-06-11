module nasze_zmienne
	implicit none
	real :: rank, x, y
end module

program p36
	use nasze_zmienne
	
	interface
		subroutine root()
			use nasze_zmienne
		end subroutine
	end interface
	
	x = 10848576; rank = 20
	call root()
	
	write (*, *) "20-th root of ", x, "equals ", y
	stop
end program p36

subroutine root()
	use nasze_zmienne
	y = exp(log(x)/rank)
	return
end subroutine root
