require 'rails_helper'

describe 'Usuário visita o show de uma gpu' do
  it 'e vê detalhes da gpu' do
    gpu1 = VideoCard.create!(name: 'GTX 1080', manufacturer: 'Nvidia', memory: '8GB', price: 3000, stock: 10)

    visit root_path
    click_on "GTX 1080"

    expect(current_path).to eq video_card_path(id: gpu1.id)
    expect(page).to have_content "GTX 1080"
    expect(page).to have_content "Marca: Nvidia"
    expect(page).to have_content "Memória: 8GB"
    expect(page).to have_content "Preço: R$ 3.000,00"
    expect(page).to have_content "Qtd em estoque: 10"
    expect(page).to have_link "Voltar"
  
  end

  it 'e clicka em voltar e é redirecionado para página principal' do
    gpu1 = VideoCard.create!(name: 'GTX 1080', manufacturer: 'Nvidia', memory: '8GB', price: 3000, stock: 10)

    visit root_path
    click_on "GTX 1080"
    click_on "Voltar"

    expect(current_path).to eq root_path
  end
end