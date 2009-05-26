class AddFulltextIndex < ActiveRecord::Migration
  def self.up
    add_index :items, [:name,:model,:category,:serial_number], :name=>"items_index"
  end

  def self.down
    remove_index :items, :name=>"items_index"
  end
end
