class AddIndexToUsersEmail < ActiveRecord::Migration
  # S zmiana w bazie danych, tutaj: dodanie indeksu w konkretnej tabeli, na konkretną kolumne i zastosowanie wymogu unikalności
  def change
    add_index :users, :email, unique: true
  end
end
