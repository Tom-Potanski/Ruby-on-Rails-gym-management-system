class CreateActivityRecord2s < ActiveRecord::Migration
  def change
    create_table :activity_record2s do |t|
      t.references :user, index: true
      t.references :coach, index: true
      t.references :weekday, index: true
      t.integer :start_time

      t.timestamps
    end
  end
end
