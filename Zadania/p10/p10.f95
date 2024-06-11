program p10
implicit none

	integer :: i, j, p, q, r, x, n, m

	print *, "start=1, stop10, increment=1 (domyslny)"
	do i=1, 10
		print*, i
	end do
	print *
	
	print *, "start=20, stop=50, increment=5"
	do j=20, 50, 5
		print *, j
	end do
	print *
	
	print *, "start=7, stop=19, increment=4"
	do p=7, 19, 4
		print *, p
	end do
	print *
	
	print *, "start=4, stop=5, increment=6"
	do q=4, 5, 6
		print *, q
	end do
	print *
	
	print *, "start=20, stop=-20, increment=-6"
	do m=20, -20, -6
		print *, m
	end do
	print*
stop
end program p10
