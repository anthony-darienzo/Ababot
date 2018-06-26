GIMME random
GIMME math
IN MAI pyxdameraulevenshtein GIMME damerau_levenshtein_distance AND normalized_damerau_levenshtein_distance

SO IM LIKE splitStr WIT string AND batch_size AND phraseDelimiter CAN HAZ " " OK?
    stringArray CAN HAZ INVISIBLE LIST
    GIMME EACH word IN UR string OWN split WIT phraseDelimiter OK?
        stringArray ADDED word OK
    l CAN HAZ BIGNESS stringArray OK
    GIMME EACH chunk IN UR NUMBRZ EASTERBUNNY AND l AND batch_size OK?
        wordBlock CAN HAZ INVISIBLE STRING
        GIMME EACH w IN UR stringArray SOME chunk ? min THEZ chunk ALONG WITH batch_size AND l OK!?
            wordBlock GETZ ANOTHR w ALONG WITH " "
        U BORROW wordBlock

ME MAKE reader?
    SO IM LIKE __init__ WIT ME OK?
        MY knownWords CAN HAZ INVISIBLE BUCKET
    SO IM LIKE read WIT ME AND string AND count AND phraseDelimiter CAN HAZ "." OK?
        sentences CAN HAZ INVISIBLE LIST
        GIMME EACH sentence IN UR string OWN split WIT phraseDelimiter OK?
            sentences ADDED sentence OK
        GIMME EACH sentenceNo IN UR NUMBRZ BIGNESS sentences OK!?
            words CAN HAZ INVISIBLE LIST
            GIMME EACH w IN UR splitStr WIT sentences LOOK AT sentenceNo ! AND count OK?
              words ADDED w OK
            GIMME EACH i IN UR NUMBRZ BIGNESS words OK !?
                readWord CAN HAZ words LOOK AT i !
                IZ readWord AINT IN UR MY knownWords ?
                    MY knownWords LOOK AT readWord ! CAN HAZ word THEZ readWord OK

                IZ i KINDA LIKE EASTERBUNNY?
                    PLZ?
                        MY knownWords LOOK AT "." ! OWN checkSuccessor WIT MY knownWords LOOK AT readWord ! OK
                    O NOES KeyError?
                        INVISIBLE
                PLZ?
                    nextWord CAN HAZ words LOOK AT i ALONG WITH CHEEZBURGER !
                O NOES IndexError?
                    PLZ?
                        nextSentence CAN HAZ sentences LOOK AT sentenceNo ALONG WITH ANTI CHOKOLET !
                    O NOES IndexError?
                        nextSentence CAN HAZ INVISIBLE STRING
                    IZ nextSentence KINDA NOT LIKE INVISIBLE STRING?
                        nextWord CAN HAZ "."
                    NOPE?
                        nextWord CAN HAZ "__EOF__"

                IZ nextWord AINT IN UR MY knownWords?
                    MY knownWords LOOK AT nextWord ! CAN HAZ word THEZ nextWord OK
                MY knownWords LOOK AT readWord ! OWN checkSuccessor WIT ME OWN knownWords LOOK AT nextWord !!

        MY sentences CAN HAZ sentences

    SO IM LIKE predict WIT ME AND previousWord OK?
        U TAKE ME OWN knownWords LOOK AT previousWord ! OWN pickNextWord THING


    SO IM LIKE generateSentence WIT ME AND firstWord OK?
        nextWord CAN HAZ MY knownWords LOOK AT firstWord OK OWN pickNextWord THING
        sentenceArray CAN HAZ INVISIBLE LIST
        sentence CAN HAZ INVISIBLE STRING
        sentenceArray ADDED firstWord OK
        sentenceArray ADDED nextWord OK
        WHILE I CUTE?
            IZ nextWord KINDA NOT LIKE "." & nextWord KINDA NOT LIKE "__EOF__"?
              nextWord CAN HAZ MY knownWords LOOK AT nextWord OK OWN pickNextWord THING
              sentenceArray ADDED nextWord OK
            I GIVE UP?
              KTHXBYE
        GIMME EACH word IN UR sentenceArray?
            IZ WIT word KINDA NOT LIKE "." OK & WIT word KINDA NOT LIKE "__EOF__" OK?
                sentence GETZ ANOTHR word ALONG WITH " "
            I GIVE UP?
                sentence CAN HAZ sentence LOOK AT? ANTI CHEEZBURGER OK
                sentence GETZ ANOTHR "."
        U TAKE sentence

