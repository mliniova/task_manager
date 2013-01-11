class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :project_id
      t.integer :priority
      t.timestamp :deadline
      t.boolean :done

      t.timestamps
    end
  end
end
