require 'test_helper'

class ConstructionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @construction = constructions(:one)
  end

  test "should get index" do
    get constructions_url
    assert_response :success
  end

  test "should get new" do
    get new_construction_url
    assert_response :success
  end

  test "should create construction" do
    assert_difference('Construction.count') do
      post constructions_url, params: { construction: { cash_budget: @construction.cash_budget, charge: @construction.charge, comment: @construction.comment, construction_name: @construction.construction_name, contract_price: @construction.contract_price, material_cost: @construction.material_cost, pay_the_difference: @construction.pay_the_difference, person: @construction.person, selling: @construction.selling, selling_the_difference: @construction.selling_the_difference, site_overhead_expenses: @construction.site_overhead_expenses, subcontract_cost: @construction.subcontract_cost, total_cost: @construction.total_cost } }
    end

    assert_redirected_to construction_url(Construction.last)
  end

  test "should show construction" do
    get construction_url(@construction)
    assert_response :success
  end

  test "should get edit" do
    get edit_construction_url(@construction)
    assert_response :success
  end

  test "should update construction" do
    patch construction_url(@construction), params: { construction: { cash_budget: @construction.cash_budget, charge: @construction.charge, comment: @construction.comment, construction_name: @construction.construction_name, contract_price: @construction.contract_price, material_cost: @construction.material_cost, pay_the_difference: @construction.pay_the_difference, person: @construction.person, selling: @construction.selling, selling_the_difference: @construction.selling_the_difference, site_overhead_expenses: @construction.site_overhead_expenses, subcontract_cost: @construction.subcontract_cost, total_cost: @construction.total_cost } }
    assert_redirected_to construction_url(@construction)
  end

  test "should destroy construction" do
    assert_difference('Construction.count', -1) do
      delete construction_url(@construction)
    end

    assert_redirected_to constructions_url
  end
end
