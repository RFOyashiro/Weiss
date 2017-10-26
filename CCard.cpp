#include "CCard.h"

void CCard::setName(const std::string &Name)
{
    m_Name = Name;
}

CCard::CCard(std::string Name, std::vector<CEffect> Effects, unsigned Etat)
    : m_Name (Name), m_Effects (Effects), m_Etat (Etat)
{}

std::string CCard::getName() const
{
    return m_Name;
}
