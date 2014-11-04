#language: el
Λειτουργία: Χρήστης

  Σενάριο: Έλεγχος για όνομα και email
    Δεδομένου ότι δημιουργήθηκε ένας νεός χρήστης
    Τότε πρέπει να έχει καταχωρήσει όνομα χρήστη
    Και να έχει καταχωρήσει email
    Και να έχει καταχωρήσει κωδικό 2 φορές
    Και να είναι έγκυρος

  Σενάριο: Δεν έχει καταχωρηθεί όνομα
    Δεδομένου δεν έχει καταχωρηθεί κάποιο όνομα
    Τότε ο χρήστης δεν πρέπει να είναι έγκυρος

  Σενάριο: Πολύ μεγάλο όνομα χρήστη.
    Δεδομένου ότι το όνομα χρήστη είναι πολύ μεγάλο
    Τότε ο χρήστης δεν πρέπει να είναι έγκυρος

    Περιγραφή Σεναρίου: Μη έγκυρος χρήστης
    Δίνεται ένα χρήστης με όνομα <name> και email <email>
    Τότε οι χρήστες δεν πρέπει να είναι έγκυροι
    Παραδείγματα:
    | name | email             |
    | fooa | user@foo,com      |
    | foob | user_at_foo.org   |
    | fooc | example.user@foo. |
    | food | foo@bar_baz.com   |
    | fooe | foo@bar+baz.com   |

    
  Σενάριο: Σύνδεση εγγεραμένου χρήστη 
    Δεδομένου ότι ο χρήστης είναι εγγεγραμένος
    Όταν καταχωρήσει το όνομα χρήστη και κωδικό που του αντιστοιχεί
    Τότε να βλέπει την εξατομικευμένη σελίδα
