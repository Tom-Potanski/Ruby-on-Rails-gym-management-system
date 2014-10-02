
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      # t.string :password_hash
      # t.string :password_salt

      t.timestamps
    end
  end
end
