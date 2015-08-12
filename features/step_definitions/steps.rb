Δεδομένου(/^ότι εισέρχομαι στην εφαρμογή ως επισκέπτης$/) do
  visit root_path
  page.should have_content("Είσοδος")
  page.should have_content("Εγγραφή")
end

Δεδομένου(/^πηγαίνω να κάνω εγγραφή$/) do
  click_link('Εγγραφή!')
end

Δεδομένου(/^μου εμφανίζεται η φόρμα εγγραφής$/) do
  page.should have_field('user_email')
  page.should have_field('user_username')
  page.should have_field('user_password')
  page.should have_field('user_password_confirmation')
end

Όταν(/^το (\w+) είναι έγκυρο$/) do |name|
  fill_in('user_username',{:with => name })
end

Όταν(/^η (.*) είναι έγκυρη$/) do |email|
  fill_in('user_email',{:with => email })
end

Όταν(/^ο (.*) που έχω καταχωρήσει είναι έγκυρος$/) do |password|
  fill_in('user_password',{:with => password })
  fill_in('user_password_confirmation',{:with => password })
end

Όταν(/^αιτούμαι να εγγραφώ στο σύστημα$/) do
  click_button('Εγγραφή')
end


Τότε(/^να εμφανίζεται μήνυμα να ελέγξω το email μου$/) do
  page.should have_content("Ελέγξτε το ηλεκτρονικό σας ταχυδρομείο.")
end


Όταν(/^δημιουργώ καινούργιο λογαριασμό$/) do
end

Τότε(/^να μου αποστέλνεται ηλεκτρονικό ταχυδρομείο για ενεργοποίηση λογαριασμού$/) do
  user =  FactoryGirl.create(:user)
  email = UserMailer.account_activation(user)
  email.should deliver_to("example@email.com")
  email.should have_body_text(/Γεια σου,/)
end


Όταν(/^η (.*)δεν έχει τη σωστή μορφή$/) do |email|
  fill_in('user_email',{:with => email })
  fill_in('user_username',{:with => "user" })
  fill_in('user_password',{:with => "password" })
  fill_in('user_password_confirmation',{:with => "password" })
  click_button('Εγγραφή')
end


Τότε(/^να εμφανίζεται μήνυμα λάθους σχετικά με την ηλεκτρονική διεύθυνση$/) do
    page.should have_content('Ηλεκτρονική Διεύθυνση είναι άκυρο')
end


Τότε(/^να εμφανίζ(?:εται|ει) μήνυμα λάθους$/) do
  page.should have_content('Λάθος')
end

Όταν(/^το όνομα χρήστη είναι πάνω από (\d+) χαρακτήρες$/) do |max|
  name = "a" * 21
  fill_in('user_username',{:with => name })
  fill_in('user_email',{:with => "user@foo.com" })
  fill_in('user_password',{:with => "password" })
  fill_in('user_password_confirmation',{:with => "password" })
  click_button('Εγγραφή')
end

Τότε(/^να εμφανίζει μήνυμα ότι το όνομα που δόθηκε είνα πολύ μεγάλο$/) do
  page.should have_content('Όνομα Χρήστη είναι πολύ μεγάλο')  
end


Όταν(/^το όνομα χρήστη είναι δεσμευμένο$/) do
  FactoryGirl.create(:duplicate_user)
  fill_in('user_username',{:with => "duplicateuser" })
  fill_in('user_email',{:with => "user@foo.com" })
  fill_in('user_password',{:with => "password" })
  fill_in('user_password_confirmation',{:with => "password" })
  click_button('Εγγραφή')
end

Τότε(/^να εμφανίζει μήνυμα ότι το όνομα υπάρχει$/) do
  page.should have_content('Όνομα Χρήστη το έχουν ήδη χρησιμοποιήσει')
end


Όταν(/^η διεύθυνση ηλεκτρονικού ταχυδρομείου υπάρχει$/) do
  FactoryGirl.create(:duplicate_user)
  fill_in('user_username',{:with => "name" })
  fill_in('user_email',{:with => "duplicate@email.com" })
  fill_in('user_password',{:with => "password" })
  fill_in('user_password_confirmation',{:with => "password" })
  click_button('Εγγραφή')
end

Τότε(/^να εμφανίζει μήνυμα λάθους ότι η διεύθυνση υπάρχει$/) do
  page.should have_content('Ηλεκτρονική Διεύθυνση το έχουν ήδη χρησιμοποιήσει')
end

Όταν(/^ο κωδικός είναι κάτω από (\d+) χαρακτήρες$/) do |arg1|
  fill_in('user_username',{:with => "myname" })
  fill_in('user_email',{:with => "example@email.com" })
  fill_in('user_password',{:with => "123" })
  fill_in('user_password_confirmation',{:with => "123" })
  click_button('Εγγραφή')
