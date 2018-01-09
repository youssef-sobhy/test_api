class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :profile_picture
      t.string :password_digest

      t.timestamps
    end
  end
end
