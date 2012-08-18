require 'test_helper'

class Base
  def true?
    true
  end

  def false?
    false
  end
end
class BasePresenter < Marilyn::Presenter;end;

class MarilynTest < ActiveSupport::TestCase
  include Marilyn::Helper

  def render(options)
    options 
  end

  test "presenter_for without option" do
    options = presenter_for 'base'
    
    assert_equal options[:partial], 'base'
    assert options[:object].is_a? BasePresenter
  end

  test "presenter_for with object" do
    options = presenter_for 'base', object: Base.new
    
    assert_equal options[:partial], 'base'
    assert options[:object].is_a? BasePresenter
  end

  test "presenter_for with multiple objects" do
    options = presenter_for 'base', objects: [Base.new, Base.new]
    
    assert_equal options[:partial], 'base'
    assert options[:object].is_a? BasePresenter
    assert_equal options[:object].objects.length, 2
  end

  test "presenter_for with block at true" do
    options = presenter_for('base', object: Base.new) { |b| b.true? }
    
    assert_equal options[:partial], 'base'
    assert options[:object].is_a? BasePresenter
  end

  test "presenter_for with block at false" do
    options = presenter_for('base', object: Base.new) { |b| b.false? }
    
    assert_nil options
  end
end
