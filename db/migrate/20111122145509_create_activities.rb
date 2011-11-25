class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.datetime :initialdate
      t.datetime :enddate
      t.text :description
      t.integer :status_id
      t.integer :priority_id

      t.timestamps
    end
  end
end
