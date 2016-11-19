require 'test_helper'

class HappyTreesControllerTest < ActionController::TestCase
  setup do
    @happy_tree = happy_trees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:happy_trees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create happy_tree" do
    assert_difference('HappyTree.count') do
      post :create, happy_tree: { background: @happy_tree.background, brush: @happy_tree.brush, color: @happy_tree.color, description: @happy_tree.description }
    end

    assert_redirected_to happy_tree_path(assigns(:happy_tree))
  end

  test "should show happy_tree" do
    get :show, id: @happy_tree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @happy_tree
    assert_response :success
  end

  test "should update happy_tree" do
    patch :update, id: @happy_tree, happy_tree: { background: @happy_tree.background, brush: @happy_tree.brush, color: @happy_tree.color, description: @happy_tree.description }
    assert_redirected_to happy_tree_path(assigns(:happy_tree))
  end

  test "should destroy happy_tree" do
    assert_difference('HappyTree.count', -1) do
      delete :destroy, id: @happy_tree
    end

    assert_redirected_to happy_trees_path
  end
end
