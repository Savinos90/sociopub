##Απαιτήσεις
 Στην Εποχή της Πληροφορίας το φαινόμενο Υπερφόρτωση Πληροφορίας [\[3\]](#user-content-3) έχει πια εξαπλωθεί. Ο κοινωνιολόγος Georg Simmel (1858-1918), υπέθεσε πως η υπερφόρτωση στις αισθήσεις των ανθρώπων του σύγχρονο αστικό κόσμο θα καταστήσει τους κατοίκους της πόλης κατάκοπους και θα συγκρουστεί με την ικανότητά τους να αντιδρούν σε νέες καταστάσεις [\[4\]](#user-content-4).
 Η εφαρμογή αυτή έχει σκοπό να οργανώσει όσο το δυνατό γίνεται το πλήθος της διαδικτυακής πληροφορίας, κυρίως άρθρων, με τρόπο που ο χρήστης να επισκοπεί τη ροή της πληροφορίας πιο εύκολα, και να αποθηκεύει αυτά που τον ενδιαφέρουν.
 
### Συλλέκτης Ροών (Rss Aggregator) [\[2\]](#user-content-2)
Η ανάγκη επισκόπησης πληροφοριών από διαφορετικές ιστοσελίδες, που ενδιαφέρουν το χρήστη, μπορεί να ικανοποιηθεί με τη δημιουργία ενός Συλλέκτη Ροών. Η εφαρμογή  θα έχει τη δυνατότητα να παρουσιάζει ροές από διάφορες ιστοσελίδες οι οποίες παρέχουν τη πληροφορία τους σε μορφή rss [\[1\]](#user-content-1).

Cucumber: ["Rss Aggregator" writen in Cucumber Specification](https://github.com/Savinos90/sociopub/blob/master/features/rssfeed.feature)

### Σελιδοδείκτες (Bookmarks)
Καθημερινώς περνούν από την αντίληψη μας πλήθος πληροφοριών τις οποίες κρίνουμε χρήσιμες αλλά δεν έχουμε το χρόνο να τις διαβάσουμε/επεξεργαστούμε. Επίσης σε αρκετές περιπτώσεις χρειαζόμαστε να ανατρέξουμε σε ένα σύνδεσμο που θυμόμαστε ότι διαβάσαμε κάπου, κάποτε αλλά δυσκολευόμαστε να το βρούμε. Η ανάγκη αποθήκευσης υπερσυνδέσμων για γρήγορη εύρεση τους μπορεί να ικανοποιηθεί μέσω λειτουργίας της εφαρμογής ν' αποθηκεύει υπερσυνδέσμους με οργανωμένο τρόπο με χρήστη ετικετών - tags[\[5\]](#user-content-5).

Cucumber: ["Bookmarks" writen in Cucumber Specification](https://github.com/Savinos90/sociopub/blob/master/features/bookmark.feature) 

### Δέσμες (Bundles)
   Οι σύνδεσμοι που επισκοπούνται καθημερινώς σε μια ροής δεδομένων σ' ένα στιγμιότυπο οθόνης πολλές φορές δεν έχουν κάποια σχέση μεταξύ τους. Αυτό μπορεί να προκαλεί σύγχυση στο χρήστη. Όπως διατυπώνεται και στην ιδέα του George Miller ο ανθρώπινος εγκέφαλος έχει την ιδιότητα να επεξεργάζεται 7 "chunks" πληροφορίας +-2. [6](#user-content-6) Η ανάγκη για παρουσίαση των πληροφοριών ομαδοποιημένα αποπειράται να ικανοποιηθεί με τη δημιουργία δεσμών, όπου ο χρήστης μπορεί να βλέπει τους υπερσυνδέσμους ανα δέσμες βάση κριτηρίων που  ορίζει ο ίδιος. Τα κριτήρια είναι η πηγή της πληροφορίας(ιστιοσελίδα) και οι ετικέτες.
   
Cucumber: ["Bundles" writen in Cucumber Specification](https://github.com/Savinos90/sociopub/blob/master/features/bundle.feature)
Mockups:
- {Mockup Title/Description & Image Link} 

### [1]
 Rss:  Rich Site Summary. Πρότυπο web feed για δημοσίευση περιεχομένου ιστοσελίδων. 
### [2]
 Rss Aggregator: Εφαρμογή που παρουσιάζει τα περιεχόμενα από RSS feed
### [3]
 Ο όρος Υπερφόρτωση Πληροφορίας αναφέρεται στη δυσκολία του ανθρώπου να κατανοήσει ένα γεγονός ούτως ώστε να λάβει της κατάλληλες αποφάσεις λόγω του μεγάλου αριθμού-μεγέθους πληροφορίας.  [Visualization of large category map for Internet browsing](http://www.sciencedirect.com/science/article/pii/S016792360200101X#articles)
### [4]
 [Information Overload](http://www.sagepub.com/edwards/study/materials/reference/77593_15.1ref.pdf)
### [5]
 Tag - ετικέτα, είναι μια μη-ιεραρχημένη λέξη κλειδί ή όρος που αναθέτεται σ' ένα κομμάτι πληροφορίας και βοηθά στη περιγραφή της. [Wikipedia - Tag (metadata)](https://en.wikipedia.org/wiki/Tag_%28metadata%29)
### [6]
 [The Magical Number Seven, Plus or Minus Two: Some Limits on our Capacity for Processing Information](http://psychclassics.yorku.ca/Miller/)