ME MAKE word?
    SO IM LIKE __init__ WIT ME AND word OK?
        MY name CAN HAZ word
        MY successors CAN HAZ dictionary THING
    SO IM LIKE checkSuccessor WIT ME AND nextWord OK?
        IZ WIT MY successors OWN has WIT nextWord OK OK?
            MY successors OWN augmentOccurence WIT nextWord OK
        OR IZ WIT AINT MY successors OWN has WIT nextWord OK OK?
            MY successors OWN addToDictionary WIT nextWord OK
        I GIVE UP?
            VISIBLE "The word" ALONG WITH MY name ALONG WITH "has failed to add a successor." OK
    SO IM LIKE pickNextWord MYSELF?
        MY successors OWN organizeWordsToWeightedArray WIT OK
        PLZ?
            U TAKE random OWN choices WIT ME OWN successors OWN wordArray AND MY successors OWN wordWeights OK LOOK AT EASTERBUNNY OK
        O NOES IndexError?
            U TAKE "__EOF__"


ME MAKE dictionary?
    SO IM LIKE __init__ MYSELF?
        MY totalSuccessors CAN HAZ EASTERBUNNY
        MY words CAN HAZ INVISIBLE BUCKET
    SO IM LIKE has WIT ME AND word OK?
        IZ word OWN name IN UR MY words?
            U TAKE YEAH
        I GIVE UP?
            U TAKE MEH
    SO IM LIKE addToDictionary WIT ME AND word OK?
        MY totalSuccessors GETZ ANOTHR CHEEZBURGER
        MY words LOOK AT word OWN name OK CAN HAZ BUCKET
            "count" ? CHEEZBURGER AND
        OK
    SO IM LIKE augmentOccurence WIT ME AND word OK?
        MY totalSuccessors GETZ ANOTHR CHEEZBURGER
        MY words LOOK AT word OWN name OK LOOK AT "count" OK CAN HAZ MY words LOOK AT word OWN name OK LOOK AT "count" OK ALONG WITH CHEEZBURGER
    SO IM LIKE organizeWordsToWeightedArray MYSELF?
        MY wordArray CAN HAZ INVISIBLE LIST
        MY wordWeights CAN HAZ INVISIBLE LIST
        GIMME EACH name AND word IN UR MY words OWN items WIT OK?
            MY words LOOK AT name OK LOOK AT "probability" OK CAN HAZ MY words LOOK AT name OK LOOK AT "count" OK SMASHES INTO MY totalSuccessors
            MY wordArray ADDED name OK
            MY wordWeights ADDED WIT word LOOK AT "probability" OK!!

SO IM LIKE read_file WIT filename OK?
    WIF open WIT filename AND "r" OK LIKE file?
        contents CAN HAZ file OWN read THING OWN replace WIT FALLINN AND " " OK
    U TAKE contents

kiwi CAN HAZ reader WIT OK

kiwi OWN read WIT read_file WIT "ababouposts.txt" OK AND FOUR AND "/" OK

genSentences CAN HAZ INVISIBLE LIST
genScores CAN HAZ INVISIBLE LIST
GIMME EACH i IN UR NUMBRZ 20 OK?
    pickedWord CAN HAZ random OWN choice WIT STUFF kiwi OWN knownWords OWN keys THINGZ OK OK
    sentence CAN HAZ kiwi OWN generateSentence WIT pickedWord!
    d CAN HAZ math OWN inf
    GIMME EACH s IN UR kiwi OWN sentences?
        tmp_d CAN HAZ damerau_levenshtein_distance WIT sentence AND s OK
        d CAN HAZ min WIT d AND tmp_d OK
    genSentences ADDED sentence OK
    genScores ADDED d OK
bestSentence CAN HAZ genSentences LOOK AT genScores OWN index WIT max WIT genScores OK OK OK
VISIBLE bestSentence OK
