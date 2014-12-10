class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :link
      t.string :title
      t.string :release_date

      t.timestamps
    end
  end
end
