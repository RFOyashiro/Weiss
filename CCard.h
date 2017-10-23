#ifndef CCARD_H
#define CCARD_H
#include <string>

class CCard
{
    private:
        std::string m_Name;
    public:
        CCard(std::string Name = "0");

        std::string getName() const;
        void setName(const std::string &Name);
};

#endif // CCARD_H
