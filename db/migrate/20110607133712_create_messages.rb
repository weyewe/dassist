class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.references :user
      t.references :project
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
