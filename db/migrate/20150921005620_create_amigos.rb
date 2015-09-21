class CreateAmigos < ActiveRecord::Migration
  def change
    create_table :amigos do |t|
      t.string :name
      t.text :last_talked_about
      t.text :description
      t.datetime :last_contacted
      t.string :type
      t.string :email
      t.integer :phone_number
      t.date :birthday
      t.text :address
      t.user_id :integer

      t.timestamps null: false
    end
  end
end
