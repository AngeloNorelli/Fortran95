# Prosty opis programów z zajęć

## Program 3
Program [`p3`](./Zadania/p03/p3.f95) otwiera istniejący plik `data_1` i dodaje do niego nową linię z tekstem "witaj".

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
Program [`p4`](./Zadania/p04/p4.f95) odczytuje wartości z pliku `data_in` i wyświetla je na standardowym wyjściu w określonym formacie.

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
Program [`p5`](./Zadania/p05/p5.f95) wyświetla wartości zmiennych `i` i `k` w ramach dwóch zagnieżdżonych pętli `DO`. Program wypisuje pary liczb, gdzie `i` przyjmuje wartości od 1 do 10, a `k` od 1 do 12 z krokiem 5.

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
Program [`p6`](./Zadania/p06/p6.f95) pobiera datę od użytkownika, wyodrębnia z niej miesiąc i sprawdza, czy miesiąc ten należy do wiosny, lata, czy żadnej z tych pór roku.

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
Program [`p7`](./Zadania/p07/p7.f95) demonstruje manipulację łańcuchami znaków oraz odczyt i zapis danych od użytkownika. Program łączy i modyfikuje różne ciągi znaków, a następnie wyświetla wyniki na standardowym wyjściu.

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
Program [`p8`](./Zadania/p08/p8.f95) demonstruje użycie typów zdefiniowanych przez użytkownika (custom types) do przechowywania i manipulowania danymi osobowymi. Program tworzy dwie zmienne typu `person`, przypisuje im wartości, a następnie wyświetla i analizuje te dane.

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
Program [`p9`](./Zadania/p09/p9.f95) oblicza pierwiastek sześcienny z liczby podanej przez użytkownika. Program wykorzystuje funkcję `cube_root`, zdefiniowaną poza głównym blokiem programu, do wykonania obliczeń.

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
Program [`p10`](./Zadania/p10/p10.f95) demonstruje użycie pętli `DO` z różnymi wartościami początkowymi, końcowymi i przyrostami. W programie znajduje się kilka przykładów, które ilustrują, jak można kontrolować iterację w pętli `DO`.

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
Program [`p11`](./Zadania/p11/p11.f95) ilustruje działanie nieskończonej pętli `DO` z warunkiem wyjścia. Program wykonuje operację mnożenia zmiennej przez samą siebie, dopóki jej wartość nie będzie mniejsza niż określona stała epsilon. W trakcie obliczeń program sumuje wartości tej zmiennej.

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
Program [`p12`](./Zadania/p12/p12.f95) oblicza sumę kolejnych liczb całkowitych od 1 do pewnej wartości granicznej. Program wykorzystuje pętlę `DO` do iteracji przez liczby całkowite, a także wykorzystuje instrukcje sterujące `exit` i `cycle` do kontroli przepływu pętli.

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

## Program 13
Program [`p13`](./Zadania/p13/p13.f95) demonstruje tworzenie i manipulowanie tablicami logicznymi, liczbami zespolonymi oraz tablicami znaków. Program zawiera dwie pętle `DO` do inicjalizacji i wyświetlania tablic.

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
Program [`p15`](./Zadania/p15/p15.f95) tworzy trzy trójwymiarowe tablice rzeczywiste o różnych wymiarach i przypisuje im stałe wartości. Następnie oblicza sumę dwóch z tych tablic i wyświetla wynik.

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

<br><br>

## Program 16
Program [`p16`](./Zadania/p16/p16.f95) jest niewielkim programem w języku Fortran, który demonstruje operacje na tablicach oraz obliczenia na liczbach zespolonych. Program inicjalizuje dwie trójwymiarowe tablice rzeczywiste oraz jedną tablicę liczb zespolonych, wykonuje na nich operacje matematyczne i wyświetla wyniki.

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

<br><br>

## Program 17
Program [`p17`](./Zadania/p17/p17.f95) demonstruje definicję i użycie funkcji w programie. Program definiuje dwie funkcje `f1` i `f2` do obliczeń matematycznych, a następnie wywołuje te funkcje z różnymi argumentami, aby pokazać wyniki.

### Szczegóły działania

1. **Deklaracje zmiennych**:
    - `real a, b, c, x, y, z, f1`: Deklaracja zmiennych rzeczywistych oraz funkcji `f1`.
    - `data c / 5./`: Inicjalizacja zmiennej `c` wartością 5.0.

2. **Definicja funkcji `f1`**:
    - `f1(x, y) = a + b * x**2 + c * y`: Definicja funkcji `f1` bezpośrednio w programie. Funkcja ta przyjmuje dwa argumenty `x` i `y`, i zwraca wartość obliczoną według wzoru `a + b * x**2 + c * y`.

3. **Przypisanie wartości zmiennym**:
    - `a = 1`: Przypisanie wartości 1 do zmiennej `a`.
    - `b = 2`: Przypisanie wartości 2 do zmiennej `b`.

4. **Wywołanie funkcji `f1` i wyświetlenie wyników**:
    - `z = f1(2., 2.)`: Wywołanie funkcji `f1` z argumentami 2.0 i 2.0, przypisanie wyniku do `z` i wyświetlenie wyniku.
    - `z = f1(b, b)`: Wywołanie funkcji `f1` z argumentami `b` i `b`, przypisanie wyniku do `z` i wyświetlenie wyniku.

5. **Definicja funkcji wewnętrznej `f2`**:
    - `function f2(x, y)`: Definicja funkcji `f2` wewnątrz programu, która przyjmuje dwa argumenty `x` i `y`, i zwraca wartość obliczoną według wzoru `a + b * x**2 + c * y`.

6. **Wywołanie funkcji `f2` i wyświetlenie wyników**:
    - `z = f2(2., 2.)`: Wywołanie funkcji `f2` z argumentami 2.0 i 2.0, przypisanie wyniku do `z` i wyświetlenie wyniku.
    - `z = f2(b, b)`: Wywołanie funkcji `f2` z argumentami `b` i `b`, przypisanie wyniku do `z` i wyświetlenie wyniku.

<br><br>

## Program 18
Program [`p18`](./Zadania/p18/p18.f95) demonstruje użycie formatów do odczytu i wyświetlania danych. Program odczytuje wartości z wejścia użytkownika, przetwarza je, a następnie wyświetla wyniki w sformatowany sposób.

### Szczegóły działania

1. **Deklaracje zmiennych**:
    - `integer :: a, b`: Deklaracja zmiennych całkowitych `a` i `b`.
    - `real :: c, d`: Deklaracja zmiennych rzeczywistych `c` i `d`.

2. **Odczyt danych**:
    - `print *, 'Type 123456789'`: Wyświetlenie komunikatu z prośbą o wpisanie wartości.
    - `read 101, a, b, c, d`: Odczytanie wartości wpisanych przez użytkownika do zmiennych `a`, `b`, `c` i `d` zgodnie z formatem `101`.

3. **Wyświetlanie wyników**:
    - `print 200, a, b, a-b, c, d, c-d`: Wyświetlenie wyników obliczeń w sformatowany sposób zgodnie z formatem `200`.

