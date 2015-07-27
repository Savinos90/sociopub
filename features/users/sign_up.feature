#language: el
Λειτουργία: Εγγραφή καινούργιου χρήστη
  
  Υπόβαθρο:
    Δεδομένου ότι εισέρχομαι στην εφαρμογή ως επισκέπτης
    Και πηγαίνω να κάνω εγγραφή
    Και μου εμφανίζεται η φόρμα εγγραφής
    
    Περιγραφή Σεναρίου: Επιτυχής εγγραφής
    Όταν το <όνομα χρήστη> είναι έγκυρο
    Και η <ηλεκτρονική διεύθυνση> είναι έγκυρη
    Και ο <κωδικός> που έχω καταχωρήσει είναι έγκυρος
    Και αιτούμαι να εγγραφώ στο σύστημα
    Τότε να εμφανίζεται μήνυμα ότι έχω εγγραφεί με επιτυχία
    Και να εμφανίζεται το προφίλ μου
    
    Παραδείγματα:
    | όνομα χρήστη | ηλεκτρονική διεύθυνση | κωδικός   |
    | john         | john@sociopub.com     | john1234  |
    | alan         | alan@sociopub.gov     | 1234alan  |
    | ada          | ada@sociopub.gov      | helloada! |
    
    Περιγραφή Σεναρίου: Προσπάθεια εγγραφής με Μη έγκυρη διεύθυνση 
    Όταν η <ηλεκτρονική διεύθυνση> δεν έχει τη σωστή μορφή
    Τότε να εμφανίζεται μήνυμα λάθους σχετικά με την ηλεκτρονική διεύθυνση
    
    Παραδείγματα:
    | ηλεκτρονική διεύθυνση |
    | user@foo,com          |
    | user_at_foo.org       |
    | example.user@foo.     |
    | foo@bar_baz.com       |
    | foo@bar+baz.com       |

  Σενάριο: Προσπάθεια εγγραφής με πολύ μεγάλο όνομα χρήστη
    Όταν το όνομα χρήστη είναι πάνω από 20 χαρακτήρες
    Τότε να εμφανίζει μήνυμα ότι το όνομα που δόθηκε είνα πολύ μεγάλο
  
  Σενάριο: Προσπάθεια εγγραφής με όνομα χρήστη που υπάρχει
    Όταν το όνομα χρήστη είναι δεσμευμένο
    Τότε να εμφανίζει μήνυμα ότι το όνομα υπάρχει
    
  Σενάριο: Προσπάθεια εγγραφής με διεύθυνση ηλεκτρονικού ταχυδρομείου που υπάρχει
    Όταν η διεύθυνση ηλεκτρονικού ταχυδρομείου υπάρχει
    Τότε να εμφανίζει μήνυμα λάθους ότι η διεύθυνση υπάρχει
   
  Σενάριο: Προσπάθεια εγγραφής με μικρό κωδικό
    Όταν ο κωδικός είναι κάτω από 6 χαρακτήρες
    Τότε να εμφανίζει μήνυμα ότι χρειάζεται μεγαλύτερος κωδικός
    
    Περιγραφή Σεναρίου: Προσπάθεια εγγραφής με όνομα που περιέχει άλλους χαρακτήρες εκτός από αλφαριθμητικούς
    Όταν το <όνομα χρήστη> δεν είναι έγκυρο
    Τότε να εμφανίζει μήνυμα ότι το όνομα που έχει δοθεί δεν είναι έγκυρο
    
    Παραδείγματα:
    | όνομα χρήστη |
    | user a       |
    | user!        |
    | user,1       |    
