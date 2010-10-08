class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.references :project
      t.string :name
      t.boolean :closed
      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
