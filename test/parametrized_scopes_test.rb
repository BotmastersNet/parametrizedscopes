require 'test_helper'

class ParametrizedScopes::Test < ActiveSupport::TestCase
  test "method generates proper sql" do
    assert_equal "SELECT \"my_models\".* FROM \"my_models\" WHERE \"my_models\".\"name\" = 'a'", MyModel.by_query("a").to_sql
  end
end
