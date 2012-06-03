require "rubygems"
require "active_support"
require "active_support/core_ext"

# http://jasonseifer.com/2010/04/06/rake-tutorial

namespace :legomni do

  desc "Add Figures in Database"
  task :figures => :environment do
    seriesIndexes = Dir.entries('public/lego/en/Informations/Series')
    seriesIndexes.each do |seriesIndex|
      i = seriesIndex.to_i
      if i > 0 && i < 99
        print ">>>>>>>>> SERIES NO=", seriesIndex, "\n"

        series = Series.create!(:series_code => seriesIndex, :index => i)

        figurePathes = Dir["public/lego/en/Informations/Series/#{seriesIndex}/*.plist"]
        figurePathes.each do |p|
          f = Figure.create_from_plist(p, seriesIndex)
          series.figures << f
          print "---> Figure: ", f.name, "\n"
        end
      end
    end
  end

  desc "Add me as User and some fake data to start using app"
  task :fake_data => :environment do
    u = User.create!( :login => "jacques", :firstName => "Jacques", :lastName => "COUVREUR", :email => "jacques@couvreur.me", :city1 => "Geneve" )
    UserFigure.create!( :user_id => u.id, :figure_code => "7-3", :count => 3, :wanted => 1, :give => 2 )
    Device.create!( :user_id => u.id, :name => "iPhone 4", :udid => "UI89IUM49FJDUJN4IWIKDD3" )
  end

  desc "Reset database and add fake data"
  task :bootstrap => :environment do
    Rake::Task['db:drop'].invoke
    Rake::Task['db:create'].invoke
    Rake::Task['db:migrate'].invoke
    Rake::Task['legomni:figures'].invoke
    Rake::Task['legomni:fake_data'].invoke
  end

end