4. **Formaty**:
    - `101 format(T6, I4, TL6, I4, TL6, F4.1, TL6, F4.2)`: Format do odczytu danych. 
        - `T6`: Przesunięcie o 6 znaków w prawo.
        - `I4`: Liczba całkowita o szerokości 4 znaków.
        - `TL6`: Przesunięcie o 6 znaków w lewo.
        - `F4.1`: Liczba rzeczywista o szerokości 4 znaków z 1 miejscem po przecinku.
        - `F4.2`: Liczba rzeczywista o szerokości 4 znaków z 2 miejscami po przecinku.
    - `200 format(5X, I4, " minus ", I5, " is ", I5, TR4, F6.2, " minus", F6.2, " is ", F8.3)`: Format do wyświetlania wyników.
        - `5X`: Przesunięcie o 5 znaków w prawo.
        - `I4`, `I5`: Liczby całkowite o szerokości odpowiednio 4 i 5 znaków.
        - `TR4`: Przesunięcie w prawo o 4 znaki.
        - `F6.2`: Liczba rzeczywista o szerokości 6 znaków z 2 miejscami po przecinku.
        - `F8.3`: Liczba rzeczywista o szerokości 8 znaków z 3 miejscami po przecinku.

<br><br>

## Program 20
Program [`p20`](./Zadania/p20/p20.f95) demonstruje użycie tablic z niestandardowym zakresem indeksów. Program tworzy i inicjalizuje tablicę `mm` o zakresie indeksów od -1 do 4, a następnie wyświetla jej zawartość.

### Szczegóły działania

1. **Deklaracja tablicy**:
    - `integer, dimension (-1:4) :: mm`: Deklaracja tablicy `mm` typu całkowitego z zakresem indeksów od -1 do 4.

2. **Inicjalizacja tablicy**:
    - `mm = (/12, 14, 16, 18, 20, 22/)`: Inicjalizacja tablicy `mm` wartościami 12, 14, 16, 18, 20 i 22. Wartości te zostaną przypisane do indeksów od -1 do 4 odpowiednio.

3. **Wyświetlanie zawartości tablicy**:
    - `print *, mm`: Wyświetlenie zawartości tablicy `mm` na standardowym wyjściu.

<br><br>

## Program 21
Program [`p21`](./Zadania/p21/p21.f95) demonstruje tworzenie i inicjalizację macierzy przy użyciu funkcji `reshape`. Program tworzy wektor, a następnie przekształca go w macierz o zadanych wymiarach.

### Szczegóły działania

1. **Deklaracja tablic**:
    - `integer, dimension (5, 3) :: macierz`: Deklaracja dwuwymiarowej tablicy `macierz` o wymiarach 5x3.
    - `integer, dimension (15) :: wektor`: Deklaracja jednowymiarowej tablicy `wektor` o długości 15.

2. **Inicjalizacja wektora**:
    - `wektor = (/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14/)`: Inicjalizacja wektora wartościami od 0 do 14.

3. **Przekształcenie wektora w macierz**:
    - `macierz = reshape(wektor, (/5, 3/))`: Przekształcenie wektora w macierz o wymiarach 5x3 za pomocą funkcji `reshape`.

4. **Wyświetlanie zawartości macierzy**:
    - `print *, macierz`: Wyświetlenie zawartości macierzy `macierz` na standardowym wyjściu.

<br><br>

## Program 22
Program [`p22`](./Zadania/p22/p22.f95) demonstruje tworzenie i manipulację macierzy przy użyciu funkcji `reshape` oraz wyświetlanie jej fragmentów. Program przekształca wektor w macierz o zadanych wymiarach, wyświetla zawartość macierzy, a następnie prezentuje wybrane fragmenty macierzy.

### Szczegóły działania

1. **Deklaracja tablic**:
    - `integer, dimension (5, 3) :: macierz`: Deklaracja dwuwymiarowej tablicy `macierz` o wymiarach 5x3.
    - `integer, dimension (15) :: wektor`: Deklaracja jednowymiarowej tablicy `wektor` o długości 15.
    - `integer, dimension (2) :: zakres`: Deklaracja jednowymiarowej tablicy `zakres` o długości 2.

2. **Inicjalizacja wektora**:
    - `wektor = (/0,1,2,3,4,5,6,7,8,9,10,11,12,13,14/)`: Inicjalizacja wektora wartościami od 0 do 14.

3. **Przekształcenie wektora w macierz**:
    - `macierz = reshape(wektor, (/5,3/))`: Przekształcenie wektora w macierz o wymiarach 5x3 za pomocą funkcji `reshape`.

4. **Wyświetlanie zawartości macierzy**:
    - `print *, macierz`: Wyświetlenie zawartości macierzy `macierz` na standardowym wyjściu.

5. **Przekształcenie wektora w macierz z użyciem zakresu**:
    - `zakres = (/5,3/)`: Ustawienie zakresu wymiarów macierzy.
    - `macierz = reshape(wektor, zakres)`: Ponowne przekształcenie wektora w macierz z użyciem zakresu.

6. **Wyświetlanie fragmentu macierzy**:
    - `print *, macierz (:4, :2)`: Wyświetlenie fragmentu macierzy, składającego się z pierwszych 4 wierszy i 2 kolumn.

7. **Wyświetlanie zawartości macierzy w pętli**:
    - `do wiersz = 1, 3`: Pętla iterująca po wierszach.
        - `print *, (macierz(kolumna, wiersz), kolumna = 1, 5, 1)`: Wyświetlenie zawartości kolumn w aktualnym wierszu.

<br><br>

## Program 23
Program [`p23`](./Zadania/p23/p23.f95) demonstruje użycie wielowymiarowej tablicy z niestandardowymi zakresami indeksów oraz funkcji `size`, `lbound` i `ubound`. Program inicjalizuje tablicę o wielu wymiarach, oblicza jej rozmiary oraz granice indeksów, a następnie wyświetla te informacje.

### Szczegóły działania

1. **Deklaracja tablicy**:
    - `integer, dimension(2:5, 7:12, -5:4, 7, 2) :: macierz`: Deklaracja pięciowymiarowej tablicy `macierz` z niestandardowymi zakresami indeksów.

2. **Inicjalizacja tablicy**:
    - `macierz = 7`: Inicjalizacja wszystkich elementów tablicy `macierz` wartością 7.

3. **Obliczenia rozmiarów i granic**:
    - `rozmiar = size(macierz)`: Obliczenie całkowitej liczby elementów w tablicy `macierz`.
    - `rozmiar1 = size(macierz, 1)`: Obliczenie rozmiaru pierwszego wymiaru tablicy `macierz`.
    - `rozmiar3 = size(macierz, 3)`: Obliczenie rozmiaru trzeciego wymiaru tablicy `macierz`.
    - `dolna_g = lbound(macierz, 2)`: Obliczenie dolnej granicy drugiego wymiaru tablicy `macierz`.
    - `gorna_g = ubound(macierz, 2)`: Obliczenie górnej granicy drugiego wymiaru tablicy `macierz`.

4. **Wyświetlanie wyników**:
    - `print *, "rozmiar = ", rozmiar, " rozmiar1 = ", rozmiar1, " rozmiar3 = ", rozmiar3, " dolna_g = ", dolna_g, " gorna_g = ", gorna_g`:
      Wyświetlenie obliczonych rozmiarów oraz granic tablicy `macierz` na standardowym wyjściu.

<br><br>

## Program 24
Program [`p24`](./Zadania/p24/p24.f95) demonstruje użycie wielowymiarowych tablic, instrukcji `where`, funkcji `sum` oraz `product`. Program tworzy dwuwymiarową tablicę `forsa` z wartościami obliczonymi na podstawie funkcji sinus, wykonuje operacje na tej tablicy, a następnie wyświetla wyniki.

### Szczegóły działania

