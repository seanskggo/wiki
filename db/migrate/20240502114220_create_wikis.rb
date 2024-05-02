class CreateWikis < ActiveRecord::Migration[7.1]
  def change
    create_table :wikis do |t|
      t.string :title
      t.string :description
      t.string :link
      t.string :author

      t.timestamps
    end
  end
end
