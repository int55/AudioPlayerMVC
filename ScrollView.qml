import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5


    ListView{
        id: view
        model: myModelMVC         // модель из с++
        delegate: Rectangle {
        width: parent.width
        height: 40
        border.color: "black"


        }
    }//---------ListView-----------
