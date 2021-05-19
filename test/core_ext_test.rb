require "test_helper"

class CoreExtTest < ActiveSupport::TestCase
  def test_to_median
    assert_equal 3, [1, 3, 4, 5, 2].median
    assert_equal 76.4026, [1.11, 2.37, 150.4352, 2.32452, 2345.345, 976].median

    assert_equal 3, [1, 3, 4, 5, 2].median
    assert_raises RuntimeError do
      ["a", 3, 4, 5, 2].median
    end
  end
end
