class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.date :deadline
      t.boolean :done

      t.timestamps null: false
    end
  end
end
