# coding: utf-8
require 'rails_helper'

feature 'gerenciar Cliente' do

  scenario 'incluir Cliente' do # , :js => true do
    visit new_cliente_path
    preencher_e_verificar_cliente
  end

  scenario 'alterar Cliente' do #, :js => true do
    cliente = FactoryGirl.create(:cliente)
    visit edit_cliente_path(cliente)
    preencher_e_verificar_cliente
  end

  scenario 'excluir cliente' do #, :javascript => true do
    cliente = FactoryGirl.create(:cliente)
    visit clientes_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_cliente
    fill_in 'Nome', :with => "Luiz"
    fill_in 'Cpf', :with => "12345678"
    fill_in 'Endereço', :with => "Rua XXX"
    fill_in 'Telefone', :with => "99999"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Luiz'
    expect(page).to have_content 'Cpf: 12345678'
    expect(page).to have_content 'Endereço: Rua XXX'
    expect(page).to have_content 'Telefone: 99999'

  end

end
