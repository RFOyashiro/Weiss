#ifndef CBOARD_H
#define CBOARD_H
#include "CSlot.h"
#include "CCard.h"

class CBoard
{
    private:
        std::vector <CCard> EmptyDeck;

        unsigned Flag_RefreshPoint = 0;
        unsigned Flag_LibraryEmpty = 0;
        unsigned Flag_LevelUp = 0;

        CSlot Library = CSlot (50, "Library", EmptyDeck, true);
        CSlot WaitingRoom = CSlot (50, "Waiting Room", EmptyDeck);
        CSlot Hand = CSlot (50, "Hand", EmptyDeck);
        CSlot Clock = CSlot (50, "Clock", EmptyDeck);
        CSlot Stock = CSlot (50, "Stock", EmptyDeck, true);
        CSlot Memory = CSlot (50, "Memory", EmptyDeck);
        CSlot LevelZone = CSlot (4, "Level Zone", EmptyDeck);
        CSlot FrontRowLeft = CSlot (2, "Front Row Left Slot", EmptyDeck);
        CSlot FrontRowCenter = CSlot (2, "Front Row Center Slot", EmptyDeck);
        CSlot FrontRowRight = CSlot (2, "Front Row Right Slot", EmptyDeck);
        CSlot BackRowLeft = CSlot (2, "Back Row Left Slot", EmptyDeck);
        CSlot BackRowRight = CSlot (2, "Back Row Left Slot", EmptyDeck);
        CSlot Resolution = CSlot (50, "Resolution", EmptyDeck);
        CSlot ClimaxZone = CSlot (2, "Climax Zone", EmptyDeck);
        CSlot FrontRowLeftMarker = CSlot (50, "Marker from Front Row Left Slot", EmptyDeck, true);
        CSlot FrontRowCenterMarker = CSlot (50, "Marker from Front Row Center Slot", EmptyDeck, true);
        CSlot FrontRowRightMarker = CSlot (50, "Marker from Front Row Right Slot", EmptyDeck, true);
        CSlot BackRowLeftMarker = CSlot (50, "Marker from Back Row Left Slot", EmptyDeck, true);
        CSlot BackRowRightMarker = CSlot (50, "Marker Back Row Right Slot", EmptyDeck, true);



    public:
        //constructor
        CBoard(std::vector <CCard> Deck);

        //effect resolution
        void MoveCards(int Value, CSlot & NameFrom, CSlot & NameTo, bool ShuffleSlot = false);
        void Refresh(CSlot &Lib, CSlot &Waiting);
        void Shuffle(CSlot & Slot);
        void RefreshPenality(CSlot & Lib, CSlot & Clo);
        void ChooseCard (CSlot & NameFrom, CSlot & NameTo);
        void LevelUp (CSlot & NameFrom, CSlot & NameTo);

        //global getter
        CSlot Get(CSlot Slot);

        //global setter
        void Set(CSlot Slot);
        void Set(CBoard Board);

        //getter
        CSlot getLibrary();
        CSlot getWaitingRoom();
        CSlot getHand();
        CSlot getClock();
        CSlot getStock();
        CSlot getLevelZone();
        CSlot getFrontRowLeft();
        CSlot getFrontRowCenter();
        CSlot getFrontRowRight();
        CSlot getBackRowLeft();
        CSlot getBackRowRight();
        CSlot getResolution();
        CSlot getClimaxZone();
        CSlot getFrontRowLeftMarker();
        CSlot getFrontRowCenterMarker();
        CSlot getFrontRowRightMarker();
        CSlot getBackRowLeftMarker();
        CSlot getBackRowRightMarker();
        CSlot getMemory();

        //setter
        void setLibrary(const CSlot &value);
        void setWaitingRoom(const CSlot &value);
        void setHand(const CSlot &value);
        void setClock(const CSlot &value);
        void setStock(const CSlot &value);
        void setMemory(const CSlot &value);
        void setLevelZone(const CSlot &value);
        void setFrontRowLeft(const CSlot &value);
        void setFrontRowCenter(const CSlot &value);
        void setFrontRowRight(const CSlot &value);
        void setBackRowLeft(const CSlot &value);
        void setBackRowRight(const CSlot &value);
        void setResolution(const CSlot &value);
        void setClimaxZone(const CSlot &value);
        void setFrontRowLeftMarker(const CSlot &value);
        void setFrontRowCenterMarker(const CSlot &value);
        void setFrontRowRightMarker(const CSlot &value);
        void setBackRowLeftMarker(const CSlot &value);
        void setBackRowRightMarker(const CSlot &value);

};

#endif // CBOARD_H
