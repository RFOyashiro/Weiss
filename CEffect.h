#ifndef CEFFECT_H
#define CEFFECT_H
#include <vector>
#include <string>
#include "CCost.h"


class CEffect
{
    private:
        char m_Type; //A, C or S
        std::string m_Timing; //[Self or Other];From;To
                              //Only if Type = A
        std::string m_Condtion; //None or
        std::vector <std::pair <std::string, int>> m_Effect;
        std::string m_Cost;

    public:
        CEffect(char Type, std::string Cost, std::string Timing, std::string Effect, std::string Condition);
};

#endif // CEFFECT_H


//[A] [Discard a card from your hand to the Waiting Room] When this is placed from the Stage to the Waiting Room, you may pay cost.
//If so, look at up to 4 cards from top of your Library and search for up to 1 ::Magic:: Character, reveal it, put it in your hand,
//and put the rest in the Waiting Room.

/*Type = "A";
Timing = "Self;Stage;Waiting";
Condition = "None";
Effect = "DeckResolution;4;ResolutionHand;-1;ReolutionWainting;3";
Cost = "HandWaiting;-1";*/
