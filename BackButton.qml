import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{    //--------- back ------------------------------------------------
    id: back

    signal clicked
    property alias label: textBack.text

    width: 60; height: 30
    border.color: backBut.pressed? "gold": "black"
    color: "lightgray"
    radius: 5
    Text {
        id: textBack
        anchors.centerIn: parent
        text: qsTr(" << ")
    }
    MouseArea{
        id: backBut
        anchors.fill: parent
        onClicked: back.clicked()
    }
}
