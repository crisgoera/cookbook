class AllowNullValueOnCookbookDishId < ActiveRecord::Migration[7.0]
  def change
    change_column_null :cookbooks, :dish_id, true
  end
end
