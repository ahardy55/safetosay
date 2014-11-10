class CreateNewsUpdates < ActiveRecord::Migration
  def change
    create_table :news_updates do |t|

      t.string :content
      t.string :title

      t.timestamps
    end
  end
end