1. **Deklaracja i inicjalizacja zmiennych**:
    - `integer, parameter :: miesiac = 12, rok = 5`: Stałe definiujące wymiary tablicy.
    - `integer, dimension (miesiac, rok) :: forsa`: Deklaracja dwuwymiarowej tablicy `forsa`.

2. **Inicjalizacja tablicy**:
    - `do i = 1, miesiac`: Pętla iterująca po miesiącach.
        - `do j = 1, rok`: Pętla iterująca po latach.
            - `forsa(i, j) = int(abs(sin(real(i))) * j) * (-1) ** i`: Obliczenie wartości elementu tablicy na podstawie funkcji sinus, wartości `j` oraz zmiennego znaku w zależności od indeksu `i`.

3. **Wyświetlanie tablicy**:
    - `print *, forsa`: Wyświetlenie zawartości tablicy `forsa`.

4. **Operacje na tablicy za pomocą instrukcji `where`**:
    - `where (forsa .LE. 0) forsa = -forsa`: Zmiana znaków wszystkich niepozytywnych elementów tablicy `forsa`.
    - `where (forsa .EQ. 0) forsa = 1`: Ustawienie wartości 1 dla wszystkich elementów tablicy `forsa` o wartości 0.

5. **Obliczenia sum**:
    - `mala = sum(forsa, forsa < 3)`: Suma elementów tablicy `forsa` mniejszych niż 3.
    - `duza = sum(forsa, forsa >= 3)`: Suma elementów tablicy `forsa` większych lub równych 3.
    - `cala = sum(forsa)`: Suma wszystkich elementów tablicy `forsa`.

6. **Wyświetlanie wyników sum**:
    - `print *, 'mala = ', mala, ' duza = ', duza, ' cala = ', cala`: Wyświetlenie obliczonych sum.

7. **Obliczenia iloczynów**:
    - `mnoze1 = product(forsa)`: Iloczyn wszystkich elementów tablicy `forsa`.
    - `mnoze2 = product(forsa, mask = forsa >= 3)`: Iloczyn elementów tablicy `forsa` większych lub równych 3.

8. **Wyświetlanie wyników iloczynów**:
    - `print *, 'mnoze1 = ', mnoze1, 'mnoze2 = ', mnoze2`: Wyświetlenie obliczonych iloczynów.

<br><br>

## Program 25
Program [`p25`](./Zadania/p25/p25.f95) demonstruje podstawowe operacje na macierzach i wektorach, takie jak transpozycja macierzy oraz mnożenie macierzy i wektorów za pomocą funkcji `transpose` i `matmul`. Program inicjalizuje macierze `matrix_A` i `matrix_B`, wykonuje mnożenie macierzy `matrix_A` przez `matrix_B` oraz mnożenie macierzy `matrix_B` przez wektor `vector_C`, a następnie wyświetla wyniki.

### Szczegóły działania

1. **Deklaracja zmiennych**:
    - `integer, dimension(2, 3) :: matrix_A`: Deklaracja macierzy `matrix_A` o wymiarach 2x3.
    - `integer, dimension(3, 2) :: matrix_B`: Deklaracja macierzy `matrix_B` o wymiarach 3x2.
    - `integer, dimension(2, 2) :: matrix_AB`: Deklaracja macierzy `matrix_AB` o wymiarach 2x2 do przechowywania wyniku mnożenia macierzy.
    - `integer, dimension(2) :: vector_C = (/1, 2/)`: Deklaracja i inicjalizacja wektora `vector_C`.
    - `integer, dimension(3) :: vector_BC`: Deklaracja wektora `vector_BC` do przechowywania wyniku mnożenia macierzy przez wektor.

2. **Inicjalizacja macierzy `matrix_A`**:
    - Macierz `matrix_A` jest ręcznie inicjalizowana wartościami od 1 do 6.

3. **Transpozycja macierzy `matrix_A`**:
    - `matrix_B = transpose(matrix_A)`: Macierz `matrix_B` jest transpozycją macierzy `matrix_A`.

4. **Wyświetlanie macierzy `matrix_B`**:
    - Pętla `do` iteruje po elementach macierzy `matrix_B` i wyświetla je.

5. **Mnożenie macierzy `matrix_A` przez `matrix_B`**:
    - `matrix_AB = matmul(matrix_A, matrix_B)`: Obliczenie iloczynu macierzy `matrix_A` i `matrix_B`.

6. **Wyświetlanie macierzy `matrix_AB`**:
    - Pętla `do` iteruje po elementach macierzy `matrix_AB` i wyświetla je.

7. **Mnożenie macierzy `matrix_B` przez wektor `vector_C`**:
    - `vector_BC = matmul(matrix_B, vector_C)`: Obliczenie iloczynu macierzy `matrix_B` i wektora `vector_C`.

8. **Wyświetlanie wyniku `vector_BC`**:
    - Wyświetlenie elementów wektora `vector_BC`.

<br><br>

## Program 26
Program [`p26`](./Zadania/p26/p26.f95) demonstruje różne operacje na macierzach i wektorach, takie jak znajdowanie wartości maksymalnej i minimalnej, indeksów tych wartości, oraz operacje pakowania i obliczania iloczynu skalarnego.

### Szczegóły działania

1. **Deklaracja zmiennych**:
    - `real :: maximal, minimal, il_skal`: Deklaracja zmiennych rzeczywistych do przechowywania wartości maksymalnej, minimalnej i iloczynu skalarnego.
    - `integer, dimension(2, 3) :: matrix_A`: Deklaracja macierzy `matrix_A` o wymiarach 2x3.
    - `integer, dimension(3, 2) :: matrix_B`: Deklaracja macierzy `matrix_B` o wymiarach 3x2.
    - `integer, dimension(2, 2) :: matrix_AB`: Deklaracja macierzy `matrix_AB` o wymiarach 2x2.
    - `integer, dimension(3) :: vector_C, vector_D`: Deklaracja wektorów `vector_C` i `vector_D` o wymiarach 3.
    - `integer, dimension(6) :: vector_E`: Deklaracja wektora `vector_E` o wymiarze 6.
    - `integer, dimension(1:2) :: indeksy`: Deklaracja wektora `indeksy` do przechowywania indeksów wartości maksymalnej i minimalnej.

2. **Inicjalizacja macierzy `matrix_A`**:
    - Macierz `matrix_A` jest ręcznie inicjalizowana wartościami od 1 do 6.

3. **Znajdowanie wartości maksymalnej i minimalnej oraz ich indeksów**:
    - `maximal = maxval(matrix_A)`: Znalezienie wartości maksymalnej w macierzy `matrix_A`.
    - `indeksy = maxloc(matrix_A)`: Znalezienie indeksów wartości maksymalnej.
    - `minimal = minval(matrix_A)`: Znalezienie wartości minimalnej w macierzy `matrix_A`.
    - `indeksy = minloc(matrix_A)`: Znalezienie indeksów wartości minimalnej.
    - Wyświetlenie wartości maksymalnej i minimalnej oraz ich indeksów.

4. **Pakowanie macierzy do wektora**:
    - `vector_E = pack(matrix_A, .true.)`: Pakowanie wszystkich elementów macierzy `matrix_A` do wektora `vector_E`.

5. **Pakowanie elementów spełniających określone warunki**:
    - `vector_C = pack(matrix_A, matrix_A <= 3)`: Pakowanie elementów macierzy `matrix_A` mniejszych lub równych 3 do wektora `vector_C`.
    - `vector_D = pack(matrix_A, matrix_A > 3)`: Pakowanie elementów macierzy `matrix_A` większych od 3 do wektora `vector_D`.

