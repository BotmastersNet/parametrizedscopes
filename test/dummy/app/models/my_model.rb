class MyModel < ApplicationRecord

  filter_scope :by_query, -> (q) { where(name: q) }

end
