program p11
	implicit none
	real :: suma, a_j
	real, parameter :: epsilon=1.0e-40
	print *, epsilon
	a_j=.99999
	suma=0.0
	
	do
		a_j = a_j * a_j
		suma = suma + a_j
		print *, a_j
		if (a_j < epsilon) exit
	end do
	
	print *, "suma = ", suma
stop
end program p11 
