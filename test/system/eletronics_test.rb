require "application_system_test_case"

class EletronicsTest < ApplicationSystemTestCase
  setup do
    @eletronic = eletronics(:one)
  end

  test "visiting the index" do
    visit eletronics_url
    assert_selector "h1", text: "Eletronics"
  end

  test "should create eletronic" do
    visit eletronics_url
    click_on "New eletronic"

    fill_in "Accessory", with: @eletronic.accessory_id
    fill_in "Color", with: @eletronic.color
    fill_in "Model", with: @eletronic.model
    fill_in "Quantity", with: @eletronic.quantity
    fill_in "Serial number", with: @eletronic.serial_number
    fill_in "Type", with: @eletronic.type_id
    click_on "Create Eletronic"

    assert_text "Eletronic was successfully created"
    click_on "Back"
  end

  test "should update Eletronic" do
    visit eletronic_url(@eletronic)
    click_on "Edit this eletronic", match: :first

    fill_in "Accessory", with: @eletronic.accessory_id
    fill_in "Color", with: @eletronic.color
    fill_in "Model", with: @eletronic.model
    fill_in "Quantity", with: @eletronic.quantity
    fill_in "Serial number", with: @eletronic.serial_number
    fill_in "Type", with: @eletronic.type_id
    click_on "Update Eletronic"

    assert_text "Eletronic was successfully updated"
    click_on "Back"
  end

  test "should destroy Eletronic" do
    visit eletronic_url(@eletronic)
    click_on "Destroy this eletronic", match: :first

    assert_text "Eletronic was successfully destroyed"
  end
end
