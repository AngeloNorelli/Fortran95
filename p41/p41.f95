module funkcja_korzysta_z_procedury
	implicit none
	public:: module_function, module_subroutine
	type, public:: new
		integer:: j, k
	end type new
	
	type(new), public:: x = new(1234, 5678)
	
	contains
	function module_function() result(module_function_r)
		type(new):: module_function_r
		
		call internal_subroutine(module_function_r)
		return
		
		contains
		subroutine internal_subroutine(u)
			type(new), intent(out):: u
			
			u = new(22, 11)
			call module_subroutine(u % j, u % k)
			return
		end subroutine internal_subroutine
	end function module_function
	
	subroutine module_subroutine(i1, i2)
		integer, intent(in out):: i1, i2
		integer:: x
		
		x = i1
		i1 = i2
		i2 = x
		return
	end subroutine module_subroutine
end module funkcja_korzysta_z_procedury

program p41
	use funkcja_korzysta_z_procedury
	implicit none
	integer, parameter:: value = 789
	type(new):: exter
	integer:: inter
	
	exter = module_function()
	print*, "exter =", exter
	inter = internal_function()
	print*, "inter =", inter
	
	contains
	function internal_function() result(internal_function_r)
		integer:: internal_function_r
		
		internal_function_r = value
	end function internal_function
end program p41
