class CreateOtds < ActiveRecord::Migration
  def change
    create_table :otds do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
