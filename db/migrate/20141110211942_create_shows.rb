class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :venue
      t.timestamp :date
      t.string :support
      t.string :address
      t.string :price
      t.string :url

      t.timestamps
    end
  end
end