6. **Obliczanie iloczynu skalarnego**:
    - `il_skal = dot_product(vector_C, vector_D)`: Obliczenie iloczynu skalarnego wektorów `vector_C` i `vector_D`.

7. **Wyświetlanie wyników**:
    - Wyświetlenie wektorów `vector_E`, `vector_C`, `vector_D` oraz iloczynu skalarnego.

<br><br>

## Program 27
Program [`p27`](./Zadania/p27/p27.f95) wykonuje operacje na wielowymiarowych macierzach i wektorach, takie jak dodawanie i odejmowanie wartości oraz przypisanie wartości z jednej macierzy do drugiej.

### Szczegóły działania

1. **Deklaracja zmiennych**:
    - `real, dimension(10, 10, 21, 21) :: x`: Deklaracja macierzy `x` o wymiarach 10x10x21x21.
    - `real, dimension(0:9, 0:9, -10:10, -10:10) :: y`: Deklaracja macierzy `y` o wymiarach 10x10x21x21.
    - `real, dimension(11:20, -9:0, 0:20, -20:0) :: z, v, diff`: Deklaracja macierzy `z`, `v` i `diff` o określonych wymiarach.

2. **Inicjalizacja macierzy `y` i `z`**:
    - Macierze `y` i `z` są inicjalizowane wartościami 1.0 i 2.0 odpowiednio.

3. **Wykonanie operacji na macierzy `x`**:
    - Pętle `do` iterują po wszystkich wymiarach macierzy `x`.
    - W każdej iteracji wartość w macierzy `x` jest obliczana poprzez dodanie odpowiednich wartości z macierzy `v` i `z`.

4. **Wyświetlanie macierzy `x`**:
    - Po obliczeniach, program wyświetla zawartość macierzy `x`.

5. **Obliczenie różnicy między macierzami**:
    - Wykonuje się dodanie macierzy `y` i `z` i zapisuje wynik w macierzy `v`.
    - Oblicza się różnicę między macierzą `x` i `v` i zapisuje ją w macierzy `diff`.

6. **Wyświetlanie różnicy**:
    - Program wyświetla różnicę między macierzami `x` i `v`.

<br><br>

## Program 28
Program [`p28`](./Zadania/p28/p28.f95) wczytuje i wyświetla ciągi znaków za pomocą funkcji `read` i `print`.

### Szczegóły działania

1. **Deklaracja zmiennych**:
    - `character(len=6) :: a, b, c, d`: Deklaracja zmiennych typu `character` o długości 6.

2. **Wczytywanie ciągów znaków**:
    - Program prosi użytkownika o wprowadzenie ciągu znaków w formacie `123456789` i naciśnięcie klawisza ENTER.
    - Ciągi znaków są wczytywane do zmiennych `a`, `b`, `c`, `d` za pomocą funkcji `read`.

3. **Wyświetlanie ciągów znaków**:
    - Ciągi znaków są wyświetlane w dwóch różnych formatach za pomocą funkcji `print`:
        - Pierwszy format (`(5X, A8, 5X, A4, 5X, A, 5X, A6)`) wyświetla ciągi znaków w ustalonych kolumnach, oddzielając je spacjami.
        - Drugi format (`(5X, A, 5X, A, 5X, A, 5X, A1)`) wyświetla ciągi znaków bezpośrednio po sobie, oddzielając je spacjami.

<br><br>

## Program 29
Program [`p29`](./Zadania/p29/p29.f95) oblicza równanie prostej na podstawie dwóch punktów wprowadzonych przez użytkownika.

### Szczegóły działania

1. **Definicja typów**:
    - `type :: point; real :: x, y; end type point`: Definicja typu `point`, reprezentującego punkt w przestrzeni 2D.
    - `type :: line; real :: a, b, c; end type line`: Definicja typu `line`, reprezentującego równanie prostej w postaci ogólnej.

2. **Wczytywanie punktów**:
    - Program prosi użytkownika o wprowadzenie współrzędnych punktu `p1` i `p2`.
    - Wprowadzone wartości są wczytywane do zmiennych `p1` i `p2` typu `point` za pomocą funkcji `read`.

3. **Obliczanie równania prostej**:
    - Na podstawie wprowadzonych punktów obliczane są współczynniki `a`, `b`, `c` równania prostej w postaci ogólnej i zapisywane w zmiennej `p1_to_p2` typu `line`.
    - Współczynniki są obliczane zgodnie z równaniami linii prostych: `a = y2 - y1`, `b = x1 - x2`, `c = y2 * x1 - y1 * x2`.

4. **Wyświetlanie równania prostej**:
    - Program wyświetla równanie prostej w postaci ogólnej `ax + by + c = 0`, a także wartości współczynników `a`, `b` i `c`.

<br><br>

## Program 30
Program [`p30`](./Zadania/p30/p30.f95) ilustruje różne rodzaje zmiennych liczbowych i ich precyzję za pomocą wybranych kindów.

### Szczegóły działania

1. **Deklaracja zmiennych**:
    - `real :: a`: Zmienna typu `real`.
    - `double precision :: b`: Zmienna typu `double precision`.
    - `integer :: c`: Zmienna typu `integer`.
    - `logical :: d`: Zmienna typu `logical`.
    - `character :: e`: Zmienna typu `character`.

2. **Deklaracja zmiennych typu `real` z określonymi kindami**:
    - Zmienne `f`, `g`, `h`, `i`, `j`, `k` są typu `real` o różnych precyzjach, określonych przez wybrane kindy z użyciem `selected_real_kind`.
    - Parametry `p` i `r` określają liczbę cyfr znaczących oraz zakres liczb.

3. **Wyświetlanie kindów zmiennych**:
    - Program wyświetla kindy poszczególnych typów zmiennych za pomocą funkcji `kind`.

<br><br>

## Program 31
Program [`p31`](./Zadania/p31/p31.f95) demonstruje generowanie liczb losowych za pomocą funkcji `random_number` oraz inicjalizację ziarna generatora liczb losowych za pomocą procedury `init_random_seed`.

### Szczegóły działania

1. **Deklaracje i inicjalizacja ziarna**:
    - `integer, parameter :: rdp = selected_real_kind(15)`: Definicja parametru `rdp` określającego kind liczb zmiennoprzecinkowych o precyzji 15 cyfr.
    - `real(kind=rdp) :: x, xx`: Deklaracja zmiennych `x` i `xx` typu `real` o określonym kindzie.
    - `contains`: Sekcja zawierająca definicję procedury `init_random_seed`, która inicjalizuje ziarno generatora liczb losowych.

2. **Generowanie liczb losowych**:
    - Program generuje pięć par liczb losowych (`x` i `xx`) za pomocą funkcji `random_number` w pętli `do`.

3. **Inicjalizacja ziarna**:
    - Procedura `init_random_seed` inicjalizuje ziarno generatora liczb losowych przy użyciu funkcji `random_seed`.
    - Ziarno jest tworzone na podstawie bieżącego czasu zegara systemowego oraz dodatkowego przesunięcia.

<br><br>

## Program 32
Program [`p32`](./Zadania/p32/p32.f95) generuje macierz liczb losowych o wymiarach 5x5 za pomocą funkcji `random_number` oraz inicjalizuje ziarno generatora liczb losowych za pomocą procedury `init_random_seed`.

### Szczegóły działania

