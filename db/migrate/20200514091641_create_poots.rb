class CreatePoots < ActiveRecord::Migration[6.0]
  def change
    create_table :poots do |t|
      t.string :item
      t.string :feature
      t.string :location
      t.string :deliver
      t.string :name
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
