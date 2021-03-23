class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.date :work_since
      t.string :post

      t.timestamps
    end
  end
end