1. **Deklaracje i inicjalizacja ziarna**:
    - `real :: r(5,5)`: Deklaracja macierzy `r` o wymiarach 5x5 do przechowywania liczb losowych.
    - `contains`: Sekcja zawierająca definicję procedury `init_random_seed`, która inicjalizuje ziarno generatora liczb losowych.

2. **Generowanie macierzy liczb losowych**:
    - Macierz `r` jest wypełniana liczbami losowymi za pomocą funkcji `random_number`.

3. **Inicjalizacja ziarna**:
    - Procedura `init_random_seed` inicjalizuje ziarno generatora liczb losowych na podstawie bieżącego czasu zegara systemowego.

<br><br>

## Program 33
Program [`p33`](./Zadania/p33/p33.f95) oblicza przybliżoną wartość liczby Pi za pomocą metody Monte Carlo. Metoda ta polega na losowaniu punktów wewnątrz kwadratu i sprawdzaniu, ile z tych punktów znajduje się wewnątrz koła wpisanego w ten kwadrat. Stosunek liczby punktów wewnątrz koła do liczby wszystkich punktów jest przybliżeniem stosunku pola koła do pola kwadratu, co pozwala obliczyć przybliżoną wartość liczby Pi.

### Szczegóły działania

1. **Deklaracje zmiennych**:
    - `real(kind=rdp) :: xx, yy, rr, pi_moje, delta`: Deklaracje zmiennych używanych do przechowywania współrzędnych punktów, ich kwadratów, przybliżonej wartości Pi oraz błędu względnego.
    - `real :: x`: Zmienna pomocnicza do generowania liczb losowych.
    - `integer(kind=ipd) :: i, wewnatrz`: Licznik iteracji i liczba punktów wewnątrz koła.
    - `integer, parameter :: max_do = 1000000_ipd`: Maksymalna liczba iteracji.

2. **Generowanie punktów i obliczanie liczby punktów wewnątrz koła**:
    - W pętli `do i = 1, max_do` generowane są losowe współrzędne punktów `xx` i `yy`.
    - Dla każdego punktu obliczana jest odległość od początku układu współrzędnych: `rr = xx * xx + yy * yy`.
    - Jeśli odległość ta jest mniejsza lub równa 1, to punkt znajduje się wewnątrz koła, więc zwiększamy licznik `wewnatrz`.

3. **Obliczanie przybliżonej wartości liczby Pi**:
    - Przybliżona wartość liczby Pi jest obliczana jako stosunek liczby punktów wewnątrz koła do liczby wszystkich punktów, pomnożony przez 4.

4. **Obliczanie błędu względnego**:
    - Błąd względny jest obliczany jako różnica między prawdziwą wartością liczby Pi a przybliżoną wartością, podzielona przez prawdziwą wartość liczby Pi.

5. **Inicjalizacja ziarna generatora liczb losowych**:
    - Zawartość procedury `init_random_seed` jest identyczna jak w poprzednich programach.

<br><br>

## Program 34
Program [`p34`](./Zadania/p34/p34.f95) oblicza średnią arytmetyczną dwóch liczb za pomocą funkcji zdefiniowanej w programie. Funkcja ta przyjmuje dwa argumenty typu rzeczywistego i zwraca ich średnią arytmetyczną.

### Szczegóły działania

1. **Deklaracje zmiennych**:
    - `real :: a, b, c`: Deklaracje zmiennych używanych do przechowywania wartości wejściowych i średniej arytmetycznej.

2. **Interfejs funkcji**:
    - Zdefiniowany jest interfejs funkcji `mean`, która przyjmuje dwa argumenty rzeczywiste `x` i `y`, oraz zwraca wartość rzeczywistą - średnią arytmetyczną tych dwóch liczb.

3. **Wywołanie funkcji**:
    - W głównym ciele programu obliczana jest średnia arytmetyczna liczb `a` i `b` za pomocą funkcji `mean(a, b)` i przypisywana do zmiennej `c`.
    - Następnie wartość `c` jest wyświetlana na standardowym wyjściu.

4. **Funkcja `mean`**:
    - Funkcja `mean` przyjmuje dwa argumenty `x` i `y` typu rzeczywistego.
    - Oblicza ich średnią arytmetyczną jako `(x + y) / 2` i zwraca ją jako wynik funkcji.

<br><br>

## Program 35
Program [`p35`](./Zadania/p35/p35.f95) oblicza pierwiastki rzeczywiste z liczb za pomocą zdefiniowanej w programie funkcji `root`. Funkcja ta przyjmuje dwa argumenty: rangę pierwiastka oraz liczbę, z której ma zostać obliczony pierwiastek, a następnie zwraca obliczony pierwiastek.

### Szczegóły działania

1. **Deklaracje zmiennych**:
    - `real :: a, b, c, d, e, f`: Deklaracje zmiennych używanych do przechowywania wartości wejściowych i obliczonych pierwiastków.

2. **Interfejs procedury**:
    - Zdefiniowany jest interfejs procedury `root`, która oblicza pierwiastek rzeczywisty z danej liczby. Procedura ta przyjmuje dwa argumenty: rangę pierwiastka (`rank`) oraz liczbę (`x`) i zwraca obliczony pierwiastek (`y`).

3. **Wywołania procedury**:
    - W głównym ciele programu obliczane są kolejno pierwiastki:
        - Pierwiastek trzeciego stopnia z liczby `a`.
        - Pierwiastek czwartego stopnia z liczby `c`.
        - Pierwiastek dziesiątego stopnia z liczby `e`.
    - Obliczone pierwiastki są następnie wyświetlane na standardowym wyjściu.

4. **Procedura `root`**:
    - Procedura `root` oblicza pierwiastek z liczby `x` o zadanej randze `rank` za pomocą funkcji `exp` i `log`.
    - Obliczony pierwiastek jest przypisywany do zmiennej `y`.

<br><br>

## Program 36
Program [`p36`](./Zadania/p36/p36.f95) demonstruje użycie modułu `nasze_zmienne` do przechowywania zmiennych `rank`, `x` i `y`, które są używane do obliczania pierwiastków za pomocą procedury `root`. Procedura `root` oblicza pierwiastek z liczby `x` o zadanej randze `rank` i przypisuje go do zmiennej `y`.

### Szczegóły działania

1. **Moduł `nasze_zmienne`**:
    - Moduł ten zawiera deklaracje zmiennych `rank`, `x` i `y`, które są używane w całym programie.
    - Dzięki użyciu modułu, te zmienne są dostępne we wszystkich procedurach i programach, które korzystają z modułu.

2. **Program główny** (`p36`):
    - Używa modułu `nasze_zmienne`.
    - Wywołuje procedurę `root`, która oblicza pierwiastek 20-tej potęgi z liczby `x` i przypisuje go do zmiennej `y`.
    - Następnie wyświetla obliczony pierwiastek na standardowym wyjściu.

3. **Procedura `root`**:
    - Oblicza pierwiastek z liczby `x` o randze `rank` za pomocą funkcji `exp` i `log`.
    - Obliczony pierwiastek jest przypisywany do zmiennej `y`.

<br><br>

## Program 37
Program [`p37`](./Zadania/p37/p37.f95) oblicza największy element z tablicy `list`, który jest mniejszy lub równy zadanej liczbie `k`. Do tego celu wykorzystuje funkcję `Large` z modułu `zawiera_funkcje_Large`.

### Szczegóły działania

