
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class AddPasswordDigestToUsers < ActiveRecord::Migration
  def change
    # S dodanie kolumny do danej tabeli, określenie nazwy kolumny i typu przechowywanych danych
    add_column :users, :password_digest, :string
  end
end
