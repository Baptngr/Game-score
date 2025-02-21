class CreateDays < ActiveRecord::Migration[8.0]
  def change
    create_table :days do |t|
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