1. **Moduł `zawiera_funkcje_Large`**:
    - Zawiera funkcję `Large`, która przyjmuje listę liczb (`list`) i liczbę `k` jako argumenty.
    - Funkcja `Large` zwraca największy element z tablicy `list`, który jest mniejszy lub równy `k`.

2. **Program główny** (`p37`):
    - Wykorzystuje moduł `zawiera_funkcje_Large`.
    - W pętli `do` wczytuje rozmiar `n` tablicy `list`, jej wartości oraz liczbę `k`.
    - Następnie wywołuje funkcję `Large` i wyświetla jej wynik na standardowym wyjściu.
    - Proces jest powtarzany, dopóki użytkownik podaje dodatni rozmiar `n`. Po podaniu rozmiaru mniejszego lub równego zero pętla zostaje przerwana, a program kończy działanie.

3. **Funkcja `Large`**:
    - Szuka największego elementu w tablicy `list`, który jest mniejszy lub równy zadanej liczbie `k`.
    - Jeśli w tablicy `list` nie ma elementów mniejszych lub równych `k`, zwraca wartość `k`.

<br><br>

## Program 38
Program [`p38`](./Zadania/p38/p38.f95) oblicza normę wektora i sprawdza, czy norma przekracza określoną wartość graniczną. Do tego celu wykorzystuje procedurę `Norm` z modułu `zawiera_procedure_Norm`.

### Szczegóły działania

1. **Moduł `zawiera_procedure_Norm`**:
    - Zawiera procedurę `Norm`, która przyjmuje wektor `v` jako argument wejściowy.
    - Oblicza normę wektora `v` jako pierwiastek z sumy kwadratów jego składników.
    - Sprawdza, czy norma wektora przekracza określoną wartość graniczną (tutaj 1.0E5) i zwraca odpowiednią flagę logiczną.

2. **Program główny** (`p38`):
    - Wykorzystuje moduł `zawiera_procedure_Norm`.
    - Tworzy wektor `v` o określonych wartościach.
    - Wywołuje procedurę `Norm` dla wektora `v` i wyświetla wynik (normę wektora i flagę) na standardowym wyjściu.

<br><br>

## Program 39
Program [`p39`](./Zadania/p39/p39.f95) odczytuje macierz z pliku tekstowego, a następnie oblicza sumy wierszy, sumy kolumn oraz sumę wszystkich elementów tej macierzy. Wykorzystuje do tego procedurę `Summit` z modułu `zawiera_procedure_Summit`.

### Szczegóły działania

1. **Moduł `zawiera_procedure_Summit`**:
    - Zawiera procedurę `Summit`, która przyjmuje dwuwymiarową macierz jako argument wejściowy.
    - Oblicza sumy elementów w poszczególnych wierszach oraz kolumnach macierzy.
    - Oblicza sumę wszystkich elementów macierzy.

2. **Program główny** (`p39`):
    - Korzysta z modułu `zawiera_procedure_Summit`.
    - Otwiera plik tekstowy `x.txt`, z którego odczytuje rozmiar macierzy oraz jej zawartość.
    - Alokuje pamięć na potrzeby przechowywania macierzy.
    - Wywołuje procedurę `Summit` dla wczytanej macierzy i wyświetla wyniki sumowania na standardowym wyjściu.

<br><br>

## Program 40
Program [`p40`](./Zadania/p40/p40.f95) pobiera temperaturę w stopniach Fahrenheit (°F) od użytkownika, a następnie dokonuje konwersji tej temperatury na stopnie Celsjusza (°C). Wykorzystuje do tego własne procedury i funkcje zdefiniowane w module `moje_procedury_i_funkcje`.

### Szczegóły działania

1. **Moduł `moje_procedury_i_funkcje`**:
    - Zawiera trzy podprogramy: `input`, `temp_c` (funkcja) i `output`.
    - `input`: Pobiera temperaturę w stopniach Fahrenheit od użytkownika.
    - `temp_c`: Przyjmuje temperaturę w stopniach Fahrenheit jako argument wejściowy i zwraca ją w stopniach Celsjusza.
    - `output`: Przyjmuje temperaturę w stopniach Fahrenheit i jej odpowiednik w stopniach Celsjusza jako argumenty wejściowe i wyświetla obie temperatury na standardowym wyjściu w różnych formatach.

2. **Program główny** (`p40`):
    - Korzysta z modułu `moje_procedury_i_funkcje`.
    - Pobiera temperaturę w stopniach Fahrenheit od użytkownika za pomocą podprogramu `input`.
    - Wywołuje funkcję `temp_c` w celu przeliczenia temperatury na stopnie Celsjusza.
    - Wyświetla obie temperatury (w stopniach Fahrenheit i Celsjusza) za pomocą podprogramu `output`.

<br><br>

## Program 41
Program [`p41`](./Zadania/p41/p41.f95) korzysta z modułu `funkcja_korzysta_z_procedury`, który zawiera funkcję `module_function` oraz procedurę `module_subroutine`. Moduł ten definiuje również typ `new` oraz zmienną `x` typu `new`, która jest zainicjowana wartościami 1234 i 5678. Program wykorzystuje funkcję `module_function`, która z kolei korzysta z procedury `module_subroutine`, aby przekształcić wartości w zmiennej typu `new`.

### Szczegóły działania

1. **Moduł `funkcja_korzysta_z_procedury`**:
    - Zawiera typ `new`, zdefiniowany jako struktura z dwoma polami `j` i `k`.
    - Zawiera zmienną `x`, będącą instancją typu `new` zainicjowaną wartościami 1234 i 5678.
    - Definiuje funkcję `module_function`, która korzysta z procedury `module_subroutine` do modyfikacji wartości pola `j` i `k` w zmiennej typu `new`.
    - Zawiera procedurę `module_subroutine`, która zamienia wartości między dwoma zmiennymi typu `integer`.
    
2. **Program główny** (`p41`):
    - Wykorzystuje moduł `funkcja_korzysta_z_procedury`.
    - Wywołuje funkcję `module_function`, aby przekształcić wartości w zmiennej `exter`.
    - Definiuje funkcję `internal_function`, która zwraca wartość stałą `value`.
    - Wywołuje `internal_function`, aby przypisać wartość do zmiennej `inter`.

<br><br>

## Program 46
Program [`p46`](./Zadania/p46/p46.f95) oblicza największy wspólny dzielnik (NWD) dwóch liczb naturalnych za pomocą funkcji rekurencyjnej zdefiniowanej w module `zawiera_funkcje_rekursywna`.

### Opis algorytmu

- Funkcja `Euclid(i1, i2)` zdefiniowana w module `zawiera_funkcje_rekursywna` oblicza NWD dwóch liczb `i1` i `i2` za pomocą algorytmu Euklidesa.
- Algorytm ten wykorzystuje rekurencję, aby kontynuować dzielenie przez resztę z dzielenia, aż reszta będzie równa 0.
- Kiedy reszta jest równa 0, druga z dwóch dzielonych liczb jest zwracana jako największy wspólny dzielnik (NWD).

### Działanie programu

1. Program wczytuje dwie liczby naturalne `p` i `q` od użytkownika.
2. Wywołuje funkcję `Euclid(p, q)` zdefiniowaną w module `zawiera_funkcje_rekursywna`, aby obliczyć NWD tych dwóch liczb.
3. Wynik NWD jest wyświetlany na ekranie.

<br><br>

## Program 47
Program [`p47`](./Zadania/p47/p47.f95) analizuje dane z pliku tekstowego o nazwie `p47.txt`. Program wczytuje zawartość pliku wiersz po wierszu i wykonuje odpowiednie operacje w zależności od formatu danych.

