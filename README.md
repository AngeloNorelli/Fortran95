# Prosty opis programów

## Program 3
Program [`p3`](./p03) otwiera istniejący plik `data_1` i dodaje do niego nową linię z tekstem "witaj".

### Szczegóły działania
1. **Otwieranie pliku**:
    - Plik `data_1` jest otwierany z jednostką logiczną 66.
    - Parametry otwarcia pliku:
        - `STATUS="OLD"`: Plik musi już istnieć.
        - `ACTION="WRITE"`: Plik otwierany jest w trybie do zapisu.
        - `POSITION="APPEND"`: Nowe dane będą dodawane na końcu pliku.

2. **Zapis do pliku**:
    - Polecenie `WRITE (UNIT=66, FMT=*) "witaj"` zapisuje linię tekstu "witaj" do otwartego pliku.

3. **Zakończenie programu**:
    - Polecenie `STOP` zatrzymuje wykonanie programu.
    - `END PROGRAM p3` oznacza koniec programu.

<br><br>

## Program 4
Program [`p4`](./p04) odczytuje wartości z pliku `data_in` i wyświetla je na standardowym wyjściu w określonym formacie.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `REAL :: a, b`: Deklaracja zmiennych rzeczywistych `a` i `b`.
    - `INTEGER :: c`: Deklaracja zmiennej całkowitej `c`.

2. **Otwieranie pliku**:
    - Plik `data_in` jest otwierany z jednostką logiczną 66.
    - Parametry otwarcia pliku:
        - `STATUS="OLD"`: Plik musi już istnieć.
        - `ACTION="READ"`: Plik otwierany jest w trybie do odczytu.
        - `POSITION="REWIND"`: Wskaźnik pliku ustawiany jest na początek.

3. **Odczyt danych z pliku**:
    - Polecenie `READ(UNIT=66, FMT=*) a, b, c` odczytuje wartości zmiennych `a`, `b` i `c` z pliku `data_in`.

4. **Zapis danych na standardowym wyjściu**:
    - Polecenie `WRITE (UNIT=*, FMT="(A8, F6.3, T40, A5, ES12.4, A6, I8)") &` wyświetla odczytane wartości w określonym formacie:
        - `A8`: Łańcuch znaków o długości 8.
        - `F6.3`: Liczba rzeczywista z 6 miejscami całkowitymi i 3 miejscami po przecinku.
        - `T40`: Ustawienie pozycji zapisu na kolumnie 40.
        - `A5`: Łańcuch znaków o długości 5.
        - `ES12.4`: Liczba w notacji wykładniczej z 12 miejscami całkowitymi i 4 miejscami po przecinku.
        - `A6`: Łańcuch znaków o długości 6.
        - `I8`: Liczba całkowita o szerokości 8 znaków.

5. **Zakończenie programu**:
    - Polecenie `STOP` zatrzymuje wykonanie programu.
    - `END PROGRAM p4` oznacza koniec programu.

<br><br>

## Program 5
Program [`p5`](./p05) wyświetla wartości zmiennych `i` i `k` w ramach dwóch zagnieżdżonych pętli `DO`. Program wypisuje pary liczb, gdzie `i` przyjmuje wartości od 1 do 10, a `k` od 1 do 12 z krokiem 5.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `INTEGER :: i, k`: Deklaracja zmiennych całkowitych `i` i `k`.

2. **Pierwsza pętla `DO`**:
    - `DO i = 1, 10`: Pętla zewnętrzna iteruje wartość `i` od 1 do 10.

3. **Druga pętla `DO`**:
    - `DO k = 1, 12, 5`: Pętla wewnętrzna iteruje wartość `k` od 1 do 12 z krokiem 5 (wartości `k` będą 1, 6, 11).

4. **Zapis danych na standardowym wyjściu**:
    - `WRITE (UNIT=*, FMT=*) i, k`: Wyświetla wartości `i` i `k` na standardowym wyjściu dla każdej iteracji pętli wewnętrznej.

5. **Zakończenie programu**:
    - Polecenie `STOP` zatrzymuje wykonanie programu.
    - `END PROGRAM p5` oznacza koniec programu.

<br><br>

