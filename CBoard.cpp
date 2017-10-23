#include "CBoard.h"
#include <iostream>

CSlot CBoard::getLibrary()
{
    return Library;
}

CSlot CBoard::getWaitingRoom()
{
    return WaitingRoom;
}

CSlot CBoard::getHand()
{
    return Hand;
}

CSlot CBoard::getClock()
{
    return Clock;
}

CSlot CBoard::getStock()
{
    return Stock;
}

CSlot CBoard::getLevelZone()
{
    return LevelZone;
}

CSlot CBoard::getFrontRowLeft()
{
    return FrontRowLeft;
}

CSlot CBoard::getFrontRowCenter()
{
    return FrontRowCenter;
}

CSlot CBoard::getFrontRowRight()
{
    return FrontRowRight;
}

CSlot CBoard::getBackRowLeft()
{
    return BackRowLeft;
}

CSlot CBoard::getBackRowRight()
{
    return BackRowRight;
}

CSlot CBoard::getResolution()
{
    return Resolution;
}

CSlot CBoard::getClimaxZone()
{
    return ClimaxZone;
}

CSlot CBoard::getFrontRowLeftMarker()
{
    return FrontRowLeftMarker;
}

CSlot CBoard::getFrontRowCenterMarker()
{
    return FrontRowCenterMarker;
}

CSlot CBoard::getFrontRowRightMarker()
{
    return FrontRowRightMarker;
}

CSlot CBoard::getBackRowLeftMarker()
{
    return BackRowLeftMarker;
}

CSlot CBoard::getBackRowRightMarker()
{
    return BackRowRightMarker;
}

void CBoard::setLibrary(const CSlot &value)
{
    Library = value;
}

void CBoard::setWaitingRoom(const CSlot &value)
{
    WaitingRoom = value;
}

void CBoard::setHand(const CSlot &value)
{
    Hand = value;
}

void CBoard::setClock(const CSlot &value)
{
    Clock = value;
}

void CBoard::setStock(const CSlot &value)
{
    Stock = value;
}

void CBoard::setMemory(const CSlot &value)
{
    Memory = value;
}

void CBoard::setLevelZone(const CSlot &value)
{
    LevelZone = value;
}

void CBoard::setFrontRowLeft(const CSlot &value)
{
    FrontRowLeft = value;
}

void CBoard::setFrontRowCenter(const CSlot &value)
{
    FrontRowCenter = value;
}

void CBoard::setFrontRowRight(const CSlot &value)
{
    FrontRowRight = value;
}

void CBoard::setBackRowLeft(const CSlot &value)
{
    BackRowLeft = value;
}

void CBoard::setBackRowRight(const CSlot &value)
{
    BackRowRight = value;
}

void CBoard::setResolution(const CSlot &value)
{
    Resolution = value;
}

void CBoard::setClimaxZone(const CSlot &value)
{
    ClimaxZone = value;
}

void CBoard::setFrontRowLeftMarker(const CSlot &value)
{
    FrontRowLeftMarker = value;
}

void CBoard::setFrontRowCenterMarker(const CSlot &value)
{
    FrontRowCenterMarker = value;
}

void CBoard::setFrontRowRightMarker(const CSlot &value)
{
    FrontRowRightMarker = value;
}

void CBoard::setBackRowLeftMarker(const CSlot &value)
{
    BackRowLeftMarker = value;
}

void CBoard::setBackRowRightMarker(const CSlot &value)
{
    BackRowRightMarker = value;
}

CSlot CBoard::getMemory()
{
    return Memory;
}

CBoard::CBoard(std::vector<CCard> Deck)
{
    Library.setCards(Deck);
    Library.setNbCards(Deck.size());
}