### Opis algorytmu

- Program otwiera plik `p47.txt` i czyta jego zawartość wiersz po wiersz.
- Jeśli pierwszy znak wiersza to `C`, to program wyświetla resztę wiersza jako komentarz.
- Jeśli pierwszy znak wiersza jest pusty, to program interpretuje resztę wiersza jako zestaw danych liczbowych, które są zapisane jako 13 liczb zmiennoprzecinkowych.
- Program wywołuje funkcję `Calc(z, answer)`, zdefiniowaną w module `J11M`, aby obliczyć sumę kwadratów liczb ze zbioru `z`.
- Wynik obliczeń jest wyświetlany na ekranie.

### Działanie programu

1. Program wczytuje zawartość pliku `p47.txt`.
2. W zależności od zawartości każdego wiersza, program wykonuje odpowiednie operacje.
3. Dla wierszy zawierających dane liczbowe, program oblicza sumę kwadratów tych liczb i wyświetla wynik na ekranie.

<br><br>

## Program 48
Program [`p48`](./Zadania/p48/p48.f95) w języku Fortran demonstruje obsługę parametrów opcjonalnych w procedurach. Wykorzystuje moduł `parametry_opcjonalne`, który zawiera procedurę `Options` z parametrami opcjonalnymi.

### Opis algorytmu

- Moduł `parametry_opcjonalne` zawiera procedurę `Options`, która przyjmuje dwa opcjonalne parametry typu `character`.
- Wewnątrz procedury sprawdzane jest, czy dany parametr jest obecny za pomocą funkcji `present`.
- Jeśli parametr jest obecny, to jego wartość jest wyświetlana na ekranie.
- Jeśli parametr nie jest obecny, to jego wartość jest ustawiana na -1.
- Po przetworzeniu parametrów, procedura wyświetla długości parametrów na ekranie.

### Działanie programu

1. Program wywołuje procedurę `Options` z różnymi zestawami parametrów opcjonalnych.
2. Wynikiem działania programu jest wyświetlenie parametrów i ich długości na ekranie.

<br><br>

## Program 49
Program [`p49`](./Zadania/p49/p49.f95) wykorzystuje metodę sita Eratostenesa do znalezienia liczb pierwszych w danym zakresie.

### Metoda sita Eratostenesa

Metoda sita Eratostenesa jest jednym z najstarszych i najprostszych sposobów znajdowania liczb pierwszych w określonym zakresie. Algorytm polega na odfiltrowaniu liczb, które są wielokrotnościami innych liczb (z wyjątkiem samej siebie) w danym zakresie.

#### Zasada działania:
1. Tworzymy listę liczb całkowitych od 2 do n (gdzie n jest górną granicą przeszukiwanego zakresu).
2. Rozpoczynamy od pierwszej liczby w liście (2) i odfiltrowujemy jej wielokrotności poprzez ustawienie ich na 0.
3. Przechodzimy do kolejnej niezablokowanej liczby w liście i powtarzamy proces odfiltrowywania wielokrotności.
4. Kończymy, gdy wszystkie wielokrotności liczb pierwszych są zablokowane.

<br><br>

## Program 50
Program [`p50`](./Zadania/p50/p50.f95) służy do sortowania danych liczbowych z pliku wejściowego i zapisywania posortowanych danych do pliku wyjściowego.

### Działanie programu
1. Wczytywanie danych: Program wczytuje dane z pliku `"wejsciowe.txt"` do tablicy inputdata.
2. Sortowanie danych: Wywoływana jest procedura sort, która sortuje tablicę inputdata rosnąco.
3. Zapisywanie posortowanych danych: Posortowane dane są zapisywane do pliku "wyjsciowe.txt".

### Procedury
-  `minfind`: Ta funkcja znajduje indeks najmniejszej wartości w tablicy w określonym zakresie.
- `swap`: Ta procedura zamienia miejscami wartości dwóch zmiennych.

<br><br>

## Program 51
Program [`p51`](./Zadania/p51/p51.f95) definiuje moduł wektor, który zawiera typ vector reprezentujący wektor w trójwymiarowej przestrzeni. Moduł ten umożliwia dodawanie wektorów za pomocą operatorów + i .dodaj..

### Moduł wektor
- Typ `vector`: Typ vector definiuje trzy składowe: `x`, `y` i `z`, reprezentujące współrzędne wektora w przestrzeni trójwymiarowej.
- Parametry wektorów jednostkowych: Moduł zawiera stałe `i_`, `j_` i `k_`, które reprezentują wektory jednostkowe wzdłuż osi `x`, `y` i `z` odpowiednio.
- Operatory dodawania: Moduł zawiera interfejsy operatora dodawania `+` oraz niestandardowego operatora `.dodaj.`, które umożliwiają dodawanie wektorów.
- Funkcja `suma`: Funkcja `suma` przyjmuje dwa argumenty typu `vector` i zwraca ich sumę.
- Procedura `results`: Procedura `results` służy do wyświetlania wyników na standardowym wyjściu. Przyjmuje nagłówek (typu `character`) oraz wektor (typu `vector`) i wyświetla jego składowe.

### Program p51
- Inicjalizacja wektorów: Inicjalizowane są trzy wektory: `v1`, `v2` i `v3`.
- Wyświetlanie wektorów: Wywoływana jest procedura results do wyświetlenia współrzędnych każdego z trzech wektorów.
- Dodawanie wektorów: Przeprowadzane są operacje dodawania dwóch wektorów oraz dodawania wektora do wektora jednostkowego i do wektora zdefiniowanego przez stałą.

<br><br>

## Program 52
Program [`p52`](./Zadania/p52/p52.f95) oblicza wartości funkcji trygonometrycznych (sinus, cosinus i tangens) dla kątów podanych w stopniach, minutach i sekundach. Wykorzystuje moduł universal_constants, który zawiera wartość liczby pi.

### Moduł universal_constants
- Stała `pi`: Moduł definiuje stałą pi o wartości `3.1415926536`.

### Funkcja `trig_fun_degrees`
- **Opis**: Funkcja `trig_fun_degrees` przyjmuje funkcję trygonometryczną (sin, cos lub tan) oraz kąt podany w stopniach, minutach i sekundach, a zwraca wartość funkcji trygonometrycznej dla tego kąta.
- **Argumenty**:
  - `trig_fun`: Funkcja trygonometryczna (sin, cos lub tan).
  - `degrees`, `minutes`, `seconds`: Odpowiednio stopnie, minuty i sekundy kąta.

### Program p52
- **Pętla główna**: Program wykorzystuje pętlę do wczytywania kolejnych kątów i obliczania ich funkcji trygonometrycznych.
- **Wczytywanie danych**: Użytkownik podaje kąt w stopniach, minutach i sekundach.
- **Obliczenia**: Dla podanego kąta obliczane są wartości funkcji trygonometrycznych (sin, cos i tan) za pomocą funkcji `trig_fun_degrees`.
- **Wyjście z pętli**: Użytkownik decyduje, czy chce podać kolejny kąt. Jeśli odpowiedź jest inna niż `"Y"` lub `"y"`, program kończy działanie.

<br><br>

# Programy zaliczeniowe

## [Program 1](./Zadania/programy_zaliczeniowe/p1/p1.f95)

### Polecenie
Proszę utworzyć edytorem tekstu plik zawierający 15 liczb naturalnych. Wczytać te liczby do programu, policzyć osobno sumę liczb parzystych i nieparzystych dla dowolnego zestawu wczytanych liczb.

