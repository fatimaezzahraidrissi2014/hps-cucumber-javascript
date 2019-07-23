# language: fr

Fonctionnalité: Bad usage Fr
    As a lazy coffee user
    I can ignore the message displayed by the machine
    So I can have coffee and let other people have to clean after me
    
  Contexte:
    Etant donné que ceci est un background

  @to_implement
  Scénario: Full grounds does not block coffee
    # You keep getting coffee even if the "Empty grounds" message is displayed. That said it's not a fantastic idea, you'll get ground everywhere when you'll decide to empty it.
    Etant donné que the coffee machine is started
    Et I handle everything except the grounds
    Quand I take "50" coffees
    Alors message "Empty grounds" should be displayed
    Et coffee should be served

  Plan du Scénario: Messages are based on language
    # Well, sometimes, you just get a coffee.
    Quand I start the coffee machine using language "<language>"
    Alors message "<ready_message>" should be displayed

    @WIP
    Exemples:
      | language | ready_message | hiptest-uid |
      | en | Ready |  |
      | fr | Pret |  |
