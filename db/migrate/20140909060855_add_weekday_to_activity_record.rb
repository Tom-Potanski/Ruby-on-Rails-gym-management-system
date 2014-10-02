
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014

# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class AddWeekdayToActivityRecord < ActiveRecord::Migration
  def change
    add_column :activity_records, :weekday_id, :integer
    add_column :activity_records, :start_time, :integer
  end
end
