
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class CreateDiets < ActiveRecord::Migration
  def change
    create_table :diets do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
