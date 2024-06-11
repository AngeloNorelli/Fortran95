program p5
  implicit none
  real(8) :: kapital, stopa_procentowa
  integer :: lata, i

  kapital = 1000.0_8
  stopa_procentowa = 0.02_8
  lata = 30

  do i = 1, lata
    kapital = kapital * (1.0_8 + stopa_procentowa)
  end do

  print *, 'Kwota koncowa lokaty po ', lata, ' latach wynosi ', kapital

end program p5
