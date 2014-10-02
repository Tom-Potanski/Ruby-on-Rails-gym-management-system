
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class AddRememberTokenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token
  end
end
