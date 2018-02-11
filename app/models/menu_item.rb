class MenuItem < ApplicationRecord
  has_ancestry orphan_strategy: :rootify

end