end

Τότε(/^να εμφανίζει μήνυμα ότι χρειάζεται μεγαλύτερος κωδικός$/) do
  page.should have_content("Κωδικός είναι πολύ μικρό")
end

Όταν(/^το (.*) δεν είναι έγκυρο$/) do |name|
  fill_in('user_email',{:with => "user@email.com" })
  fill_in('user_username',{:with => name })
  fill_in('user_password',{:with => "password" })
  fill_in('user_password_confirmation',{:with => "password" })
  click_button('Εγγραφή')
end

Τότε(/^να εμφανίζει μήνυμα ότι το όνομα που έχει δοθεί δεν είναι έγκυρο$/) do
  page.should have_content('Όνομα Χρήστη είναι άκυρο')
end


Δεδομένου(/^πηγαίνω να συνδεθώ ως χρήστης$/) do
  click_link('Είσοδος')
end


Δεδομένου(/^έχω λογαριασμό με όνομα χρήστη user και κωδικό password$/) do
  FactoryGirl.create(:authenticated_user)
end

Όταν(/^καταχωρήσω στο όνομα χρήστη "([^"]*)" και στο κωδικό "([^"]*)"$/) do |username, password|
  fill_in('session_username',{:with => username })
  fill_in('session_password',{:with => password })
end


Όταν(/^ζητήσω να συνδεθώ$/) do
  click_button('Είσοδος')
end

Τότε(/^να εισέρχομαι στην εφαρμογή ως "([^"]*)"$/) do |username|
  page.should have_content(username)
  page.should have_content("Λογαριασμός")
end

Όταν(/^διαλέξω την επιλογή μη με ξεχάσεις$/) do
  check('session_remember_me')
end

Τότε(/^να μην με ξεχάσει$/) do
  expire_cookies
  visit root_path
  page.should have_content("Λογαριασμός")
end

Δεδομένου(/^ότι είμαι συνδεδεμένος στην εφαρμογή ως "([^"]*)"$/) do |username|
  FactoryGirl.create(:authenticated_user)
  visit login_path
  fill_in('session_username',{:with => username })
  fill_in('session_password',{:with => "password" })
  click_button('Είσοδος')
end

Δεδομένου(/^επιλέγω να δω όλους του χρήστες$/) do
  page.should have_content("Χρήστες")
  click_link("Χρήστες")
end

Τότε(/^να εμφανίζονται όλοι οι χρήστες$/) do
  # Χρειάζεται κάτι καλύτερο - ελέγχει απλά αν εμφανίζει τη συγκεκριμένη σελίδα
  page.should have_content("Όλοι")
end

Δεδομένου(/^ότι είμαι συνδεδεμένος ως διαχειριστής$/) do
  FactoryGirl.create(:admin)
  # Δημιουργία χρήστη για να δοκιμαστεί η διαγραφή
  FactoryGirl.create(:authenticated_user)
  FactoryGirl.create(:user)
  FactoryGirl.create(:duplicate_user)
  visit login_path
  fill_in('session_username',{:with => "admin" })
  fill_in('session_password',{:with => "password" })
  click_button('Είσοδος')
end

Τότε(/^να εμφανίζεται η επιλογή για διαγραφή χρήστη$/) do
  click_link("Χρήστες")
  page.should have_content("Διαγραφή")
end

Δεδομένου(/^είμαι στη σελίδα για εμφάνιση όλων των χρηστών$/) do
  click_link("Χρήστες")
end

Δεδομένου(/^ζητήσω να διαγραφεί ένας χρήστης$/) do
  first(:link, "Διαγραφή").click
end

Τότε(/^να εμφανίζεται μήνυμα ότι η διαγραφή έγινε με επιτυχία$/) do
  # Κάτι καλύτερο - να εμφανίζει τον αριθμό των χρηστών
  page.should have_content("Ο χρήστης διαγράφηκε")
end

Όταν(/^ζητήσω να βγώ από την εφαρμογή ως χρήστης$/) do
  click_link("Έξοδος")
end

Τότε(/^να βλέπω την αρχική σελίδα ως επισκέπτης$/) do
  page.should have_content("Είσοδος")
  page.should have_content("Εγγραφή")
end


Δεδομένου(/^επιλέγω να ανανεώσω τα στοιχεία του λογαριασμού μου$/) do
  # Ελέγχει και gui
  click_link("Ρυθμίσεις")
end

