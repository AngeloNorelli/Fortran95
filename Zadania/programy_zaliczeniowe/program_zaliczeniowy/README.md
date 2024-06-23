# Program [`operacje_na_macierzach`](./program.f95)
Opis
Program `operacje_na_macierzach` jest przykładem wykorzystania modułu `matrix_operations`, który zawiera różne operacje na macierzach. Program definiuje dwie macierze, wykonuje na nich operacje dodawania, odejmowania, mnożenia, transponowania oraz oblicza wyznacznik macierzy.

## Moduł `matrix_operations`
Moduł `matrix_operations` zawiera zestaw funkcji do wykonywania operacji na macierzach, takich jak dodawanie, odejmowanie, mnożenie, transponowanie oraz obliczanie wyznacznika macierzy.
* `add_matrix(mat1, mat2)`: Zwraca sumę dwóch macierzy `mat1` i `mat2`.
* `subtract_matrix(mat1, mat2)`: Zwraca różnicę dwóch macierzy, gdzie `mat1` - `mat2`.
* `multiply_matrix(mat1, mat2)`: Zwraca iloczyn dwóch macierzy `mat1` i `mat2`.
* `transpose_matrix(mat)`: Zwraca transponowaną macierz `mat`.
* `determinant_matrix(mat)`: Zwraca wyznacznik macierzy `mat` za pomocą rekurencyjnej metody.

## Program główny matrix_operations_demo
* Definiuje dwie macierze `mat1` i `mat2`.
* Wyświetla te macierze.
* Wykonuje operacje dodawania, odejmowania, mnożenia oraz transponowania macierzy.
* Oblicza wyznacznik pierwszej macierzy.
* Wyświetla wyniki wszystkich operacji.

Program można łatwo dostosować do innych rozmiarów macierzy lub typów danych, zmieniając odpowiednio parametry wejściowe i typy zmiennych w kodzie.