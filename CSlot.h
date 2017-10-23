#ifndef ISLOT_H
#define ISLOT_H
#include <vector>
#include <string>
#include "CCard.h"

class CSlot
{
    private:
        std::vector <CCard> m_Cards; //Cards in the slot
        unsigned m_NbCards;          //Number of cards in the slot
        unsigned m_CardLimit;  //Maximum number of cards in the slot
        std::string m_Name;    //Name of the slot
        bool m_isClosed;

    public:
        CSlot (unsigned CardLimit, std::string Name, std::vector <CCard> Cards, bool isClosed = false);

        void AddCard(CCard Card, CSlot & From);                       //Adding a card to the slot
        void RemoveCard(CCard Card, CSlot & Destination);             //Remove a specific card from the slot
        void RemoveCard(unsigned NumberRemoved, CSlot & Destination); //Remove X cards from the slot
        CCard SearchCard(std::string Name);
        CCard SearchCard(unsigned Num);
        void ShowSlot();

        std::string getName() const;
        void setCards(const std::vector<CCard> &Cards);
        void setNbCards(const unsigned &NbCards);
        void setCardLimit(const unsigned &CardLimit);
        void setName(const std::string &Name);
        std::vector<CCard> getCards() const;
        unsigned getNbCards() const;
        unsigned getCardLimit() const;
        bool getIsClosed() const;
};

#endif // ISLOT_H