## Program 6
Program [`p6`](./p06) pobiera datę od użytkownika, wyodrębnia z niej miesiąc i sprawdza, czy miesiąc ten należy do wiosny, lata, czy żadnej z tych pór roku.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `CHARACTER (LEN=10) :: date`: Deklaracja zmiennej znakowej `date` o długości 10 znaków, przechowującej datę w formacie `yyyy-mm-dd`.
    - `CHARACTER (LEN=2) :: month`: Deklaracja zmiennej znakowej `month` o długości 2 znaków, przechowującej miesiąc wyodrębniony z daty.

2. **Pobieranie daty od użytkownika**:
    - `WRITE (UNIT=*, FMT=*) "napisz date w formacie yyyy-mm-dd"`: Wyświetlenie komunikatu proszącego użytkownika o podanie daty.
    - `READ (UNIT=*, FMT=*) date`: Odczytanie daty podanej przez użytkownika.

3. **Wyodrębnianie miesiąca z daty**:
    - `month = date(6:7)`: Wyodrębnienie dwuznakowego miesiąca z pozycji 6 i 7 zmiennej `date`.

4. **Wyświetlanie miesiąca**:
    - `WRITE (UNIT=*, FMT="(A10)") month`: Wyświetlenie wyodrębnionego miesiąca.

5. **Sprawdzanie miesiąca za pomocą `SELECT CASE`**:
    - `CASE("03":"05")`: Jeśli miesiąc to marzec, kwiecień lub maj, wyświetla "to wiosna".
    - `CASE("06", "07", "08")`: Jeśli miesiąc to czerwiec, lipiec lub sierpień, wyświetla "to lato".
    - `CASE DEFAULT`: Dla innych wartości miesiąca, wyświetla "to nie wiosna ani lato".

6. **Zakończenie programu**:
    - Polecenie `STOP` zatrzymuje wykonanie programu.
    - `END PROGRAM p6` oznacza koniec programu.

<br><br>

## Program 7
Program [`p7`](./p07) demonstruje manipulację łańcuchami znaków oraz odczyt i zapis danych od użytkownika. Program łączy i modyfikuje różne ciągi znaków, a następnie wyświetla wyniki na standardowym wyjściu.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `CHARACTER (LEN=16) :: a, b, c, d`: Deklaracja zmiennych znakowych `a`, `b`, `c`, `d` o długości 16 znaków każda.

2. **Inicjalizacja zmiennych**:
    - `a = "a kindly gigant"`: Przypisanie wartości "a kindly gigant" do zmiennej `a`.
    - `b = "a small man"`: Przypisanie wartości "a small man" do zmiennej `b`.
    - `c = b(:8) // "step"`: Połączenie pierwszych 8 znaków zmiennej `b` z ciągiem "step", wynik to "a small step".
    - `d = "for a" // b(8:)`: Połączenie ciągu "for a" z znakami od 8. pozycji do końca zmiennej `b`, wynik to "for a man".

3. **Wyświetlanie wyników**:
    - `PRINT *, c, d`: Wyświetlenie wartości zmiennych `c` i `d`.

4. **Dalsza manipulacja zmiennymi**:
    - `b = " " // d(:4) // b(9:11) // a(3:6)`: Modyfikacja zmiennej `b` przez połączenie kilku fragmentów różnych ciągów. Wynik to " for smallkind".
    - `a = a(:2) // a(10:15) // " leap"`: Modyfikacja zmiennej `a` przez połączenie fragmentów ciągu `a` z ciągiem " leap". Wynik to "a gigant leap".

5. **Wyświetlanie zmodyfikowanych zmiennych**:
    - `PRINT *, a, b`: Wyświetlenie zmienionych wartości zmiennych `a` i `b`.

6. **Interakcja z użytkownikiem**:
    - `PRINT *, "your first name"`: Wyświetlenie komunikatu proszącego o podanie pierwszego imienia.
    - `READ *, a`: Odczytanie pierwszego imienia od użytkownika i przypisanie do zmiennej `a`.
    - `PRINT *, "your second name"`: Wyświetlenie komunikatu proszącego o podanie drugiego imienia.
    - `READ *, b`: Odczytanie drugiego imienia od użytkownika i przypisanie do zmiennej `b`.

