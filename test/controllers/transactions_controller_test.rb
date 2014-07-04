require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { address: @transaction.address, cancelled: @transaction.cancelled, delivered_at: @transaction.delivered_at, end_at: @transaction.end_at, hours_charged: @transaction.hours_charged, name: @transaction.name, phone: @transaction.phone, returned_at: @transaction.returned_at, start_at: @transaction.start_at }
    end

    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    patch :update, id: @transaction, transaction: { address: @transaction.address, cancelled: @transaction.cancelled, delivered_at: @transaction.delivered_at, end_at: @transaction.end_at, hours_charged: @transaction.hours_charged, name: @transaction.name, phone: @transaction.phone, returned_at: @transaction.returned_at, start_at: @transaction.start_at }
    assert_redirected_to transaction_path(assigns(:transaction))
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_redirected_to transactions_path
  end
end
