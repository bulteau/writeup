class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :title
      t.date :date
      t.string :owner
      t.references :meeting

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
