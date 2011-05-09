class CreateWords < ActiveRecord::Migration
  def self.up
    create_table :words do |t|

      t.string :korean
      t.string :english
      t.integer :function
      t.string  :note
      t.timestamps
    end
  end

  def self.down
    drop_table :words
  end
end
