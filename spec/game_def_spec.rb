require 'rspec'
require 'psych'
require 'yaml'

RSpec.describe Game do
  let(:game) { Game.new }

  it 'show hint' do
    game.choose_difficulty('easy')
    game.start
    game.show_hint
    expect(game.hints) == 1
  end

  it 'return true/false if user want/doesnt want play again' do
    expect(game.play_again?('yes')).to eq(true)
    expect(game.play_again?('no')).to eq(false)
  end

  it 'check random hashes' do
    expect(game.start).not_to eq(game.start)
  end
end
