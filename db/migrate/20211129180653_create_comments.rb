class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :prj_id
      t.string :marka
      t.string :urun

      t.timestamps
    end
  end
end