Δεδομένου(/^μου εμφανίζεται η φόρμα για ανανέωση στοιχείων$/) do
  page.should have_content("Όνομα Χρήστη")
  page.should have_content("Ηλεκτρονική Διεύθυνση")
  page.should have_field("user_password")
end

Όταν(/^αλλάξω την διεύθυνση ηλεκτρονικού ταχυδρομείου$/) do
  fill_in('user_email', :with => '')
  fill_in('user_email', :with => 'new@example.com')
end

Όταν(/^ζητήσω να αποθηκευτούν οι αλλαγές$/) do
  click_button("Αποθήκευση Αλλαγών")
end

Τότε(/^να εμφανιστεί μήνυμα ότι η αλλαγή έγινε με επιτυχία$/) do
  page.should have_content("Ο λογαριασμός έχει ανανεωθεί")
end

Όταν(/^καταχωρήσω καινούργιο κωδικό$/) do
  fill_in('user_password', :with => 'password')
  fill_in('user_password_confirmation', :with => 'password')
end

Δεδομένου(/^πηγαίνω στη φόρμα για είσοδο στην εφαρμογή$/) do
  click_link("Είσοδος")
end

Δεδομένου(/^αναφέρω ότι ξέχασα το κωδικό μου$/) do
  click_link("(ξέχασα το κωδικό μου)")

  # εννοείται ότι έχω λογαριασμό
  user =  FactoryGirl.create(:authenticated_user)
end

Δεδομένου(/^μου εμφανίζεται η φόρμα για επαναφορά κωδικού$/) do
  page.should have_content("Ηλεκτρονική Διεύθυνση")
  page.should have_button("Επαναφορά")
end

Όταν(/^καταχωρήσω την ηλεκτρονική διεύθυνση μου$/) do
  fill_in('password_reset_email', :with => 'authenticated@email.com')
end

Όταν(/^ζητήσω να επαναφορά του κωδικού$/) do
  click_button("Επαναφορά")
end

Τότε(/^να λαμβάνω ημήνυμα με υπερσύνδεσμο που θα μου δίνει επιλογή να αλλάξω τον κωδικό$/) do
  pending("Μελέτη κεφαλαίου 7 από το The Cucumber Book")
end

Δεδομένου(/^πηγαίνω στη σελίδα για προσθήκη καινούργιας ροής$/) do
  # pending("να ελέγξει αν υπάρχει η σελίδα και τα στοιχεία της φόρμας για προσθήκη")
  visit add_path
  page.should have_content("Τίτλος")
  page.should have_content("Υπερσύνδεσμος")
end

Όταν(/^ο (.*) είναι έγκυρος$/) do |url, title|
  #  pending("συμπληρώνει στο πεδίο για τον υπερσύνδεσμο τον υπερσύνδεσμο")
  fill_in('feed_url',{:with => url })
  fill_in('feed_title',{:with => title })
end

Όταν(/^o (.*) δεν έχει τη σωστή μορφή$/) do |url|
  fill_in('feed_url',{:with => url })
  fill_in('feed_title',{:with => "title" })
end


Όταν(/^αιτούμαι να προστεθεί$/) do
  #  pending("πατιέται το κουμπί")
  click_button('Προσθήκη')
end

Τότε(/^να εμφανίζεται μήνυμα ότι έχει προστεθεί με επιτυχία$/) do
  # pending("να ελέγχει αν εμφάνησε το μήνυμα και προστέθηκε")
  page.should have_content("επιτυχία")
end

Τότε(/^να εμφανίζεται μήνυμα λάθους σχετικά με τον υπερσύνδεσμο$/) do
  page.should have_content('Υπερσύνδεσμος είναι άκυρο')
end

Δεδομένου(/^πηγαίνω στη σελίδα των συνδρομών$/) do
  pending("Δημιουργία σελίδα ροών - να λαμβάνει υπ όψη το χρήστη")
end

Δεδομένου(/^είμαι εγγεγραμένος στη ροή politis\-news$/) do
  pending("Να δημιουργηθεί από το factory girls συνδρομή και να με εγγράψει")
end

Δεδομένου(/^δεν είμαι εγγεγραμένος στη ροή philenews$/) do
  pending("Να δημιουργηθεί από το factory girls συνδρομή και να μην με εγγράψει")
end

Όταν(/^επιλέγω να εγγραφώ στο ροή philenews$/) do
  pending("Να με εγγράφει στο philenews")
end

Τότε(/^να εμφανίζεται η επιλογή διαγραφής$/) do
  pending("Προφανές αν είναι δυνατό δίπλα από το όνομα της ροής")
end

Τότε(/^να εμφανίζεται στη λίστα με τις συνδρομές μου$/) do
  pending("Προφανές επίσης")
end