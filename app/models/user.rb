class User < ApplicationRecord
  def tests_by_level(level)
    Result.where("user_id = self.id").joins("JOIN tests ON tests.test_id = results.test_id AND tests.level = " + level.to_s)
  end
end
