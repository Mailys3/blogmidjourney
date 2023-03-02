class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :titre
      t.text :contenu
      t.datetime :date
      t.string :réalisateur
      t.string :sortie
      t.string :categorie
      t.string :auteur

      t.timestamps
    end
  end
end
