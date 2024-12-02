     D SendEscMsg      pr                  extpgm('QMHSNDPM')
     D   MsgID                        7    const
     D   MsgFile                     20    const
     D   MsgDta                      80    const
     D   MsgDtaLen                   10i 0 const
     D   MsgType                     10    const
     D   MsgQ                        10    const
     D   MsgQNbr                     10i 0 const
     D   MsgKey                       4
     D   ErrorDS                     16

     D ErrorDS         ds            16
     D   BytesProv                   10i 0 inz(0)
     D   BytesAvail                  10i 0
     D   ExceptionID                  7

     D MsgDta          s             80
     D MsgKey          s              4

     C                   eval      MsgDta = 'There has been an major error'
     C                   callp     SendEscMsg ('HWD0003':
     C                               'HWMSGS    *LIBL':
     C* This is a comment for Eradani RDi demonstration test
     C* Code for new ITEM Source field
     C* This is some new code for demo
     C* Adding some fields
     C* Increased size of Customer fields
     C* Decreased size of Items fields
     C* We need some more space in some fields in our item and customer file
     C* Some new code for new features on 11-5
     C* Add program logic for new API on 11-1 for some new features
     C* This is more stuff on 10-29
     C* This is a change for our training program to create a conflict
     C* This is a test of gitdiffpro
     C* Another change for update to entry screen on 11-1
     C* A change made for new regulations for the Webinar on 11-8
     C* This is another training change to fix a new problem
     C* Change code for regulation 5678
     C* This has fixed the problem
     C                               MsgDta:
     C                               %len(MsgDta):
     C                               '*DIAG':
     C                               '*PGMBDY':
     C                               3:
     C                               MsgKey:
     C                               ErrorDS)
     C                   eval      *inlr = *on
