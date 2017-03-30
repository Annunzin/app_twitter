class CreateTwaats < ActiveRecord::Migration[5.0]
  def change
    create_table :twaats do |t|
      t.string :content
      t.string :img_url

      t.timestamps
    end
  end
end
