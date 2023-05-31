require 'rails_helper'

describe 'Visitante visita a homepage' do
  it 'com sucesso' do
    VideoCard.create!(name: 'GTX 1080', manufacturer: 'Nvidia', memory: '8GB', price: 3000, stock: 10)

    visit root_path

    expect(page).to have_link('GPU Store')
    expect(page).to have_content('Marca: Nvidia')
    expect(page).to have_content('Memória: 8GB')
    expect(page).to have_content('Preço: R$ 3.000,00')
    expect(page).to have_link('GTX 1080')
    expect(page).to have_link('Produtos')
  end

  it 'e não há GPUs cadastradas' do
    visit root_path

    expect(page).to have_content('Não há GPUs disponíveis.')
  end
end