void CBoard::MoveCards(int Value, CSlot &NameFrom, CSlot &NameTo, bool ShuffleSlot)
{
    if (Value < 0)
        for (int i (0); i > Value; i--){
            ChooseCard (NameFrom, NameTo);
            if (Flag_LibraryEmpty == 1 && NameFrom.getName() == "Library") Refresh(NameFrom, ((NameTo.getName() == "Waiting Room") ? NameTo : WaitingRoom));
        }
    else
    {
        for (int i (0); i < Value; i++)
        {
            if (ShuffleSlot) Shuffle(NameFrom);
            NameFrom.RemoveCard(1, NameTo);
            if (NameFrom.getNbCards() == 0 && NameFrom.getName() == "Library") Flag_LibraryEmpty++;
            if (NameTo.getNbCards() >= 7 && NameTo.getName() == "Clock") Flag_LevelUp++;
            if (Flag_LibraryEmpty == 1 && NameFrom.getName() == "Library") Refresh(NameFrom, ((NameTo.getName() == "Waiting Room") ? NameTo : WaitingRoom));
            if (Flag_LevelUp == 1 && NameTo.getName() == "Clock") LevelUp (NameTo, ((NameFrom.getName() == "Waiting Room") ? NameFrom : WaitingRoom));
        }
    }
    if (Flag_RefreshPoint > 0) RefreshPenality(NameFrom, ((NameTo.getName() == "Clock") ? NameTo : Clock));
}

void CBoard::Refresh(CSlot & Lib, CSlot & Waiting)
{
    std::cout << "Refreshing" << std::endl;
    if(Waiting.getNbCards() == 0)
    {
        Flag_LibraryEmpty--;
        return;
    }
    MoveCards(Waiting.getNbCards(), Waiting, Lib);
    Shuffle(Lib);
    Flag_RefreshPoint++;
    Flag_LibraryEmpty--;
}

void CBoard::Shuffle(CSlot & Slot)
{
    std::vector <CCard> Cards = Slot.getCards();
    for (unsigned i (0); i < Cards.size(); i++)
    {
        unsigned j (rand() % Cards.size());
        std::swap(Cards[i], Cards[j]);
    }
    Slot.setCards(Cards);
}

void CBoard::RefreshPenality(CSlot & Lib, CSlot & Clo)
{
    for (; 0 < Flag_RefreshPoint;)
    {
        Flag_RefreshPoint--;
        MoveCards(1, Lib, Clo);
    }
}

void CBoard::ChooseCard(CSlot & NameFrom, CSlot & NameTo)
{
    unsigned Card = 0;
    CCard Empty = NameFrom.SearchCard(Card);
    while (Empty.getName() == "")
    {
        NameFrom.ShowSlot();
        std::cout << "Card Num : ";
        std::cin >> Card;
        Empty = NameFrom.SearchCard(Card);
        NameFrom.RemoveCard(Empty, NameTo);
    }
    if (NameFrom.getNbCards() == 0 && NameFrom.getName() == "Library") Flag_LibraryEmpty++;
}

void CBoard::LevelUp(CSlot &NameFrom, CSlot &NameTo)
{
    Flag_LevelUp--;
    std::vector <CCard> Temp = EmptyDeck;
    if (NameFrom.getNbCards() > 7)
    {
        for (unsigned i (7); i < NameFrom.getNbCards(); i++)
            Temp.push_back(NameFrom.getCards()[i]);
    }
    std::cout << std::endl << "Level up !" << std::endl
              << "You are leveling to level " << LevelZone.getNbCards()+1 << std::endl;
    ChooseCard(NameFrom, LevelZone);
    MoveCards(6, NameFrom, NameTo);
    NameFrom.setCards(Temp);
}

