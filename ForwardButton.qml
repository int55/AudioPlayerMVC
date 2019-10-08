import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{    //--------- f o r w a r d ------------------------------------------------
    id: forward

    signal clicked
    property alias label: textForvard.text

    width: 60 ;height: 30
    border.color: forwBut.pressed? "gold": "black"
    color: "lightgray"
    radius: 5
    Text {
        id: textForvard
        anchors.centerIn: parent
        text: qsTr(" >> ")
    }
    MouseArea{
        id: forwBut
        anchors.fill: parent

    }
}