7. **Wyświetlanie imion i dodanie tekstu**:
    - `PRINT *, a, b, "student"`: Wyświetlenie imion użytkownika z dodaniem słowa "student".
    - `PRINT *, TRIM(a), " ", TRIM(b), " student"`: Wyświetlenie przyciętych imion użytkownika (usunięcie końcowych spacji) z dodaniem słowa "student".

<br><br>

## Program 8
Program [`p8`](./p08) demonstruje użycie typów zdefiniowanych przez użytkownika (custom types) do przechowywania i manipulowania danymi osobowymi. Program tworzy dwie zmienne typu `person`, przypisuje im wartości, a następnie wyświetla i analizuje te dane.

### Szczegóły działania
1. **Definicja typu `person`**:
    - `CHARACTER (LEN=12) :: first_name`: Pole na imię (maksymalnie 12 znaków).
    - `CHARACTER (LEN=1) :: middle_initial`: Pole na inicjał drugiego imienia (1 znak).
    - `CHARACTER (LEN=12) :: last_name`: Pole na nazwisko (maksymalnie 12 znaków).
    - `INTEGER :: age`: Pole na wiek.
    - `CHARACTER (LEN=1) :: sex`: Pole na płeć (1 znak, np. "M" lub "F").
    - `CHARACTER (LEN=11) :: social_security`: Pole na numer ubezpieczenia społecznego (11 znaków).

2. **Deklaracja zmiennych typu `person`**:
    - `TYPE(person) :: jack, jill`: Deklaracja dwóch zmiennych `jack` i `jill` typu `person`.

3. **Przypisanie wartości do zmiennych**:
    - `jack = person("Jack", "R", "Hagen", 47, "M", "123-45-6789")`: Przypisanie wartości do zmiennej `jack`.
    - `jill = person("Jill", "M", "Smith", 39, "F", "987-65-4321")`: Przypisanie wartości do zmiennej `jill`.

4. **Wyświetlanie danych**:
    - `PRINT *, jill%last_name`: Wyświetlenie nazwiska osoby `jill`.
    - `PRINT *, jack%age`: Wyświetlenie wieku osoby `jack`.

5. **Sprawdzanie płci i wyświetlanie informacji**:
    - `IF (jack%sex == "F") PRINT *, jack%first_name, "jest kobieta"`: Sprawdzenie, czy osoba `jack` jest kobietą i wyświetlenie odpowiedniego komunikatu (nie spełnione, więc komunikat nie zostanie wyświetlony).
    - `IF (jill%sex == "F") PRINT *, jill%first_name, "jest kobieta"`: Sprawdzenie, czy osoba `jill` jest kobietą i wyświetlenie odpowiedniego komunikatu (spełnione, więc wyświetli "Jill jest kobieta").

<br><br>

## Program 9
Program [`p9`](./p09) oblicza pierwiastek sześcienny z liczby podanej przez użytkownika. Program wykorzystuje funkcję `cube_root`, zdefiniowaną poza głównym blokiem programu, do wykonania obliczeń.

### Szczegóły działania
1. **Deklaracje i interfejs funkcji**:
    - `INTERFACE`: Blok interfejsu deklarujący funkcję `cube_root`.
    - `REAL FUNCTION cube_root (x)`: Deklaracja funkcji `cube_root`, która przyjmuje i zwraca wartość typu `REAL`.

2. **Deklaracje zmiennych**:
    - `REAL :: a, b`: Deklaracja zmiennych rzeczywistych `a` i `b`.

3. **Pobieranie liczby od użytkownika**:
    - `PRINT *, "type a number:"`: Wyświetlenie komunikatu proszącego użytkownika o podanie liczby.
    - `READ *, a`: Odczytanie liczby podanej przez użytkownika i przypisanie do zmiennej `a`.

4. **Obliczanie pierwiastka sześciennego**:
    - `b = cube_root(a)`: Wywołanie funkcji `cube_root` z argumentem `a` i przypisanie wyniku do zmiennej `b`.

5. **Wyświetlanie wyniku**:
    - `PRINT *, "cube root of ", a, " is ", b`: Wyświetlenie wyniku obliczeń.

6. **Zakończenie programu**:
    - Polecenie `STOP` zatrzymuje wykonanie programu.
    - `END PROGRAM p9` oznacza koniec programu.

