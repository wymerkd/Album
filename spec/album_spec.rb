require 'rspec'
require 'album'


describe '#Album' do
  describe('.all') do
    it('returns an empty array when there are no albums') do
      expect(Album.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves an album') do
      album = Album.new("Giant Steps", nil)
      album.save()
      album2 = Album.new("Blue", nil)
      album2.save()
      expect(Album.all).to(eq([album1, album2]))
    end
  end
end
