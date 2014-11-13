class CreateNewsUpdates < ActiveRecord::Migration
  def change
    create_table :news_updates do |t|

      t.text :content, :limit => nil
      t.string :title

      t.timestamps
    end
  end
end
