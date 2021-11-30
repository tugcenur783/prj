class CreateProjes < ActiveRecord::Migration[5.2]
  def change
    create_table :projes do |t|
      t.string :marka
      t.string :urun

      t.timestamps
    end
  end
end
