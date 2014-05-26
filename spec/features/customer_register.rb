feature 'Create a new customer account' do

  scenario 'for an correct form' do
    visit '/signup'
    click_on 'Client'
    click_on 'Valider'
    current_url.should == '/signup/customer'   
    fill_in 'Nom', :with => 'Grais'
    fill_in 'Prénom', :with => 'Frédéric'
    fill_in 'Email', :with => 'frederic.grais@gmail.com'
    fill_in 'MotDePasse', :with => '******'
    fill_in 'Adresse', :with => '10 rue de la forêt'
    fill_in 'CodePostal', :with => '75000'
    fill_in 'Ville', :with => 'Paris'
    fill_in 'Téléphone', :with => '0102030405'
    check 'Cgu'
    click_on 'Je Minscris'
    current_url.should == '/signup/summary'  
    click_on "Retour à la page d'acceuil" 
    current_url.should == '/'   
  end

  scenario 'for an uncorrect form' do
    visit '/signup'
    click_on 'Client'
    click_on 'Valider'
    current_url.should == '/signup/customer'   
    fill_in 'Nom', :with => 'Grais'
    fill_in 'Prénom', :with => 'Frédéric'
    fill_in 'Email', :with => 'frederic.grais@gmail.com'
    fill_in 'MotDePasse', :with => '******'
    fill_in 'Adresse', :with => '10 rue de la forêt'
    fill_in 'CodePostal', :with => '75000'
    fill_in 'Ville', :with => 'Paris'
    fill_in 'Téléphone', :with => '0102030405'
    uncheck 'Cgu'
    click_on 'Je Minscris'
    current_url.should == '/signup/customer'  
    page.should_not have_content 'Error'   
  end

end