require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "should create blog" do
    visit blogs_url
    click_on "New blog"

    fill_in "Auteur", with: @blog.auteur
    fill_in "Categorie", with: @blog.categorie
    fill_in "Contenu", with: @blog.contenu
    fill_in "Date", with: @blog.date
    fill_in "Réalisateur", with: @blog.réalisateur
    fill_in "Sortie", with: @blog.sortie
    fill_in "Titre", with: @blog.titre
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "should update Blog" do
    visit blog_url(@blog)
    click_on "Edit this blog", match: :first

    fill_in "Auteur", with: @blog.auteur
    fill_in "Categorie", with: @blog.categorie
    fill_in "Contenu", with: @blog.contenu
    fill_in "Date", with: @blog.date
    fill_in "Réalisateur", with: @blog.réalisateur
    fill_in "Sortie", with: @blog.sortie
    fill_in "Titre", with: @blog.titre
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog" do
    visit blog_url(@blog)
    click_on "Destroy this blog", match: :first

    assert_text "Blog was successfully destroyed"
  end
end
