#language: el
Λειτουργία: συνδρομής και διαγραφής σε ροή
  
  Υπόβαθρο:
    Δεδομένου ότι εισέρχομαι στην εφαρμογή ως Χρήστης
    Και δεν είμαι εγγεγραμένος στη ροή theguardian με υπερσύνδεσμο http://www.theguardian.com/uk/rss
    Αλλά είμαι εγγεγραμένος στη ροή wired με υπερσύνδεσμο http://www.wired.com/feed

# Σενάριο: εγγραφής σε ροή
#   Όταν ζητώ να εγγραφώ στη ροή theguardian
#   Τότε να εμφανίζεται η επιλογή διαγραφής για τη ροή theguardian
    
# Σενάριο: διαγραφής από ροή
#   Όταν επιλέγω να ακυρώσω την εγγραφή μου στη ροή politis-news
#   Τότε να εμφανίζεται η επιλογή εγγραφής στη ροή politis-news
   
  Περιγραφή Σεναρίου: προσθήκης έγκυρου υπερσυνδέσμου ροής
  Όταν δίνω τον <υπερσύνδεσμο>
  Και ζητώ να προστεθεί στις συνδρομές μου
  Τότε να προστίθεται στις συνδρομές μου
  Και να εμφανίζεται μήνυμα ότι Έχεις εγγραφεί στη ροή
  
    Παραδείγματα:
    | υπερσύνδεσμο                                                            |
    | http://www.paideia-news.com/rss/news.xml                                |
    | http://www.philenews.com/Publications/RssModule/rss.aspx?CategoryId=399 |
    | http://www.politis-news.com/rss/news.xml                                |
    | http://www.sigmalive.com/rss                                            |

    Περιγραφή Σεναρίου: προσθήκης μη έγκυρου υπερσύνδεσμου ροής 
    Όταν δίνω τον <υπερσύνδεσμο>
    Και ζητώ να προστεθεί στις συνδρομές μου
#    Τότε να μην προστίθεται στις συνδρομές μου
    Τότε να εμφανίζεται μήνυμα ότι Τι εν τούτο που μου δωκες
    
    Παραδείγματα:
    | υπερσύνδεσμο                              |
    | ftp                                       |
    | htp://www                                 |
    | www.sigmalive.com                         |
    | http://www.paideia-news .com/rss/news.xml |
