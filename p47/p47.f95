module J11M
	implicit none
	public:: Calc
	
	contains
	subroutine Calc(z, answer)
		real, intent(in), dimension(:):: z
		real, intent(out):: answer
		
		answer = sum(z ** 2)
		return
	end subroutine Calc
end module J11M

program p47
	use J11M
	implicit none
	character(len = 79):: buffer
	real, dimension(13):: z
	real:: answer
	integer:: n, eof
	
	open(unit = 1, file = "p47.txt", status = "old", action = "read", position = "rewind")	
	n = 0
	do
		n = n + 1
		read(unit = 1, fmt = "(a79)", iostat = eof) buffer
		
		if(eof /= 0) then
			exit
		else if(buffer(1: 1) == "C") then
			write(unit=*, fmt=*) buffer(2 :)
		else if(buffer(1: 1) == " ") then
			read(unit=buffer, fmt="(tr1, 13 f6.3)") z
			write(unit=*, fmt=*) answer
		else
			write(unit=*, fmt=*) "Column 1 is not blank or C at record number ", N
		end if
	end do
	stop
end program p47
	
