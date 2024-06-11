program p31
	implicit none
	integer, parameter :: rdp = selected_real_kind(15)
	real(kind=rdp) :: x, xx
	integer :: i
	
	do i=1,5
		call random_number(x)
		call random_number(xx)
		print*, x, xx
	end do
	
	call init_random_seed()
	print*
	do i=1,5
		call random_number(x)
		call random_number(xx)
		print*, x, xx
	end do

	stop
	
	contains
		subroutine init_random_seed()
			integer :: i, n, clock
			integer, dimension(:), allocatable :: seed
			
			call random_seed(size = n)
			print*, 'size =', n
			allocate(seed(n))
			
			call random_seed(get = seed)
			print*, 'seed =', seed
			
			call system_clock(count = clock)
			print*, 'clock =', clock
			
			seed = clock + 37 * (/(i - 1, i = 1, n)/)
			
			call random_seed(put = seed)
			print*, 'seed =', seed
			
			deallocate(seed)
		end subroutine
end program p31
