class CreateTodos < ActiveRecord::Migration[5.1]
  def change
    create_table :todos do |t|
      t.string :content
      t.boolean :completed
      t.belongs_to :user

      t.timestamps
    end
  end
end
