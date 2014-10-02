
# Projekt indywidualny,
# Małgorzata Szwed
# 2 rok
# Nr indeksu: 69826
# Elektroniczny system obsługi siłowni: Twoja siłownia, online
# 16 września 2014
#
# Plik został zmodyfikowany/utworzony na cele uczelniane/potrzeby projektu.


class ActivityRecord3 < ActiveRecord::Base
  belongs_to :user
  belongs_to :coach
  belongs_to :weekday
  belongs_to :activity
end
