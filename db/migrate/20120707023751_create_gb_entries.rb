class CreateGbEntries < ActiveRecord::Migration
  def change
    create_table :gb_entries do |t|
      t.string :name
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