7. **Definicja funkcji `cube_root`**:
    - `REAL FUNCTION cube_root (x)`: Definicja funkcji `cube_root`.
    - `IMPLICIT NONE`: Wyłączenie domyślnych deklaracji typów.
    - `REAL :: x, log_x`: Deklaracja zmiennych `x` i `log_x`.
    - `log_x = LOG(x)`: Obliczenie logarytmu naturalnego z `x`.
    - `cube_root = EXP(log_x/3.0)`: Obliczenie pierwiastka sześciennego z `x` przez podzielenie logarytmu przez 3 i podniesienie liczby `e` do tej potęgi.

<br><br>

## Program 10
Program [`p10`](./p10) demonstruje użycie pętli `DO` z różnymi wartościami początkowymi, końcowymi i przyrostami. W programie znajduje się kilka przykładów, które ilustrują, jak można kontrolować iterację w pętli `DO`.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `INTEGER :: i, j, p, q, r, x, n, m`: Deklaracja zmiennych całkowitych używanych w pętlach `DO`.

2. **Pierwsza pętla `DO`**:
    - `PRINT *, "start=1, stop=10, increment=1 (domyslny)"`: Wyświetlenie informacji o zakresie pętli.
    - `DO i = 1, 10`: Iteracja zmiennej `i` od 1 do 10 z domyślnym przyrostem 1.
    - `PRINT *, i`: Wyświetlenie wartości `i` w każdej iteracji.

3. **Druga pętla `DO`**:
    - `PRINT *, "start=20, stop=50, increment=5"`: Wyświetlenie informacji o zakresie pętli.
    - `DO j = 20, 50, 5`: Iteracja zmiennej `j` od 20 do 50 z przyrostem 5.
    - `PRINT *, j`: Wyświetlenie wartości `j` w każdej iteracji.

4. **Trzecia pętla `DO`**:
    - `PRINT *, "start=7, stop=19, increment=4"`: Wyświetlenie informacji o zakresie pętli.
    - `DO p = 7, 19, 4`: Iteracja zmiennej `p` od 7 do 19 z przyrostem 4.
    - `PRINT *, p`: Wyświetlenie wartości `p` w każdej iteracji.

5. **Czwarta pętla `DO`**:
    - `PRINT *, "start=4, stop=5, increment=6"`: Wyświetlenie informacji o zakresie pętli.
    - `DO q = 4, 5, 6`: Iteracja zmiennej `q` od 4 do 5 z przyrostem 6 (wykona się tylko raz, ponieważ start jest większy od stopu).
    - `PRINT *, q`: Wyświetlenie wartości `q` w jedynej iteracji.

6. **Piąta pętla `DO`**:
    - `PRINT *, "start=20, stop=-20, increment=-6"`: Wyświetlenie informacji o zakresie pętli.
    - `DO m = 20, -20, -6`: Iteracja zmiennej `m` od 20 do -20 z przyrostem -6.
    - `PRINT *, m`: Wyświetlenie wartości `m` w każdej iteracji.

7. **Zakończenie programu**:
    - `STOP`: Zatrzymanie wykonania programu.
    - `END PROGRAM p10`: Oznaczenie końca programu.

<br><br>

## Program 11
Program [`p11`](./p11) ilustruje działanie nieskończonej pętli `DO` z warunkiem wyjścia. Program wykonuje operację mnożenia zmiennej przez samą siebie, dopóki jej wartość nie będzie mniejsza niż określona stała epsilon. W trakcie obliczeń program sumuje wartości tej zmiennej.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `REAL :: suma, a_j`: Deklaracja zmiennych rzeczywistych `suma` i `a_j`.
    - `REAL, PARAMETER :: epsilon = 1.0e-40`: Deklaracja stałej rzeczywistej `epsilon` z wartością `1.0e-40`.

2. **Inicjalizacja zmiennych**:
    - `a_j = .99999`: Inicjalizacja zmiennej `a_j` wartością `0.99999`.
    - `suma = 0.0`: Inicjalizacja zmiennej `suma` wartością `0.0`.

3. **Wyświetlenie wartości epsilon**:
    - `PRINT *, epsilon`: Wyświetlenie wartości stałej `epsilon`.

