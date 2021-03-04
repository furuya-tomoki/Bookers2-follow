class Relationship < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  # class_nameにUserと記述することで、それぞれの参照先がUserモデルを指定
end
