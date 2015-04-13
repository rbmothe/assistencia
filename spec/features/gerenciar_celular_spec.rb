# coding: utf-8
require 'rails_helper'

feature 'gerenciar Celular' do

  scenario 'incluir Celular' do # , :js => true do
    visit new_celular_path
    preencher_e_verificar_celular
  end

  scenario 'alterar Celular' do #, :js => true do
    celular = FactoryGirl.create(:celular)
    visit edit_celular_path(celular)
    preencher_e_verificar_celular
  end

  scenario 'excluir celular' do #, :javascript => true do
    celular = FactoryGirl.create(:celular)
    visit celulares_path
    click_link 'Excluir'
  end

  def preencher_e_verificar_celular
    fill_in 'Imei', :with => "00000000"
    fill_in 'Marca', :with => "LG"
    fill_in 'Numserie', :with => "990090099"

    click_button 'Salvar'

    expect(page).to have_content 'Imei: 00000000'
    expect(page).to have_content 'Marca: LG'
    expect(page).to have_content 'Numserie: 990090099'

  end

end
