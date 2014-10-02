
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


module StaticPagesHelper

  def current_active_menu(active_menu)
    base_title = ""
    if active_menu.empty?
      base_title
    else
      active_menu
    end
  end

end
