class CreateActivityRecord2s < ActiveRecord::Migration
  def change
    create_table :activity_record2s do |t|
      # S mówi, że w danej tabeli istnieje klucz obcy na daną inną tabele, zakładamy ponadto indeks na tą kolumnę, co przyspiesz wyszukiwanie
      # po danym kluczu obcym. Nazwa kolumny z tym kluczem, to nazwa tabeli + _id
      t.references :user, index: true
      t.references :coach, index: true
      t.references :weekday, index: true
      t.integer :start_time

      t.timestamps
    end
  end
end
