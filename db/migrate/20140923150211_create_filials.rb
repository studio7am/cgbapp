class CreateFilials < ActiveRecord::Migration
  def change
    create_table :filials do |t|
      t.string :name
      t.string :pn
      t.string :vt
      t.string :sr
      t.string :ch
      t.string :pt
      t.string :sb
      t.string :vs

      t.timestamps
    end
  end
end
