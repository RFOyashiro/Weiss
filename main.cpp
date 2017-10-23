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

    void HandleEffect(unsigned Value, CBoard & Board, CSlot From, CSlot To) {
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

namespace effect {

    //--- From Library ---//

    void Draw (unsigned value) {
        global::HandleEffect(value, Board, Board.getLibrary(), Board.getHand());
    }

    void Tuto (unsigned value) {
        global::HandleEffect((int) value * -1, Board, Board.getLibrary(), Board.getHand());
    }

    void Mill (unsigned value) {
        global::HandleEffect(value, Board, Board.getLibrary(), Board.getWaitingRoom());
    }

    void BlindStock (unsigned value) {
        global::HandleEffect(value, Board, Board.getLibrary(), Board.getStock());
    }

    void DeckToResolution (unsigned value) {
        global::HandleEffect(value, Board, Board.getLibrary(), Board.getResolution());
    }

    void PlayFromDeck (unsigned value, CSlot To){
        global::HandleEffect((int) value * -1, Board, Board.getLibrary(), To); //To can be Front Row (L, C, R) or Back Row (L, R)
    }

    void RevealTopDeck (unsigned value);
    void LookTopDeck (unsigned value);

    //--- From Waiting Room ---//

    void Salavage (unsigned value) {
        global::HandleEffect((int) value * -1, Board, Board.getWaitingRoom(), Board.getHand());
    }

    void UnMill (unsigned value) {
        global::HandleEffect((int) value * -1, Board, Board.getWaitingRoom(), Board.getLibrary());
    }

    void StockFromWaiting (unsigned value) {
        global::HandleEffect((int) value * -1, Board, Board.getWaitingRoom(), Board.getStock());
    }

    void WaitingToResolution (unsigned value) {
        global::HandleEffect(value, Board, Board.getWaitingRoom(), Board.getResolution());
    }


}

int main()
{
    srand(time(NULL));
    effect::Draw(2);
    effect::Mill(3);
    effect::Tuto(1);
    effect::BlindStock(1);
    effect::DeckToResolution(2);
    return 0;
}
