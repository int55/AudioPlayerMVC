import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{    //--------- s t o p ------------------------------------------------
    id: stop
    width: 90; height: 30
    border.color: stopBut.pressed? "gold": "black"
    color: "lightgray"
    radius: 5
    Text {
        anchors.centerIn: parent
        text: qsTr("Stop")
    }
    MouseArea{
        id: stopBut
        anchors.fill: parent

    }

}
