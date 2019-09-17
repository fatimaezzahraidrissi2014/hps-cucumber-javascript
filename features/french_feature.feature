# language: fr

Fonctionnalité: Support internationalisation
  As a polyglot coffee lover
  I can select the language on the coffee machine
  So I can practice my use of greetings in several languages

Contexte:
  Soit a user

Scénario: No messages are displayed when machine is shut down
  Etant donné the coffee machine is started
  Lorsque I shutdown the coffee machine
  Alors message "" should be displayed

Plan du scénario: Messages are based on language
  # Well, sometimes, you just get a coffee.
  Quand I start the coffee machine using language "<language>"
  Alors message "<ready_message>" should be displayed
  Et It displays "<attempts>" attempts remaining

  Exemples: Attempts
    | attempts |
    | one      |
    | two      |
    | three    |

  Exemples:
    | language | ready_message |
    | en       | Ready         |
    | fr       | Pret          |
