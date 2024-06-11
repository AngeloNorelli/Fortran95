module vowel_count
    implicit none
contains
    function count_vowels(word) result(sum)
        implicit none
        character(len=*), intent(in) :: word
        integer :: sum, i
        character(len=1) :: ch

        sum = 0
        do i = 1, len_trim(word)
            ch = word(i:i)
            select case (ch)
                case ('a', 'e', 'i', 'o', 'u', 'y', 'A', 'E', 'I', 'O', 'U', 'Y')
                    sum = sum + 1
                case default
                    ! Not a vowel
            end select
        end do
    end function count_vowels
end module vowel_count

program p3
    use vowel_count
    implicit none
    character(len=100) :: word
    character(len=100) :: filename
    integer :: num_vowels

    filename = 'word.txt'

    open(unit=10, file=filename, status='old', action='read')
    read(10, '(A)') word
    close(10)

    num_vowels = count_vowels(trim(word))

    print *, 'Word: ', trim(word)
    print *, 'Number of vowels: ', num_vowels
end program p3
