# encoding: utf-8
require 'test_helper'
require 'Figure'

# http://guides.rubyonrails.org/testing.html
# http://www.jetbrains.com/ruby/webhelp/test-runner-tab.html#
class FigureTest < ActiveSupport::TestCase

  test "creation from iOS .plist" do
    plist_file = 'public/lego/en/Informations/Series/7/AztecWarrior.plist'
    f = Figure.create_from_plist(plist_file, :series_code => '1')

    assert_equal 'Aztec Warrior', f.name
    assert_equal 2, f.index
    assert_equal 'http://minifigures.lego.com/en-us/Bios/Aztec%20Warrior.aspx', f.url
    assert_equal "No, you can’t have our gold! Go find your own!", f.slogan
    assert f.description.start_with?('A mighty soldier of the sun')
    assert_equal 4, f.strength
    assert_equal 2, f.creativity
    assert_equal 3, f.speed
  end

end