### Szczegóły działania
1. Wczytanie liczb z pliku:
   - Program otwiera plik `"numbers.txt"` do odczytu.
   - Następnie wczytuje 15 liczb z pliku i zapisuje je w tablicy `numbers`.
2. Obliczenie sum:
   - W pętli do sprawdza, czy każda wczytana liczba jest parzysta czy nieparzysta.
   - Suma liczb parzystych jest obliczana przez dodawanie parzystych liczb do zmiennej `even_sum`.
   - Suma liczb nieparzystych jest obliczana przez dodawanie nieparzystych liczb do zmiennej `odd_sum`.
3. Wyświetlenie wyników:
   - Program wyświetla sumę liczb parzystych i nieparzystych.

<br><br>

## [Program 2](./Zadania/programy_zaliczeniowe/p2/p2.f95)

### Polecenie
 Program obliczający pierwiastki równania kwadratowego: 𝑎x<sup>2</sup> + 𝑏x + 𝑐 = 0. Współczynnik równania 𝑎, 𝑏, 𝑐 wczytujemy z klawiatury.

### Szczegóły działania
1. Wczytywanie współczynników:
   - Program prosi użytkownika o podanie współczynników a, 𝑏 i 𝑐.
2. Obliczanie delty:
   - Delta (Δ) jest obliczana jako 𝑏<sup>2</sup>−4𝑎𝑐.
3. Rozwiązanie równania:
   - Jeśli delta jest większa od zera, to równanie ma dwa różne rzeczywiste pierwiastki, które są obliczane przy użyciu wzoru kwadratowego.
   - Jeśli delta wynosi zero, to równanie ma dwa pierwiastki, które są równe i również obliczane przy użyciu wzoru kwadratowego.
   - W przeciwnym razie, gdy delta jest mniejsza od zera, pierwiastki są zespolone i różne.
4. Wyświetlanie wyników:
   - Program wyświetla pierwiastki równania w zależności od przypadku.

<br><br>

## [Program 3](./Zadania/programy_zaliczeniowe/p3/p3.f95)

### Polecenie
Program obliczający liczbę samogłosek we wczytanym z pliku słowie. 
- Program 
powinien zawierać:
  - określenie długości wczytanego łańcucha znaków
  - moduł zawierający procedurę wyznaczającą liczbę samogłosek 
  - instrukcję warunkową wielowartościową CASE

### Szczegóły działania
1. Wczytywanie słowa z pliku:
    - Program otwiera plik `'word.txt'` i wczytuje z niego słowo.
2. Liczenie samogłosek:
    - Funkcja `count_vowels` z modułu `vowel_count` przyjmuje słowo jako argument i zwraca liczbę samogłosek w tym słowie.
    - Wykorzystuje pętlę do iteracji przez każdy znak w słowie i sprawdza, czy jest to samogłoska, zgodnie z zadeklarowanymi warunkami.
3. Wyświetlanie wyników:
    - Program wyświetla wczytane słowo oraz liczbę samogłosek w nim.

<br><br>

## [Program 4](./Zadania/programy_zaliczeniowe/p4/p4.f95)

### Polecenie
Program obliczający rekurencyjnie sumę liczb naturalnych od N1 do N2. 
- Program powinien zawierać:
   - procedurę rekurencyjną
   - deklaracje zmiennych z określoną precyzją (KIND)
   - sformatowany wydruk rezultatu z tekstem

### Szczegóły działania
1. Wczytywanie danych:
    - Program wczytuje dwie liczby naturalne `N1` i `N2` od użytkownika.
2. Sprawdzanie poprawności danych:
    - Sprawdzane jest, czy `N1` jest mniejsze lub równe `N2`. Jeśli nie, program wyświetla odpowiedni komunikat i kończy działanie.
3. Obliczanie sumy:
    - Funkcja rekurencyjna suma oblicza sumę liczb naturalnych od `N1` do `N2`.
    - Jeśli `N1` jest większe od `N2`, funkcja zwraca 0.
    - W przeciwnym przypadku funkcja wywołuje samej siebie dla następnej liczby naturalnej (większej o 1) i dodaje ją do `N1`.
4. Wyświetlanie wyników:
    - Program wyświetla obliczoną sumę liczb naturalnych od `N1` do `N2`.

<br><br>

## [Program 5](./Zadania/programy_zaliczeniowe/p5/p5.f95)

### Polecenie
Proszę policzyć kwotę końcową lokaty 1000 PLN założonej na 30 lat, roczne oprocentowanie wynosi 2%, odsetki są co roku kapitalizowane, tj. dodawane do kwoty podlegającej dalszemu oprocentowaniu. Proszę obliczenia wykonać w pętli, bez stosowania wzoru na procent składany.

### Szczegóły działania
1. Inicjalizacja zmiennych:
    - Zmienne `kapital`, `stopa_procentowa` i `lata` są inicjowane odpowiednimi wartościami.
    - `kapital` to początkowy kapitał na lokacie (1000 w formacie real(8)).
    - `stopa_procentowa` to stawka procentowa (2% w formacie real(8)).
    - `lata` określa liczbę lat, przez które lokata będzie trwała (30 lat).
2. Obliczanie wartości lokaty:
    - Program wykonuje pętlę do dla każdego roku lokaty.
    - W każdej iteracji, wartość kapitału jest aktualizowana przez pomnożenie przez wyrażenie `(1.0_8 + stopa_procentowa)`, co odpowiada dodaniu do kapitału odsetek.
3. Wyświetlanie wyniku:
    - Po zakończeniu pętli, program wyświetla kwotę końcową lokaty po określonej liczbie lat.

<br><br>

## [Program 6](./Zadania/programy_zaliczeniowe/p6/p6.f95)

### Polecenie
Proszę oszacować pierwiastki (miejsca zerowe) dla funkcji f(x) = 𝑥<sup>3</sup> −3𝑥<sup>2</sup> − 4𝑥 + 12 w zakresie x ∈ (-3,4) następującą metoda numeryczną. Dzielimy obszar poszukiwania na 7000 punktów na osi x i skanujemy z krokiem co 0.001. Poszukujemy miejsc, w którym nasza funkcja zmienia znak – to przecięcie wykresuprzez oś X.

### Szczegóły działania
1. Inicjalizacja zmiennych:
    - Zmienne `x`, `dx`, `f1` i `f2` są zadeklarowane jako zmienne typu `real(8)`, a zmienne `i` i `n` jako zmienne typu `integer`.
    - Zdefiniowane są parametry `x_min`, `x_max` i `krok`, które określają odpowiednio minimalną wartość x, maksymalną wartość x i krok iteracji.
2. Obliczanie liczby iteracji:
    - Liczba iteracji `n` jest obliczana na podstawie parametrów `x_min`, `x_max` i `krok`.
3. Iteracja w poszukiwaniu pierwiastków:
    - Program wykonuje pętlę do dla każdej wartości `x` z przedziału `[x_min, x_max]`.
    - Dla każdej iteracji obliczane są wartości funkcji `f1` i `f2` dla kolejnych wartości `x` i `x + krok`.
    - Jeśli iloczyn `f1 * f2` jest ujemny lub równy zeru, oznacza to, że znaleziono przybliżony pierwiastek.
4. Wyświetlanie wyniku:
    - W momencie, gdy iloczyn `f1 * f2` jest ujemny lub równy zeru, program wyświetla zakres, w którym pierwiastek jest przybliżony.