require "rubygems"
require "active_support"
require "active_support/core_ext"


desc "Add Figures in Database"
task :figures => :environment do
  seriesIndexes = Dir.entries('public/lego/en/Informations/Series')
  seriesIndexes.each do |seriesIndex|
    i = seriesIndex.to_i
    if i > 0 && i < 99
      series = Series.create!(:number => i)

      figurePathes = Dir["public/lego/en/Informations/Series/#{seriesIndex}/*.plist"]
      figurePathes.each do |p|
        f = Figure.create_from_plist(p)
        series.figures << f
        print f.name, "\n"
      end
      print "SERIES==", series.figures.count, "\n"
    end
  end
end
