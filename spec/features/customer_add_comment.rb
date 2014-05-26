feature 'Add a comment to a prestation' do

  scenario 'add a note and a comment' do
    visit '/prestataire?prestataire1/prestation?prestation2/avis'
    fill_in 'Note', :with => '4'
    fill_in 'Commentaire', :with => 'Très bonne prestation, je vais refaire appel a ce prestataire'
    click_on 'Soumettre'
    visit '/prestataire?prestataire1/prestation?prestation2'
    click_on 'Afficher les commentaires'
    page.html.should include('Très bonne prestation, je vais refaire appel a ce prestataire')
  end



end