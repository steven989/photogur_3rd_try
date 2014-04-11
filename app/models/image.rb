class Image < ActiveRecord::Base

    scope :newest_first, -> {order("created_at desc")}
    scope :newest_two, -> {newest_first.limit(2)}
    scope :created_before, -> (time) {where("created_at < ?", time)}

end
