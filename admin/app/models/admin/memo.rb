module Admin
  class Memo < ApplicationRecord
    belongs_to :user
  end
end
