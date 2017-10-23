#include "CSlot.h"
#include <vector>
#include <iostream>

CCard Empty ("");

std::string CSlot::getName() const
{
    return m_Name;
}


void CSlot::setCards(const std::vector<CCard> &Cards)
{
    m_Cards = Cards;
}

void CSlot::setNbCards(const unsigned &NbCards)
{
    m_NbCards = NbCards;
}

void CSlot::setCardLimit(const unsigned &CardLimit)
{
    m_CardLimit = CardLimit;
}

void CSlot::setName(const std::string &Name)
{
    m_Name = Name;
}

std::vector<CCard> CSlot::getCards() const
{
    return m_Cards;
}

unsigned CSlot::getNbCards() const
{
    return m_NbCards;
}

unsigned CSlot::getCardLimit() const
{
    return m_CardLimit;
}

bool CSlot::getIsClosed() const
{
    return m_isClosed;
}

CSlot::CSlot(unsigned CardLimit, std::__cxx11::string Name, std::vector<CCard> Cards, bool isClosed)
    : m_Cards (Cards), m_CardLimit (CardLimit), m_Name (Name), m_NbCards (m_Cards.size()), m_isClosed (isClosed)
{}

void CSlot::AddCard(CCard Card, CSlot & From)
{
    std::cout << "Adding " << ((m_isClosed) ? "a card" : Card.getName()) << " to " << m_Name << " from " << From.getName() << "." << std::endl;


    if (m_NbCards == m_CardLimit)
    {
        std::cout << "Card Limit acheived" << std::endl;
        return;
    }
    m_Cards.push_back(Card);
    m_NbCards++;


}

void CSlot::RemoveCard(CCard Card, CSlot & Destination)
{
    for (unsigned i (0); i < m_Cards.size(); i++)
        if (Card.getName() == m_Cards[i].getName())
        {
            Destination.AddCard(m_Cards[i], *this);
            std::cout << "Removing " << m_Cards[i].getName() << " from " << m_Name << " to " << Destination.getName() << "." << std::endl;
            m_Cards.erase(m_Cards.begin()+i);
            m_NbCards--;
            return;
        }
    std::cout << "This card is not in this slot." << std::endl;
}

void CSlot::RemoveCard(unsigned NumberRemoved, CSlot & Destination)
{
    for (unsigned i (0); i < NumberRemoved; i++)
    {
        if (m_NbCards == 0)
        {
            std::cout << "No more cards in this zone" << std::endl;
            return;
        }

        Destination.AddCard(m_Cards[0], *this);
        m_Cards.erase(m_Cards.begin());
        m_NbCards--;
        std::cout << "Removing 1 card from " << m_Name << " to " << Destination.getName() << "." << std::endl << std::endl;
    }
}

CCard CSlot::SearchCard(std::__cxx11::string Name)
{
    for (unsigned i (0); i < m_Cards.size(); ++i)
        if (m_Cards[i].getName() == Name) return m_Cards[i];

    return Empty;

}

CCard CSlot::SearchCard(unsigned Num)
{
    if (Num <= 0)
    {
        return Empty;
    }
    return m_Cards[Num-1];
}

void CSlot::ShowSlot()
{
    std::cout << "Looking at " << m_Name << std::endl;
    for (unsigned i (0); i < m_Cards.size(); ++i)
        std::cout << i+1 << ". " << m_Cards[i].getName() << std::endl;
}

