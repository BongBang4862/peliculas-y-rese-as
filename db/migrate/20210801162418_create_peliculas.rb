class CreatePeliculas < ActiveRecord::Migration[6.0]
  def change
    create_table :peliculas do |t|
      t.string :name
      t.string :genero

      t.timestamps
    end
  end
end
