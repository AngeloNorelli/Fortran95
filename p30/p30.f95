program p30
	implicit none
	real :: a
	double precision :: b; integer :: c; logical :: d; character :: e
	real(kind = selected_real_kind(p=6, r=30)) :: f
	real(kind = selected_real_kind(p=15, r=30)) :: g
	real(kind = selected_real_kind(p=15, r=1000)) :: h
	real(kind = selected_real_kind(p=18, r=1000)) :: i
	real(kind = selected_real_kind(p=18, r=2000)) :: j
	real(kind = selected_real_kind(p=18, r=4000)) :: k
	
	print*, 'type real kind=', kind(a)
	print*, 'type double precision kind=', kind(b)
	print*, 'type integer kind=', kind(c)
	print*, 'type logical kind=', kind(d)
	print*, 'type character kind=', kind(e)
	
	print*, 'p=6 R=30 kind=', kind(f)
	print*, 'p=15 R=30 kind=', kind(g)
	print*, 'p=15 R=1000 kind=', kind(h)
	print*, 'p=18 R=1000 kind=', kind(i)
	print*, 'p=18 R=2000 kind=', kind(j)
	print*, 'p=18 R=4000 kind=', kind(k)
end program p30
