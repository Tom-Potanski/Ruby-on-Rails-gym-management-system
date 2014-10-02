
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class CreateActivityRecord3s < ActiveRecord::Migration
  def change
    create_table :activity_record3s do |t|
      t.references :user, index: true
      t.references :coach, index: true
      t.references :weekday, index: true
      t.integer :start_time
      t.references :activity, index: true

      t.timestamps
    end
  end
end
