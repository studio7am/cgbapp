class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :dwnld

      t.timestamps
    end
  end
end
