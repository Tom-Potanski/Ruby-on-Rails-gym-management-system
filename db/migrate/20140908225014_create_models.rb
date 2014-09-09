class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :weekday
      t.string :name

      t.timestamps
    end
  end
end
