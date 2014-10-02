
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class CreateActivityRecords < ActiveRecord::Migration
  def change
    create_table :activity_records do |t|
      t.integer :activity_id
      t.string :coach_id_integer
      t.integer :user_id

      t.timestamps
    end
  end
end
