
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class CreateActivities < ActiveRecord::Migration
  def change
    # S tworzymy tabele o podanej nazwie i dodajemy określone kolumny (tutaj nazwę i opis)
    create_table :activities do |t|
      t.string :name
      t.string :description

      #S dodanie znacznika czasowego, przydatne w późniejszym zarządzaniu danymi
      t.timestamps

    end
  end
end
