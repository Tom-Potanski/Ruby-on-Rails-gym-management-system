class AddEmailToCoaches < ActiveRecord::Migration
  def change
    add_column :coaches, :email, :string
  end
end
