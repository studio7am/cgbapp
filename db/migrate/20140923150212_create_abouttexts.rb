class CreateAbouttexts < ActiveRecord::Migration
  def change
    create_table :abouttexts do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
