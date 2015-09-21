class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :name
      t.text :last_talked_about
      t.text :description
      t.datetime :last_contacted
      t.string :category
      t.string :email
      t.integer :phone_number
      t.date :birthday
      t.text :address
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
