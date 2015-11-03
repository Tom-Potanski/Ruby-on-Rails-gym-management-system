class CreateActivities < ActiveRecord::Migration
  def change
    # S tworzymy tabele o podanej nazwie i dodajemy określone kolumny (tutaj nazwę i opis)
    create_table :activities do |t|
      t.string :name
      t.string :description

      #S dodanie znacznika czasowego, przydatne w późniejszym zarządzaniu danymi
      t.timestamps

    end
  end
end
