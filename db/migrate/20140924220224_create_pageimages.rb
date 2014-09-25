class CreatePageimages < ActiveRecord::Migration
  def change
    create_table :pageimages do |t|
      t.string :name
      t.string :pgimg

      t.timestamps
    end
  end
end
