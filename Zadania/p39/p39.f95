module zawiera_procedure_Summit
	implicit none
	public:: Summit
	contains
		subroutine Summit(array)
			real, intent (in), dimension (:,:) :: array
			
			write (unit=*, fmt=*) "Row sums: ", sum(array, dim=2)
			write (unit=*, fmt=*) "Column sums: ", sum(array, dim=1)
			write (unit=*, fmt=*) "Total: ", sum(array)
			return
		end subroutine Summit
end module zawiera_procedure_Summit

program p39
	use zawiera_procedure_Summit
	implicit none
	real, allocatable, dimension (:,:) :: a
	integer:: n
	
	open (unit=1, file="x.txt", status="OLD", action="READ", position="REWIND")
	read (unit=1, fmt=*) n
	allocate (a(n, n))
	read (unit=1, fmt=*) a
	call Summit(a)
	stop
end program p39
	 
