## Ćwiczenia 2 - API

### Warto zapamiętać
- akcje w kontrolerach powinny być zgodne z RESTem
- parametr `format` pozwala zaprezentować dany resource w innym formacie (html/json/xml itp.)
- statusy http: (`2xx` ok, `3xx` redirect, `4xx` client error, `5xx` server error)
- nagłówek - różne metadane np. `Content-Type` czy `User-Agent`
- przykładowe narzędzie do wykonywania requestów http - Postman

### Zadania

1. | 2p | Dodaj możliwość edycji użytkownika przez API.

2. | 2p | Korzystając ze [strong paramsów](http://edgeguides.rubyonrails.org/action_controller_overview.html#strong-parameters)
upewnij się, przy tworzeniu oraz edycji użytkownika można ustawić tylko pola `email` i `admin`.

3. | 4p | Dodaj możliwość usuwania użytkownika przez API. Dodatkowo:
  - jeśli usuwany użytkownik jest adminem, pozwól na jego usunięcie tylko jeśli będzie przekazany parametr `force`
  - uzależnij wynikowy status od tego czy użytkownik został faktycznie usunięty (`200` lub `401`)

4. | 2p | Stwórz kontroler `UserCounts` z jedną akcją `show` zwracającą aktualną ilość `User`ów.

#### Powodzenia!
