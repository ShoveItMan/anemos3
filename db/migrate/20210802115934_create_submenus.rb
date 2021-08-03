class CreateSubmenus < ActiveRecord::Migration[6.1]
  def change
    create_table :submenus do |t|
      t.string :title
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
