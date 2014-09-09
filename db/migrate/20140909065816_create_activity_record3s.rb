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
