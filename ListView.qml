import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

ListView{
    id: view
    model: 20         // модель из с++
    delegate: Rectangle {
        width: parent.width
        height: 50
        border.color: "black"


    }
}//---------ListView-----------
