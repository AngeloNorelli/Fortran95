program p6
  implicit none
  real(8) :: x, dx, f1, f2
  integer :: i, n

  real(8), parameter :: x_min = -3.0_8
  real(8), parameter :: x_max = 4.0_8
  real(8), parameter :: krok = 0.001_8

  n = int((x_max - x_min) / krok)
  x = x_min

  do i = 0, n-1
    f1 = f(x)
    f2 = f(x + krok)
    if (f1 * f2 <= 0.0_8) then
      print *, 'Pierwiastek znaleziony jest w przyblizeniu w zakresie:', x, '-', x + krok
    end if
    x = x + krok
  end do

contains

  function f(x) result(wynik)
    real(8), intent(in) :: x
    real(8) :: wynik
    wynik = x**3 - 3*x**2 - 4*x + 12
  end function f

end program p6
