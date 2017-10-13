class Card < ActiveRecord::Base
  belongs_to :magic_set
  has_many :entries
  has_many :decks, through: :entries

  def set_id
    self.magic_set.cards.index(self) + 1
  end

  def image
    "http://gatherer.wizards.com/Handlers/Image.ashx?multiverseid=#{self.multiverseid}&type=card"
  end

  def mana_symbol(field)
    symbolsarray = field.split('}')
    mana = ""
    symbolsarray.each do |symbol|
      if symbol.include?("{B/R")
        mana += "<img src='/images/BR.svg' width='20' alt='{B/R}'> "
      elsif symbol.include?("{R/G")
        maa += "<img src='/images/RG.svg' width='20' alt='{R/G}'> "
      elsif symbol.include?("{G/U")
        mana += "<img src='/images/GU.svg' width='20' alt='{G/U}'> "
      elsif symbol.include?("{G/W")
        mana += "<img src='/images/GW.svg' width='20' alt='{G/W}'> "
      elsif symbol.include?("{R/W")
        mana += "<img src='/images/RW.svg' width='20' alt='{R/W}'> "
      elsif symbol.include?("{U/B")
        mana += "<img src='/images/UB.svg' width='20' alt='{U/B}'> "
      elsif symbol.include?("{U/R")
        mana += "<img src='/images/UR.svg' width='20' alt='{U/R}'> "
      elsif symbol.include?("{W/U")
        mana += "<img src='/images/WU.svg' width='20' alt='{W/U}'> "
      elsif symbol.include?("{W/B")
        mana += "<img src='/images/WB.svg' width='20' alt='{W/B}'> "
      elsif symbol.include?("{B/G")
        mana += "<img src='/images/BG.svg' width='20' alt='{B/G}'> "
      elsif symbol.include?("{W")
        mana += "<img src='/images/W.svg' width='20' alt='{W}'> "
      elsif symbol.include?("{U")
        mana += "<img src='/images/U.svg' width='20' alt='{U}'> "
      elsif symbol.include?("{B")
        mana += "<img src='/images/B.svg' width='20' alt='{B}'> "
      elsif symbol.include?("{R")
        mana += "<img src='/images/R.svg' width='20' alt='{R}'> "
      elsif symbol.include?("{G")
        mana += "<img src='/images/G.svg' width='20' alt='{G}'> "
      elsif symbol.include?("{10")
        mana += "<img src='/images/10.svg' width='20' alt='{10}'> "
      elsif symbol.include?("{11")
        mana += "<img src='/images/11.svg' width='20' alt='{11}'> "
      elsif symbol.include?("{12")
        mana += "<img src='/images/12.svg' width='20' alt='{12}'> "
      elsif symbol.include?("{13")
        mana += "<img src='/images/13.svg' width='20' alt='{13}'> "
      elsif symbol.include?("{14")
        mana += "<img src='/images/14.svg' width='20' alt='{14}'> "
      elsif symbol.include?("{15")
        mana += "<img src='/images/15.svg' width='20' alt='{15}'> "
      elsif symbol.include?("{16")
        mana += "<img src='/images/16.svg' width='20' alt='{16}'> "
      elsif symbol.include?("{17")
        mana += "<img src='/images/17.svg' width='20' alt='{17}'> "
      elsif symbol.include?("{18")
        mana += "<img src='/images/18.svg' width='20' alt='{18}'> "
      elsif symbol.include?("{19")
        mana += "<img src='/images/19.svg' width='20' alt='{19}'> "
      elsif symbol.include?("{20")
        mana += "<img src='/images/20.svg' width='20' alt='{20}'> "  
      elsif symbol.include?("{X")
        mana += "<img src='/images/X.svg' width='20' alt='{X}'> "
      elsif symbol.include?("{0")
        mana += "<img src='/images/0.svg' width='20' alt='{0}'> "
      elsif symbol.include?("{1")
        mana += "<img src='/images/1.svg' width='20' alt='{1}'> "
      elsif symbol.include?("{2")
        mana += "<img src='/images/2.svg' width='20' alt='{2}'> "
      elsif symbol.include?("{3")
        mana += "<img src='/images/3.svg' width='20' alt='{3}'> "
      elsif symbol.include?("{4")
        mana += "<img src='/images/4.svg' width='20' alt='{4}'> "
      elsif symbol.include?("{5")
        mana += "<img src='/images/5.svg' width='20' alt='{5}'> "
      elsif symbol.include?("{6")
        mana += "<img src='/images/6.svg' width='20' alt='{6}'> "
      elsif symbol.include?("{7")
        mana += "<img src='/images/7.svg' width='20' alt='{7}'> "
      elsif symbol.include?("{8")
        mana += "<img src='/images/8.svg' width='20' alt='{8}'> "
      elsif symbol.include?("{9")
        mana += "<img src='/images/9.svg' width='20' alt='{9}'> "
      end
    end
    return mana
  end
end
