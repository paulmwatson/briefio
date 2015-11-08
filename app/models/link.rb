class Link < ActiveRecord::Base
  validates :title, :url, presence: true
  validates :url, format: { with: URI.regexp }, if: Proc.new { |a| a.url.present? }
  validates :thumbnail_url, format: { with: URI.regexp }, if: Proc.new { |a| a.thumbnail_url.present? }
end
