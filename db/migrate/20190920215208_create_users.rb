class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :lastname
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