4. **Pętla `DO`**:
    - `DO`: Początek nieskończonej pętli `DO`.
        - `a_j = a_j * a_j`: Mnożenie zmiennej `a_j` przez samą siebie.
        - `suma = suma + a_j`: Dodawanie wartości `a_j` do zmiennej `suma`.
        - `PRINT *, a_j`: Wyświetlenie aktualnej wartości `a_j`.
        - `IF (a_j < epsilon) EXIT`: Warunek wyjścia z pętli, jeśli `a_j` jest mniejsze niż `epsilon`.

5. **Wyświetlenie sumy**:
    - `PRINT *, "suma = ", suma`: Wyświetlenie sumy wszystkich wartości `a_j` dodanych do zmiennej `suma`.

6. **Zakończenie programu**:
    - `STOP`: Zatrzymanie wykonania programu.
    - `END PROGRAM p11`: Oznaczenie końca programu.

<br><br>

## Program 12
Program [`p12`](./p12) oblicza sumę kolejnych liczb całkowitych od 1 do pewnej wartości granicznej. Program wykorzystuje pętlę `DO` do iteracji przez liczby całkowite, a także wykorzystuje instrukcje sterujące `exit` i `cycle` do kontroli przepływu pętli.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `INTEGER, PARAMETER :: range = SELECTED_INT_KIND(15)`: Deklaracja stałej `range` jako rodzaju liczby całkowitej o wybranej precyzji (używając funkcji `SELECTED_INT_KIND`).

2. **Inicjalizacja zmiennych**:
    - `INTEGER(kind = range) :: suma, n`: Inicjalizacja zmiennych `suma` i `n` jako liczby całkowitej o wybranej precyzji.

3. **Wyświetlenie informacji o precyzji**:
    - `PRINT *, "range = ", range`: Wyświetlenie informacji o precyzji liczby całkowitej.

4. **Pętla `DO`**:
    - `DO`: Początek nieskończonej pętli `DO`.
        - `n = n + 1`: Inkrementacja zmiennej `n`.
        - `IF (n > 1234567890) EXIT`: Warunek wyjścia z pętli, jeśli `n` przekroczy wartość `1234567890`.
        - `IF (n == 55) CYCLE`: Przeskok do kolejnej iteracji, jeśli `n` równa się 55.
        - `IF (n >= 20 .AND. n <= 30) CYCLE`: Przeskok do kolejnej iteracji, jeśli `n` mieści się w zakresie od 20 do 30 (włącznie).
        - `suma = suma + n`: Dodanie wartości `n` do sumy.

5. **Wyświetlenie sumy**:
    - `PRINT *, "suma: ", suma`: Wyświetlenie obliczonej sumy liczb.

6. **Zakończenie programu**:
    - `END PROGRAM p12`: Oznaczenie końca programu.

<br><br>

## Opis ogólny
Program [`p13`](./p13) demonstruje tworzenie i manipulowanie tablicami logicznymi, liczbami zespolonymi oraz tablicami znaków. Program zawiera dwie pętle `DO` do inicjalizacji i wyświetlania tablic.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `INTEGER, PARAMETER :: st = 8`: Stała określająca szerokość tablicy `z` i `c`.
    - `INTEGER :: r, s`: Zmienne iteracyjne używane w pętlach `DO`.
    - `LOGICAL, DIMENSION(10,10) :: k1, k2`: Tablice logiczne o rozmiarze 10x10.
    - `LOGICAL, DIMENSION(11:20,11:20) :: m`: Tablica logiczna o rozmiarze 10x10, przesunięta o jeden indeks w górę i w prawo.
    - `COMPLEX, DIMENSION(1:10, 2+st) :: z, c`: Tablice liczb zespolonych o różnych wymiarach.
    - `CHARACTER(len=10), DIMENSION(1:3) :: napisy`: Tablica zawierająca trzy napisy o długości 10 znaków.

2. **Inicjalizacja tablic**:
    - Pierwsza pętla `DO` inicjalizuje tablicę `k1` tak, aby na głównej przekątnej były wartości `.TRUE.`, a poza nią `.FALSE.`.
    - Tablica `k2` jest inicjalizowana na podstawie tablicy `k1`.
    - Tablica `m` jest inicjalizowana na podstawie tablicy `k2`.

