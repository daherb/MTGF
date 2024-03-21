abstract MTG = {
    flags startcat = Card ;

    cat
        Card ;

        -- loosely based on mtg.fandom.com/wiki/Parts_of_a_card?file=Parts_of_a_Magic_card.jpg
        Name ;              -- title
        ManaCost ;          -- mana cost, e.g. 4RR (4 generic + 2 red mana)
        TypeLine ;          -- card type including subtypes, e.g. Creature - Dragon
     -- Expansion ;         -- e.g. M10
        Text ;              -- abilities & flavor text
        Stats ;             -- power and toughness, e.g. 5/5 
     -- Details ;           -- fine print: artist, collector number...

        MainType ;          -- e.g. "Creature"
        SubType ;           -- e.g. "Dragon"
        Effect ;            -- e.g. "Flying" (but possibly also longer text)
        [Effect]{0} ;
        Flavor ;            -- flavor text (unconstrained language)
        Power ;             -- usually a positive integer
        Toughness ;         -- usually a positive integer

        ActivationCost ;    -- cost for activating an effect
        Keyword ;           -- e.g. "Defender"
        Explanation ;       -- explanation of an effect 

        Tap ;               -- "tap symbol" (for activation costs)

    fun 
        card : Name -> ManaCost -> TypeLine -> Text -> Stats -> Card ;

        typeLine : MainType -> SubType -> TypeLine ;
        text : [Effect] -> Flavor -> Text ;
        stats : Power -> Toughness -> Stats ;

        landMainType : MainType ;
        creatureMainType : MainType ;
        -- ...
        effect : ActivationCost -> Keyword -> Explanation -> Effect ;

        activationCost : ManaCost -> Tap -> ActivationCost ;
}