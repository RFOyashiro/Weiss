#include "CCard.h"

void CCard::setName(const std::string &Name)
{
    m_Name = Name;
}

CCard::CCard(std::string Name)
    : m_Name (Name)
{}

std::string CCard::getName() const
{
    return m_Name;
}
