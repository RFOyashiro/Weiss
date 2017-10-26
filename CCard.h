#ifndef CCARD_H
#define CCARD_H
#include <string>
#include <vector>
#include "CEffect.h"

class CCard
{
    private:
        std::string m_Name;
        std::vector <CEffect> m_Effects;
        unsigned m_Etat; // 0 = Not on Board, 1 = Stand, 2 = Rest, 3 = Reverse

    public:
        CCard(std::string Name = "0", std::vector <CEffect> Effects, unsigned Etat = 0);

        std::string getName() const;
        void setName(const std::string &Name);
};

#endif // CCARD_H
