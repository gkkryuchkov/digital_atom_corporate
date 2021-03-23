class CreateSimpleFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :simple_files do |t|
      t.string :name
      t.text :desc
      t.integer :category

      t.timestamps
    end
  end
end
