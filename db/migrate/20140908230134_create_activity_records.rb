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
