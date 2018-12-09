require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    new_sentences = self.split(/\.|\?|\!/)
    new_sentences.delete_if  {|string| string.size < 2}
    new_sentences.size
  end
end
