class CreateCartazs < ActiveRecord::Migration
  def change
    create_table :cartazs do |t|
      t.string :imagem
      t.string :titulo
      t.text :sinopse
      t.string :cinema

      t.timestamps
    end
  end
end
