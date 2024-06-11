program p32
	real :: r(5,5)
	call init_random_seed()
	call random_number(r)
	print *, r
	
contains
	subroutine init_random_seed()
		integer :: i, n, clock
		integer, dimension(:), allocatable :: seed
		
		call random_seed(size = n)
		print *, "Size =", n
		allocate(seed(n))
		
		call system_clock(count = clock)
		print *, "Clock =", clock
		
		seed = clock + 37 * (/(i - 1, i = 1, n)/)
		call random_seed(put = seed)
		print *, "Seed =", seed
		deallocate(seed)
	end subroutine
end program p32
	
