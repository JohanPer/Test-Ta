class GameController < ApplicationController
  def new_party
    @party = Party.new
    voeylles = %w[A E I O U]
    consonnes = %w[B C D F G H J K L M N P Q R S T V W X Y Z]
    voeylles = voeylles.sample(5)
    consonnes = consonnes.sample(5)
    @party.ten_letters_list = voeylles + consonnes
    @party.save
  end

  def solution
    @party = Party.find(params[:id])
    @solution = Solution.new
    @solution.party = @party
    @solution.word = params[:word]
    @solution.save
  end
end
