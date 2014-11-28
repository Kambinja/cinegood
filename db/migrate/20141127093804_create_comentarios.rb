class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :cartaz_id
      t.text :body

      t.timestamps
    end
  end
end
