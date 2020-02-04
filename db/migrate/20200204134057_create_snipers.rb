class CreateSnipers < ActiveRecord::Migration[5.2]
  def change
    create_table :snipers do |t|
      t.string :title
      t.string :language
      t.string :contents

      t.timestamps
    end
  end
end