CSlot CBoard::Get(CSlot Slot)
{
    if (Slot.getName() == "Library") return this->getLibrary();
    if (Slot.getName() == "Waiting Room") return this->getWaitingRoom();
    if (Slot.getName() == "Hand") return this->getHand();
    if (Slot.getName() == "Clock") return this->getClock();
    if (Slot.getName() == "Stock") return this->getStock();
    if (Slot.getName() == "Memory")  return this->getMemory();
    if (Slot.getName() == "Level Zone") return this->getLevelZone();
    if (Slot.getName() == "Front Row Left Slot") return this->getFrontRowLeft();
    if (Slot.getName() == "Front Row Center Slot") return this->getFrontRowCenter();
    if (Slot.getName() == "Front Row Right Slot") return this->getFrontRowRight();
    if (Slot.getName() == "Back Row Left Slot") return this->getBackRowLeft();
    if (Slot.getName() == "Back Row Left Slot") return this->getBackRowRight();
    if (Slot.getName() == "Resolution") return this->getResolution();
    if (Slot.getName() == "Climax Zone") return this->getClimaxZone();
    if (Slot.getName() == "Marker from Front Row Left Slot") return this->getFrontRowLeftMarker();
    if (Slot.getName() == "Marker from Front Row Center Slot") return this->getFrontRowCenterMarker();
    if (Slot.getName() == "Marker from Front Row Right Slot")  return this->getFrontRowRightMarker();
    if (Slot.getName() == "Marker from Back Row Left Slot") return this->getBackRowLeftMarker();
    if (Slot.getName() == "Marker Back Row Right Slot") return this->getBackRowRightMarker();
    return CBoard(EmptyDeck).getLibrary();
}

void CBoard::Set(CSlot Slot)
{
    if (Slot.getName() == "Library") this->setLibrary(Slot);
    if (Slot.getName() == "Waiting Room") this->setWaitingRoom(Slot);
    if (Slot.getName() == "Hand") this->setHand(Slot);
    if (Slot.getName() == "Clock") this->setClock(Slot);
    if (Slot.getName() == "Stock") this->setStock(Slot);
    if (Slot.getName() == "Memory")  this->setMemory(Slot);
    if (Slot.getName() == "Level Zone") this->setLevelZone(Slot);
    if (Slot.getName() == "Front Row Left Slot") this->setFrontRowLeft(Slot);
    if (Slot.getName() == "Front Row Center Slot") this->setFrontRowCenter(Slot);
    if (Slot.getName() == "Front Row Right Slot") this->setFrontRowRight(Slot);
    if (Slot.getName() == "Back Row Left Slot") this->setBackRowLeft(Slot);
    if (Slot.getName() == "Back Row Left Slot") this->setBackRowRight(Slot);
    if (Slot.getName() == "Resolution") this->setResolution(Slot);
    if (Slot.getName() == "Climax Zone") this->setClimaxZone(Slot);
    if (Slot.getName() == "Marker from Front Row Left Slot") this->setFrontRowLeftMarker(Slot);
    if (Slot.getName() == "Marker from Front Row Center Slot") this->setFrontRowCenterMarker(Slot);
    if (Slot.getName() == "Marker from Front Row Right Slot")  this->setFrontRowRightMarker(Slot);
    if (Slot.getName() == "Marker from Back Row Left Slot") this->setBackRowLeftMarker(Slot);
    if (Slot.getName() == "Marker Back Row Right Slot") this->setBackRowRightMarker(Slot);
}

void CBoard::Set(CBoard Board)
{
    this->setLibrary(Board.getLibrary());
    this->setWaitingRoom(Board.getWaitingRoom());
    this->setHand(Board.getHand());
    this->setClock(Board.getClock());
    this->setStock(Board.getStock());
    this->setMemory(Board.getMemory());
    this->setLevelZone(Board.getLevelZone());
    this->setFrontRowLeft(Board.getFrontRowLeft());
    this->setFrontRowCenter(Board.getFrontRowCenter());
    this->setFrontRowRight(Board.getFrontRowRight());
    this->setBackRowLeft(Board.getBackRowLeft());
    this->setBackRowRight(Board.getBackRowRight());
    this->setResolution(Board.getResolution());
    this->setClimaxZone(Board.getClimaxZone());
    this->setFrontRowLeftMarker(Board.getFrontRowLeftMarker());
    this->setFrontRowCenterMarker(Board.getFrontRowCenterMarker());
    this->setFrontRowRightMarker(Board.getFrontRowRightMarker());
    this->setBackRowLeftMarker(Board.getBackRowLeftMarker());
    this->setBackRowRightMarker(Board.getBackRowRightMarker());
}
