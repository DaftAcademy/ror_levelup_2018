# Próbujemy dostać się do zabezpieczonej sieci, która wymaga kodu oraz sumy kontrolnej.
# Udało nam się przechwycić ciąg danych, który wystarczy by je uzyskać, ale musimy odpowiednio go spreparować:
# - kod jest połączeniem wszystkich napotkanych liter alfabetu,
# - kolejność znaków w kodzie jest przeciwna do tej z danych wejściowych,
# - każda samogłoska w kodzie jest zmieniona na wielką a spółgłoska na małą literę,
# - suma kontrolna jest sumą wszystkich napotkanych cyfr.

# Zmodyfikuj klasę Logger, tak by:
# 1. Metoda generate zwracała obiekt klasy Logger z wygenerowanym kodem i sumą kontrolną
# 2. Kod oraz suma kontrolna były publicznie dostępne na tym obiekcie
# 3. Konstruktor przyjmował dowolną ilość argumentów i traktował kolejne jako kontynuacja ciągu wejściowego

class Logger

  def initialize input
    @input = input
  end

  def generate
  end
end

# Przykłady:

logger = Logger.new('1a b23DCd EF4 5').generate
logger.code == 'fEdcdbA'
logger.checksum == 15

multi_logger = Logger.new('3 (#dui-4', '', 'VY 10x][').generate
multi_logger.code == 'xYvIUd'
multi_logger.checksum == 8
