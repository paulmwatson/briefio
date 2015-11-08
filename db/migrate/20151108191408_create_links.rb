class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :title
      t.string :thumbnail_url
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
