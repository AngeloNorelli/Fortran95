program p4
  implicit none
  integer(kind=4) :: N1, N2
  integer(kind=8) :: wynik

  print *, 'Podaj poczatkowa liczbe naturalna (N1):'
  read *, N1
  print *, 'Podaj koncowa liczbe naturalna (N2):'
  read *, N2

  if (N1 > N2) then
    print *, 'N1 musi byc mniejsze lub rowne N2'
    stop
  end if

  wynik = suma(N1, N2)
  print *, 'Suma liczb naturalnych od', N1, 'do', N2, 'wynosi', wynik

contains

  recursive function suma(N1, N2) result(res)
    integer(kind=4) , intent(in) :: N1, N2
    integer(kind=8) :: res

    if (N1 > N2) then
      res = 0
    else
      res = N1 + suma(N1 + 1, N2)
    end if
  end function suma

end program p4
