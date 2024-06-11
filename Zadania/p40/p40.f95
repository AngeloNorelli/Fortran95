module moje_procedury_i_funkcje
	implicit none
	public:: input, temp_c, output
	contains
		subroutine input(f_temp)
			real, intent(out):: f_temp
			
			write(unit=*, fmt=*) "please enter the Fahrenheit temperature: "
			read(unit=*, fmt=*) f_temp
			return
		end subroutine input
		
		function temp_c(f_temp) result(temp_c_r)
			real, intent(in):: f_temp
			real:: temp_c_r
			real, parameter:: t_scale =  1.8, offset = 32.0
			
			temp_c_r = (f_temp - offset) / t_scale
			return
		end function temp_c
		
		subroutine output(f_temp, temp_c_r)
			real, intent(in):: f_temp, temp_c_r
			
			write(unit=*, fmt=*) f_temp, "degrees Fahrenheit", temp_c_r, "degrees Celsius"
			write(unit=*, fmt=*) int(f_temp), "degrees Fahrenheit", int(temp_c_r), "degrees Celsius"
			write(unit=*, fmt=*) nint(f_temp), "degrees Fahrenheit", nint(temp_c_r), "degrees Celsius"
			return
		end subroutine output
end module moje_procedury_i_funkcje

program p40
	use moje_procedury_i_funkcje
	implicit none
	real:: fahr
	
	call input(fahr)
	call output(fahr, temp_c(fahr))
	stop
end program p40
