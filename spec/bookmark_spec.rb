require 'dotenv'
Dotenv.load
require 'bookmark.rb'

describe Bookmark do
  describe ".all" do
    it 'returns an array of bookmarks' do
      bookmarks = described_class.all(ENV["TEST_DB"])

      expect(bookmarks).to include "http://www.guardian.co.uk"
      expect(bookmarks).to include "http://www.google.com"

    end
  end
end