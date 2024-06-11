program p1
    implicit none
    integer :: i, num, even_sum, odd_sum
    integer, dimension(15) :: numbers
    character(len=100) :: filename
    filename = 'numbers.txt'
    even_sum = 0
    odd_sum = 0

    open(unit=10, file=filename, status='old', action='read')

    do i = 1, 15
        read(10, *) num
        numbers(i) = num
        if (mod(num, 2) == 0) then
            even_sum = even_sum + num
        else
            odd_sum = odd_sum + num
        end if
    end do

    close(10)

    print *, "Sum of even numbers: ", even_sum
    print *, "Sum of odd numbers: ", odd_sum
end program p1
