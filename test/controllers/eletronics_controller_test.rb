require "test_helper"

class EletronicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eletronic = eletronics(:one)
  end

  test "should get index" do
    get eletronics_url
    assert_response :success
  end

  test "should get new" do
    get new_eletronic_url
    assert_response :success
  end

  test "should create eletronic" do
    assert_difference("Eletronic.count") do
      post eletronics_url, params: { eletronic: { accessory_id: @eletronic.accessory_id, color: @eletronic.color, model: @eletronic.model, quantity: @eletronic.quantity, serial_number: @eletronic.serial_number, type_id: @eletronic.type_id } }
    end

    assert_redirected_to eletronic_url(Eletronic.last)
  end

  test "should show eletronic" do
    get eletronic_url(@eletronic)
    assert_response :success
  end

  test "should get edit" do
    get edit_eletronic_url(@eletronic)
    assert_response :success
  end

  test "should update eletronic" do
    patch eletronic_url(@eletronic), params: { eletronic: { accessory_id: @eletronic.accessory_id, color: @eletronic.color, model: @eletronic.model, quantity: @eletronic.quantity, serial_number: @eletronic.serial_number, type_id: @eletronic.type_id } }
    assert_redirected_to eletronic_url(@eletronic)
  end

  test "should destroy eletronic" do
    assert_difference("Eletronic.count", -1) do
      delete eletronic_url(@eletronic)
    end

    assert_redirected_to eletronics_url
  end
end
