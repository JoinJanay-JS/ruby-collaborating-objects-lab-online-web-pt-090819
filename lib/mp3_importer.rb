require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    ## SOLUTION 1
    Dir.entries(path).select{|entrie| entrie.include?(".mp3")}
    ## SOLUTION 2
    # @files ||= Dir.glob("#{path}/*.mp3").map{|f| f.gsub("#{path}/", "")}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end

end

end