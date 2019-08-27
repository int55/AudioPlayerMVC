import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{    //--------- b a c k ------------------------------------------------
    id: back
    width: 60; height: 30
    border.color: backBut.pressed? "gold": "black"
    color: "lightgray"
    radius: 5
    Text {
        anchors.centerIn: parent
        text: qsTr(" << ")
    }
    MouseArea{
        id: backBut
        anchors.fill: parent
    }
}
