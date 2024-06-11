module zawiera_funkcje_Large
	implicit none
	public :: Large
	
	contains
		function Large(list, k) result(large_R)
			integer, intent(in), dimension(:) :: list
			integer, intent(in) :: k
			integer :: large_R
			
			if (any (list <= k)) then
				large_R = maxval(list, mask=(list <= k))
			else
				large_R = k
			end if
			
			return
		end function Large
end module zawiera_funkcje_Large

program p37
	use zawiera_funkcje_Large
	implicit none
	integer :: n, k
	integer, allocatable, dimension (:) :: list
	
	do
		print *, 'podaj rozmiar macierzy "list" '
		read (unit = *, fmt = *) n
		
		if(n <= 0) then
			exit
		end if
		
		allocate(list(n))
		print *, "podaj wartosci n-elementowej macierzy oddzielajac &"
		read(unit = *, fmt = *) list
		
		print *, "podaj liczbe 'k' "
		read(unit = *, fmt = *) k
		
		print *, "podaj najwiekszy element maczierzy 'list' sposrod mniejszych od liczby 'k' "
		write(unit = *, fmt = *) Large (list, k)
		deallocate(list)
	end do
	stop
end program p37
			
