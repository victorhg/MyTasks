class CreateAppconfigs < ActiveRecord::Migration
  def change
    create_table :appconfigs do |t|
      t.string :description
      t.string :value

      t.timestamps
    end
  end
end
