# coding: utf-8
require 'rails_helper'

feature 'gerenciar Tecnico' do

  scenario 'incluir Tecnico' do # , :js => true do
    visit new_tecnico_path
    preencher_e_verificar_tecnico
  end

  scenario 'alterar Tecnico' do #, :js => true do
    tecnico = FactoryGirl.create(:tecnico)
    visit edit_tecnico_path(tecnico)
    preencher_e_verificar_tecnico
  end

  scenario 'excluir tecnico' do #, :javascript => true do
    tecnico = FactoryGirl.create(:tecnico)
    visit tecnicos_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_tecnico
    fill_in 'Nome', :with => "Pedro"
    fill_in 'Cpf', :with => "1230045678"
    fill_in 'Telefone', :with => "9900999"

    click_button 'Salvar'

    expect(page).to have_content 'Nome: Pedro'
    expect(page).to have_content 'Cpf: 1230045678'
    expect(page).to have_content 'Telefone: 9900999'

  end

end
