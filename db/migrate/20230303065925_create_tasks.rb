class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :description
      t.datetime :due_date
      t.boolean :completed, default: false
      t.references :project, foreign_key: true, null: false
      t.timestamps
    end
  end
end
