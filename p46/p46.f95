module zawiera_funkcje_rekursywna
	implicit none
	public:: Euclid
	
	contains
	recursive function Euclid(i1, i2) result (gcd)
		integer, intent(in) :: i1, i2
		integer:: gcd
		integer:: remainder
		
		remainder = mod(i1, i2)
		if(remainder == 0) then
			gcd = i2
			return
		else
			gcd = Euclid(i2, remainder)
		end if
		
		write(*, fmt=897) i1, i2, remainder, gcd
		897 format('reszta z dzielenia liczby', i6,2x, 'przez liczbe', i4,2x, 'daje reszte', i4,2x, 'result =', i4)
		return
	end function Euclid
end module zawiera_funkcje_rekursywna

program p46
	use zawiera_funkcje_rekursywna
	implicit none
	integer:: p, q
	
	print *, 'wprowadz liczbe naturalna do dzielenia "p"'
	read(unit=*, fmt=*) p
	
	print *, 'wprowadz dzielnik "q"'
	read(unit=*, fmt=*) q
	
	print*, Euclid(p, q), 'to najwiekszy wspolny podzielnik zwracany przez Euclid(p, q)'
	stop
end program p46
		
