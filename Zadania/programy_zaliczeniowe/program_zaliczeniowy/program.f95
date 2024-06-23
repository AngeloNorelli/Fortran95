module matrix_operations
  implicit none
  public :: add_matrices, subtract_matrices, multiply_matrices, transpose_matrix, determinant

contains

  ! Dodawanie dwoch macierzy
  subroutine add_matrices(mat1, mat2, result, n, m)
    implicit none
    integer, intent(in) :: n, m
    real(8), intent(in) :: mat1(n, m), mat2(n, m)
    real(8), intent(out) :: result(n, m)
    integer :: i, j

    do i = 1, n
      do j = 1, m
        result(i, j) = mat1(i, j) + mat2(i, j)
      end do
    end do
  end subroutine add_matrices

  ! Odejmowanie dwoch macierzy
  subroutine subtract_matrices(mat1, mat2, result, n, m)
    implicit none
    integer, intent(in) :: n, m
    real(8), intent(in) :: mat1(n, m), mat2(n, m)
    real(8), intent(out) :: result(n, m)
    integer :: i, j

    do i = 1, n
      do j = 1, m
        result(i, j) = mat1(i, j) - mat2(i, j)
      end do
    end do
  end subroutine subtract_matrices

  ! Mnozenie dwoch macierzy
  subroutine multiply_matrices(mat1, mat2, result, n, m, p)
    implicit none
    integer, intent(in) :: n, m, p
    real(8), intent(in) :: mat1(n, m), mat2(m, p)
    real(8), intent(out) :: result(n, p)
    integer :: i, j, k

    result = 0.0_8
    do i = 1, n
      do j = 1, p
        do k = 1, m
          result(i, j) = result(i, j) + mat1(i, k) * mat2(k, j)
        end do
      end do
    end do
  end subroutine multiply_matrices

  ! Transpozycja macierzy
  subroutine transpose_matrix(mat, result, n, m)
    implicit none
    integer, intent(in) :: n, m
    real(8), intent(in) :: mat(n, m)
    real(8), intent(out) :: result(m, n)
    integer :: i, j

    do i = 1, n
      do j = 1, m
        result(j, i) = mat(i, j)
      end do
    end do
  end subroutine transpose_matrix

  ! Rekurencyjna funkcja do wyliczania wyznacznikow
  recursive function determinant(mat, n) result(det)
    implicit none
    integer, intent(in) :: n
    real(8), intent(in) :: mat(n, n)
    real(8) :: det
    real(8), allocatable :: minor(:,:)
    integer :: i, j, k

    if (n == 1) then
      det = mat(1, 1)
    else if (n == 2) then
      det = mat(1, 1) * mat(2, 2) - mat(1, 2) * mat(2, 1)
    else
      det = 0.0_8
      allocate(minor(n-1, n-1))
      do k = 1, n
        do i = 2, n
          do j = 1, k-1
            minor(i-1, j) = mat(i, j)
          end do
          do j = k+1, n
            minor(i-1, j-1) = mat(i, j)
          end do
        end do
        det = det + (-1.0_8)**(k+1) * mat(1, k) * determinant(minor, n-1)
      end do
      deallocate(minor)
    end if
  end function determinant

end module matrix_operations

program operacje_na_macierzach
  use matrix_operations
  implicit none

  real(8), dimension(3, 3) :: mat1, mat2, result
  real(8), dimension(3, 3) :: transposed
  integer :: i, j
  real(8) :: det

  ! Tworzenie macierzy
  mat1 = reshape([1.0_8, 2.0_8, 3.0_8, 4.0_8, 5.0_8, 6.0_8, 7.0_8, 8.0_8, 9.0_8], [3, 3])
  mat2 = reshape([9.0_8, 8.0_8, 7.0_8, 6.0_8, 5.0_8, 4.0_8, 3.0_8, 2.0_8, 1.0_8], [3, 3])

  ! Ich wyswietlenie
  print *, 'Matrix 1:'
  do i = 1, 3
    print *, (mat1(i, j), j = 1, 3)
  end do

  print *, 'Matrix 2:'
  do i = 1, 3
    print *, (mat2(i, j), j = 1, 3)
  end do

  ! Wywolanie i wyswietlenie wszystkich stworzonych funkcji w module
  call add_matrices(mat1, mat2, result, 3, 3)
  print *, 'Sum of matrices:'
  do i = 1, 3
    print *, (result(i, j), j = 1, 3)
  end do

  call subtract_matrices(mat1, mat2, result, 3, 3)
  print *, 'Difference of matrices:'
  do i = 1, 3
    print *, (result(i, j), j = 1, 3)
  end do

  call multiply_matrices(mat1, mat2, result, 3, 3, 3)
  print *, 'Product of matrices:'
  do i = 1, 3
    print *, (result(i, j), j = 1, 3)
  end do

  call transpose_matrix(mat1, transposed, 3, 3)
  print *, 'Transpose of Matrix 1:'
  do i = 1, 3
    print *, (transposed(i, j), j = 1, 3)
  end do

  det = determinant(mat1, 3)
  print *, 'Determinant of Matrix 1:', det

end program operacje_na_macierzach