3. **Wyświetlanie tablic**:
    - Pierwsze wyświetlenie tablicy `m` za pomocą jednego polecenia `PRINT *` wyświetla jej zawartość.
    - Druga pętla `DO` iteruje po wierszach tablicy `m`, wyświetlając ich zawartość w kolejnych kolumnach.

4. **Zakończenie programu**:
    - `STOP`: Zatrzymuje wykonanie programu.

<br><br>

## Program 15
Program [`p15`](./p15) tworzy trzy trójwymiarowe tablice rzeczywiste o różnych wymiarach i przypisuje im stałe wartości. Następnie oblicza sumę dwóch z tych tablic i wyświetla wynik.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `real, dimension(2:10, -30:30, 0:10) :: t, y, tplusy`: Deklaracja trzech trójwymiarowych tablic rzeczywistych `t`, `y` i `tplusy`. Tablice te mają różne zakresy indeksów: `t` ma zakres od 2 do 10 w pierwszym wymiarze, od -30 do 30 w drugim wymiarze oraz od 0 do 10 w trzecim wymiarze.

2. **Inicjalizacja tablic**:
    - `t = 2.0`: Przypisanie wartości 2.0 do wszystkich elementów tablicy `t`.
    - `y = 3.0`: Przypisanie wartości 3.0 do wszystkich elementów tablicy `y`.

3. **Obliczenie sumy tablic**:
    - `tplusy = t + y`: Obliczenie sumy tablic `t` i `y` element po elemencie i przypisanie wyniku do tablicy `tplusy`.

4. **Wyświetlenie wyniku**:
    - `print *, tplusy`: Wyświetlenie tablicy `tplusy`, która zawiera sumę wartości elementów tablic `t` i `y`.

5. **Zakończenie programu**:
    - `stop`: Zatrzymanie wykonania programu.

## Program 16
Program p16 jest niewielkim programem w języku Fortran, który demonstruje operacje na tablicach oraz obliczenia na liczbach zespolonych. Program inicjalizuje dwie trójwymiarowe tablice rzeczywiste oraz jedną tablicę liczb zespolonych, wykonuje na nich operacje matematyczne i wyświetla wyniki.

### Szczegóły działania
1. **Deklaracje zmiennych**:
    - `integer, parameter :: st = 8`: Stała określająca szerokość tablicy `z` i `c`.
    - `integer :: wiersz, kolumna, r`: Zmienne iteracyjne używane w pętlach.
    - `real, dimension(2:10, -30:30, 0:10) :: t, y, trazyy`: Trzy trójwymiarowe tablice rzeczywiste o różnych wymiarach.
    - `complex, dimension(1:10, 2 + st) :: z, c`: Tablice liczb zespolonych o różnych wymiarach.

2. **Inicjalizacja tablic**:
    - `t = 2.0`: Przypisanie wartości `2.0` do wszystkich elementów tablicy `t`.
    - `y = 3.0`: Przypisanie wartości `3.0` do wszystkich elementów tablicy `y`.
    - `trazyy = t * y`: Obliczenie iloczynu elementów tablic `t` i `y` oraz przypisanie wyniku do tablicy `trazyy`.

3. **Operacje na tablicach zespolonych**:
    - `z = (1.0, 0.0)`: Przypisanie liczby zespolonej `(1.0, 0.0)` do wszystkich elementów tablicy `z`.
    - Pętla `DO` zmienia wartości elementów tablicy z w zależności od iteracji.
    - `c = (2.0, 0.0) * z + (1.0, 0.0)`: Obliczenie wyrażenia zespolonego `(2.0, 0.0) * z + (1.0, 0.0)` i przypisanie wyniku do tablicy `c`.

4. **Wyświetlanie wyników**:
    - `print *, trazyy`: Wyświetlenie tablicy trazyy, która zawiera wynik mnożenia tablic `t` i `y`.
    - `print *, c(1:3, 8:10)`: Wyświetlenie fragmentu tablicy `c` o wymiarach 3x3.
    - Pętla `DO` wyświetla elementy tablicy `c` w wybranych wierszach i kolumnach.

5. **Zakończenie programu**:
    - `stop`: Zatrzymanie wykonania programu.
