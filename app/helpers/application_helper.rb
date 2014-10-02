#A: MS
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.

module ApplicationHelper


  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Twoja siłownia, online | Małgorzata Szwed"
    if page_title.empty?
      base_title
    else
      #S następuje tu interpolacja (połączenie) napisów. Wynik identyczny, jak przy konkatenacji - różnica polega na konstrukcji składniowej
      "#{base_title} | #{page_title}"
    end
  end

end
