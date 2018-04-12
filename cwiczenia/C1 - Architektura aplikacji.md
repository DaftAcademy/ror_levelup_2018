## Ćwiczenia 1 - Architektura aplikacji

### Warto zapamiętać
- indeksy przyśpieszają wyszukiwanie rekordów po określonych polach
- migracje powinny być możliwie zawsze odwracalne
- przy operacjach na modelach w migracjach należy stubowac modele oraz korzystane metody własne

### Zadania

1. | 1p | Sklonuj bądź odtwórz projekt z pierwszych zajęć (https://ide.c9.io/daftcode/levelup2018_c1).

2. | 1p | Dodaj modelowi `User` atrybut `token` typu `string`. Wykonaj migrację.

3. | 2p | W modelu `User` dodaj walidację, która upewni się że `token` istnieje oraz jest dłuższy niż 3 znaki.

4. | 1p | Dodaj do pliku `seeds.rb` drugiego użytkownika, stwórz mu jakiś `token`. Wykonaj seedowanie.

5. | 4p | Dodaj oraz wykonaj migrację, która:
  - zabroni polu `token` być `null`
  - nałoży na pole `token` *unikalny* index
  - usunie wszystkich użytkowników nie mających tokena

6. | 1p | Co należy jeszcze poprawić? Zrób to.

#### Powodzenia!
