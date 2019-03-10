require 'byebug'

def pig_it(text)
  pig_latin = text.split(" ").map! do |word|
    # byebug
    word[-1] =~ /[A-z]/ ? word[1..-1] + word[0] + "ay" : word
  end
  pig_latin.join(" ")
end

p pig_it('Quis custodiet ipsos custodes ?')
# 'uisQay ustodietcay psosiay ustodescay ?'

p pig_it('O tempora o mores !')
# 'Oay emporatay oay oresmay !'
