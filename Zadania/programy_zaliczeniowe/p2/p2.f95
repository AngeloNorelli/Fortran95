program p2
    implicit none
    real :: a, b, c, delta, root1, root2

    print *, 'Enter coefficients a, b, and c:'
    read *, a, b, c

    delta = b**2 - 4.0 * a * c

    if (discriminant > 0.0) then
        root1 = (-b + sqrt(delta)) / (2.0 * a)
        root2 = (-b - sqrt(delta)) / (2.0 * a)
        print *, 'Roots are real and different: ', root1, root2
    else if (delta == 0.0) then
        root1 = -b / (2.0 * a)
        print *, 'Roots are real and the same: ', root1
    else
        print *, 'Roots are complex and different.'
    end if
end program p2
