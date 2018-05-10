## Ćwiczenia 4 - Service Object

### Warto zapamiętać
- (ponownie) bardzo ważne jest **testowanie** swoich rozwiązań!
- z callbacków korzystamy do akcji związanych z integralnością danych danego modelu
- z service objectów korzystamy do obsługi konkretnego przypadku użycia (np. rejestracja użytkownika)
- z concernów korzystamy do współdzielenia funkcjonalności między modelami lub między kontrolerami

### Zadania

1. | 3p | Zmodyfikuj model `Post` tak, by przy tworzeniu zapisywał imię tworzącego go użytkownika jako `name`:
  - dodaj migrację (pamiętaj o istniejących już w bazie rekordach)
  - skorzystaj z odpowiedniego callbacka

2. | 3p | Stwórz service object, który podanemu użytkownikowi tworzy startowy post:
  - tworzy go tylko jeśli użytkownik nie ma żadnych postów
  - skorzystaj z tego serwisu w `UserGenerator`

3. | 4p | Stwórz concern `Previewable`, który wyświetla dane o obiekcie za pomocą metod `preview`:
  - klasowa w następujący sposób:
    ```
    User.preview #=> "User | name, token"
    ```
  - instancyjna w następujący sposób:
    ```
    User.first.preview #=> "User 1 | name: tomek, token: 123456789"
    ```
  - wyświetl wszystkie atrybuty, nie licząc `id`, `created_at` oraz `updated_at`
  - wydziel blacklistowane atrybuty tak, by były konfigurowalne z jednego miejsca w module

#### Powodzenia!
