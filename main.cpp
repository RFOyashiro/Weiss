#include <iostream>
#include <cstdlib>
#include <ctime>
#include <utility>
#include "CSlot.h"
#include "CCard.h"
#include "CBoard.h"


using namespace std;

namespace card {

    vector <CCard> CreateDeck (){
        cout << "Creating Deck... " << endl;
        vector <CCard> DeckCard;
        CCard Card1 ("\"I'm testing\", Oyashiro");
        CCard Card2 ("\"Does it works\", Oyashiro");
        CCard Card3 ("\"Shuffling\", Oyashiro");
        CCard Card4 ("\"Testing Board\", Oyashiro");
        CCard Card5 ("\"Testing Clock\", Oyashiro");
        CCard Card6 ("\"Levelling\", Oyashiro");
        CCard Card7 ("\"Up Up\", Oyashiro");
        CCard Card8 ("\"One More\", Oyashiro");
        CCard Card9 ("\"Taking Damage\", Oyashiro");
        DeckCard.push_back(Card1);
        DeckCard.push_back(Card2);
        DeckCard.push_back(Card3);
        DeckCard.push_back(Card4);
        DeckCard.push_back(Card5);
        DeckCard.push_back(Card6);
        DeckCard.push_back(Card7);
        DeckCard.push_back(Card8);
        DeckCard.push_back(Card9);
        cout << "Done " << endl;
        return DeckCard;
    }
}

CBoard Board (card::CreateDeck());

namespace global {

    void LoseCheck(CBoard & Board) {
        if(Board.getLevelZone().getNbCards() == 4
                || (Board.getLibrary().getNbCards() == 0
                    && Board.getWaitingRoom().getNbCards() == 0
                    /*&& pas de CX en Resolution*/))
        {
            cout << "You loose !" << endl << endl;
            exit(1);
        }
    }

    void HandleBoardEffect(unsigned Value, CBoard & Board, CSlot From, CSlot To) {
        CBoard TempBoard (Board);
        CSlot TempFrom = TempBoard.Get(From);
        CSlot TempTo = TempBoard.Get(To);
        TempBoard.MoveCards(Value, TempFrom, TempTo);
        TempBoard.Set(TempFrom);
        TempBoard.Set(TempTo);
        Board.Set(TempBoard);
        LoseCheck(Board);
    }
}




namespace Effect {

    //--- Slot Movement ---//

    //Format :  FromTo(int value);

    //--- Card Effect ---//

    //Format : GainX(int value); X is a card attribute such as Soul, Power, Trigger, Level, Cost



    //--- From Library ---//

    void Draw (unsigned value) {
        global::HandleBoardEffect(value, Board, Board.getLibrary(), Board.getHand());
    }

    void Tuto (unsigned value) {
        global::HandleBoardEffect((int) value * -1, Board, Board.getLibrary(), Board.getHand());
    }

    void Mill (unsigned value) {
        global::HandleBoardEffect(value, Board, Board.getLibrary(), Board.getWaitingRoom());
    }

    void BlindStock (unsigned value) {
        global::HandleBoardEffect(value, Board, Board.getLibrary(), Board.getStock());
    }

    void DeckToResolution (unsigned value) { //As for Taking Damage, Brainstorm, ...
        global::HandleBoardEffect(value, Board, Board.getLibrary(), Board.getResolution());
    }

    void PlayFromDeck (unsigned value, CSlot To){
        global::HandleBoardEffect((int) value * -1, Board, Board.getLibrary(), To); //To can be Front Row (L, C, R) or Back Row (L, R)
    }

    void RevealTopDeck (unsigned value);
    void LookTopDeck (unsigned value); //Same as RevealTopDeck(); but the opponent can't see it

    //--- From Waiting Room ---//

    void Salavage (unsigned value) {
        global::HandleBoardEffect((int) value * -1, Board, Board.getWaitingRoom(), Board.getHand());
    }

    void StockFromWaiting (unsigned value) {
        global::HandleBoardEffect((int) value * -1, Board, Board.getWaitingRoom(), Board.getStock());
    }

    void WaitingToResolution (unsigned value) {
        global::HandleBoardEffect(value, Board, Board.getWaitingRoom(), Board.getResolution());
    }


    //--- From Anywhere ---//

    void ToTopDeck (unsigned value, CSlot From);
    void ToBottomDeck (unsigned value, CSlot From);

}

int main()
{
    srand(time(NULL));
    Effect::Draw(2);
    Effect::Mill(3);
    Effect::Tuto(1);
    Effect::BlindStock(1);
    Effect::DeckToResolution(2);
    return 0;
}
