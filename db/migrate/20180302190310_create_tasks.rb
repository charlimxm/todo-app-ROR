class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :date
      t.boolean :complete, default: false

      t.timestamps
    end
  end
end