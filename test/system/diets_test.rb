require "application_system_test_case"

class DietsTest < ApplicationSystemTestCase
  setup do
    @diet = diets(:one)
  end

  test "visiting the index" do
    visit diets_url
    assert_selector "h1", text: "Diets"
  end

  test "should create diet" do
    visit diets_url
    click_on "New diet"

    fill_in "Client", with: @diet.client_id
    fill_in "End date", with: @diet.end_date
    fill_in "Goal", with: @diet.goal
    fill_in "Start date", with: @diet.start_date
    click_on "Create Diet"

    assert_text "Diet was successfully created"
    click_on "Back"
  end

  test "should update Diet" do
    visit diet_url(@diet)
    click_on "Edit this diet", match: :first

    fill_in "Client", with: @diet.client_id
    fill_in "End date", with: @diet.end_date
    fill_in "Goal", with: @diet.goal
    fill_in "Start date", with: @diet.start_date
    click_on "Update Diet"

    assert_text "Diet was successfully updated"
    click_on "Back"
  end

  test "should destroy Diet" do
    visit diet_url(@diet)
    click_on "Destroy this diet", match: :first

    assert_text "Diet was successfully destroyed"
  end
end
