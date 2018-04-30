## Ćwiczenia 3 - API v2

### Warto zapamiętać
- bardzo ważne jest **testowanie** swoich rozwiązań!
- serializery skupiają kod związany z formatowaniem danych modeli
- `render json: model` będzie szukać domyślnego `ModelSerializer`
- `before_action` i pochodne służą do wykonania kodu wspólnego dla wielu akcji
- metodami tymi bardzo dobrze się kontroluje flow (przerwanie/przekierowanie)
- memoizacja jest przydatna do uporządkowania kontrolera

### Zadania

1. | 2p | Popraw poniższe akcje kontrolera tak, by zwracały odpowiednie statusy i zserializowane dane:
  - `create` zwraca `201` i usera lub `422` i błędy
  - `destroy` zwraca `204`, nie przewidujemy braku możliwości usunięcia (jak będzie błąd to `500`)

2. | 2p | Zmień serializer `UserSerializer` w taki sposób by zwracał:
  - zawsze pola `email` i `admin`
  - `email_domain` tylko gdy user jest adminem

3. | 2p | Zmień serializer `UserErrorsSerializer` w taki sposób by zwracał:
  - ilość błędów (nie błędnych atrybutów)
  - czy błąd wystąpił podczas tworzenia czy edycji

4. | 4p | Dodaj modelowi `User` relację "z samym sobą" jako `manager`:
  - skorzystaj z `belongs_to`, pozwól być opcjonalnym
  - wypełnij odpowiednio migrację (`belongs_to` albo `references`)
  - dodaj do `UserSerializera` domyślnie zserializowanego managera

#### Powodzenia!
