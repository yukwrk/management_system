require "application_system_test_case"

class ConstructionsTest < ApplicationSystemTestCase
  setup do
    @construction = constructions(:one)
  end

  test "visiting the index" do
    visit constructions_url
    assert_selector "h1", text: "Constructions"
  end

  test "creating a Construction" do
    visit constructions_url
    click_on "New Construction"

    fill_in "Cash budget", with: @construction.cash_budget
    fill_in "Charge", with: @construction.charge
    fill_in "Comment", with: @construction.comment
    fill_in "Construction name", with: @construction.construction_name
    fill_in "Contract price", with: @construction.contract_price
    fill_in "Material cost", with: @construction.material_cost
    fill_in "Pay the difference", with: @construction.pay_the_difference
    fill_in "Person", with: @construction.person
    fill_in "Selling", with: @construction.selling
    fill_in "Selling the difference", with: @construction.selling_the_difference
    fill_in "Site overhead expenses", with: @construction.site_overhead_expenses
    fill_in "Subcontract cost", with: @construction.subcontract_cost
    fill_in "Total cost", with: @construction.total_cost
    click_on "Create Construction"

    assert_text "Construction was successfully created"
    click_on "Back"
  end

  test "updating a Construction" do
    visit constructions_url
    click_on "Edit", match: :first

    fill_in "Cash budget", with: @construction.cash_budget
    fill_in "Charge", with: @construction.charge
    fill_in "Comment", with: @construction.comment
    fill_in "Construction name", with: @construction.construction_name
    fill_in "Contract price", with: @construction.contract_price
    fill_in "Material cost", with: @construction.material_cost
    fill_in "Pay the difference", with: @construction.pay_the_difference
    fill_in "Person", with: @construction.person
    fill_in "Selling", with: @construction.selling
    fill_in "Selling the difference", with: @construction.selling_the_difference
    fill_in "Site overhead expenses", with: @construction.site_overhead_expenses
    fill_in "Subcontract cost", with: @construction.subcontract_cost
    fill_in "Total cost", with: @construction.total_cost
    click_on "Update Construction"

    assert_text "Construction was successfully updated"
    click_on "Back"
  end

  test "destroying a Construction" do
    visit constructions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Construction was successfully destroyed"
  end
end
