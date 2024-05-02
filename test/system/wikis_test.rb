require "application_system_test_case"

class WikisTest < ApplicationSystemTestCase
  setup do
    @wiki = wikis(:one)
  end

  test "visiting the index" do
    visit wikis_url
    assert_selector "h1", text: "Wikis"
  end

  test "should create wiki" do
    visit wikis_url
    click_on "New wiki"

    fill_in "Author", with: @wiki.author
    fill_in "Description", with: @wiki.description
    fill_in "Link", with: @wiki.link
    fill_in "Title", with: @wiki.title
    click_on "Create Wiki"

    assert_text "Wiki was successfully created"
    click_on "Back"
  end

  test "should update Wiki" do
    visit wiki_url(@wiki)
    click_on "Edit this wiki", match: :first

    fill_in "Author", with: @wiki.author
    fill_in "Description", with: @wiki.description
    fill_in "Link", with: @wiki.link
    fill_in "Title", with: @wiki.title
    click_on "Update Wiki"

    assert_text "Wiki was successfully updated"
    click_on "Back"
  end

  test "should destroy Wiki" do
    visit wiki_url(@wiki)
    click_on "Destroy this wiki", match: :first

    assert_text "Wiki was successfully destroyed"
  end
end
