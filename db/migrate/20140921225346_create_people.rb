class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :content
      t.string :avatar

      t.timestamps
    end
  end
end
