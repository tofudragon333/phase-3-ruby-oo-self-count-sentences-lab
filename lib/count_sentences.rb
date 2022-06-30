require 'pry'

class String

  def sentence?
    if self.end_with?(".") 
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    sentences = self.split(/\.|\?|!/)
    actual_sentences = sentences.filter do |sentence|
      sentence != ""
    end
    # binding.pry
    actual_sentences.count
  end
end

"hello!!! how are you? I'm good...".count_sentences
# binding.pry
