class Url < ApplicationRecord
  def shortened
  "http://localhost:3000/#{self.short_url||self.id}"
  end
end
