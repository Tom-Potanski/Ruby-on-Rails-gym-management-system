
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class AddIndexToUsersEmail < ActiveRecord::Migration
  # S zmiana w bazie danych, tutaj: dodanie indeksu w konkretnej tabeli, na konkretną kolumne i zastosowanie wymogu unikalności
  def change
    add_index :users, :email, unique: true
  end
end
