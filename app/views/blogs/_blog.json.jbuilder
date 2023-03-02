json.extract! blog, :id, :titre, :contenu, :date, :réalisateur, :sortie, :categorie, :auteur, :created_at, :updated_at
json.url blog_url(blog, format: :json)
