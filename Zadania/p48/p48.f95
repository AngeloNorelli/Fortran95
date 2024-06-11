module parametry_opcjonalne
	implicit none
	public:: Options
	
	contains
	subroutine Options(str1, str2)
		character(len=*), intent(in), optional:: str1, str2
		integer :: i1, i2
		
		write(unit=*, fmt=*) "==================================================="
		if(present(str1)) then
			write(unit=*, fmt=*) "1:", str1
		else
			i1 = -1
		end if
		
		if(present(str2)) then
			i1 = len(str1)
			write(unit=*, fmt=*) "2:", str2
		else
			i2 = -1
		end if
		
		write(unit=*, fmt=*) "Lengths:", i1, i2
		return
	end subroutine
end module parametry_opcjonalne

program p48
	use parametry_opcjonalne
 	implicit none
 
 	call Options( )
 	call Options("pierwszy_parametr", "drugi_parametr")
 	call Options("pierwszy_parametr")
 	call Options(str1="333")
 	call Options(str2="4444")
 	call Options(str1="55555", str2="666666")
 	call Options(str1="")
 	call Options(str2="")
 	call Options(str2="drugi", str1="pierwszy")
 	stop
end program p48
