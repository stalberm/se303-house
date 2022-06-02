gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/house'

class HouseTest < Minitest::Test

  def test_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new.line(1)
  end

  def test_line_2
    expected = "This is the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(2)
  end

  def test_line_3
    expected = "This is the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(3)
  end

  def test_line_4
    expected = "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(4)
  end

  def test_line_5
    expected = "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(5)
  end

  def test_line_6
    expected = "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(6)
  end

  def test_line_7
    expected = "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(7)
  end

  def test_line_8
    expected = "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(8)
  end

  def test_line_9
    expected = "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(9)
  end

  def test_line_10
    expected = "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(10)
  end

  def test_line_11
    expected = "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(11)
  end

  def test_line_12
    expected = "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new.line(12)
  end

  def test_all_the_lines
    expected = <<-TEXT
This is the house that Jack built.

This is the malt that lay in the house that Jack built.

This is the rat that ate the malt that lay in the house that Jack built.

This is the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new.recite
  end

  def test_pirate_line_1
    expected = "Thar be the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(1)
  end

  def test_pirate_line_2
    expected = "Thar be the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(2)
  end

  def test_pirate_line_3
    expected = "Thar be the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(3)
  end

  def test_pirate_line_4
    expected = "Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(4)
  end

  def test_pirate_line_5
    expected = "Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(5)
  end

  def test_pirate_line_6
    expected = "Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(6)
  end

  def test_pirate_line_7
    expected = "Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(7)
  end

  def test_pirate_line_8
    expected = "Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(8)
  end

  def test_pirate_line_9
    expected = "Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(9)
  end

  def test_pirate_line_10
    expected = "Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(10)
  end

  def test_pirate_line_11
    expected = "Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(11)
  end

  def test_pirate_line_12
    expected = "Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.\n"
    assert_equal expected, House.new(PirateVerse).line(12)
  end

  def test_all_the_pirate_lines
    expected = <<-TEXT
Thar be the house that Jack built.

Thar be the malt that lay in the house that Jack built.

Thar be the rat that ate the malt that lay in the house that Jack built.

Thar be the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.

Thar be the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.
    TEXT
    assert_equal expected, House.new(PirateVerse).recite
  end

  def test_random_line_1
    expected = "This is the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(1)
  end

  def test_random_line_2
    skip
    expected = "This is the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(2)
  end

  def test_random_line_3
    skip
    expected = "This is the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(3)
  end

  def test_random_line_4
    skip
    expected = "This is the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(4)
  end

  def test_random_line_5
    skip
    expected = "This is the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(5)
  end

  def test_random_line_6
    skip
    expected = "This is the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(6)
  end

  def test_random_line_7
    skip
    expected = "This is the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(7)
  end

  def test_random_line_8
    skip
    expected = "This is the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(8)
  end

  def test_random_line_9
    skip
    expected = "This is the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(9)
  end

  def test_random_line_10
    skip
    expected = "This is the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(10)
  end

  def test_random_line_11
    skip
    expected = "This is the dog that worried the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(11)
  end

  def test_random_line_12
    skip
    expected = "This is the priest all shaven and shorn that married the dog that worried the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.\n"
    assert_equal expected, House.new(RandomVerse).line(12)
  end

  def test_all_the_random_lines
    skip
    expected = <<-TEXT
This is the house that Jack built.

This is the man all tattered and torn that kissed the house that Jack built.

This is the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the dog that worried the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.

This is the priest all shaven and shorn that married the dog that worried the maiden all forlorn that milked the malt that lay in the cat that killed the farmer sowing his corn that kept the horse and the hound and the horn that belonged to the cow with the crumpled horn that tossed the rooster that crowed in the morn that woke the rat that ate the man all tattered and torn that kissed the house that Jack built.
    TEXT
    assert_equal expected, House.new(RandomVerse).recite
  end
end