class User < ApplicationRecord
  def tests_by_level(level)
    Result.joins("JOIN tests ON tests.test_id = results.test_id").where(results.user_id: self.id, tests.level: level).pluck(:tests.title)
  end
end
