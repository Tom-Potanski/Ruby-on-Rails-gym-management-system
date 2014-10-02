#A: MS
# każda funkcja opisuje osobną stronę statyczną. Jak sama nazwa wskazuje, nie pobieramy danych z bazy i nie
# przeprowadzamy obliczeń. RoR automatycznie przekierowuje do powiązanego z funkcją widoku.

# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.
class StaticPagesController < ApplicationController
  #S str. główna
  def home
  end

  def help
  end

  #S strona z opisem
  def about
  end
end
