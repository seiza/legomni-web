class Figure < ActiveRecord::Base
  attr_accessible :figure_code, :series_code, :index, :creativity, :description, :name, :slogan, :speed, :strength, :url
  self.primary_key = "figure_code"
  belongs_to :series
  has_many :user_figures

  # => {"plist"=>{"version"=>"1.0", "dict"=>{
  #"key"=>["Name", "Index", "URL", "Slogan", "Description", "SkillStrength", "SkillCreativity", "SkillSpeed"],
  #"string"=>["Aztec Warrior", "http://minifigures.lego.com/en-us/Bios/Aztec%20Warrior.aspx", "No, you can’t have our gold! Go find your own!", "A mighty soldier of the sun, the Aztec Warrior is ... "],
  #"integer"=>["2", "4", "2", "3"]}}}
  def self.create_from_plist(plist_path, series_code)
    plist = Hash.from_xml(File.new(plist_path))
    m = plist['plist']['dict']
    s= m['string']
    i = m['integer']
    code = "#{series_code}-#{i[0]}"
    f = Figure.create!(:figure_code => code)
    f.name        = s[0]
    f.index       = i[0]
    f.url         = s[1]
    f.slogan      = s[2]
    f.description = s[3]
    f.strength    = i[1]
    f.creativity  = i[2]
    f.speed       = i[3]
    return f
  end

end
