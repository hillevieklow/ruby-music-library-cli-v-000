class MusicImporter
  attr_accessor :path

  def initialize(path = "./d/mp3s")
    @path = path
  end

  def files
    @files = Dir["#{@path}/*.mp3"]
    @files.map{|file| File.basename(file)}
  end

  def import
    files.each {|filename| Song.create_from_filename(filename)}
  end
end
