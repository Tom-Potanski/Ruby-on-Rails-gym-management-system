#A: MS
# każda funkcja opisuje osobną stronę statyczną. Jak sama nazwa wskazuje, nie pobieramy danych z bazy i nie
# przeprowadzamy obliczeń. RoR automatycznie przekierowuje do powiązanego z funkcjią widoku.

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
