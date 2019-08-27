import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{
    height: 30 ; width: 90
    border.color: openBut.pressed? "gold": "black"
    color: "lightgray"                
    radius: 5
    x: 8
    y: 8
    Text {
        anchors.centerIn: parent
        text: qsTr("open")
    }
    MouseArea{
        id: openBut
        anchors.fill: parent
        onClicked: {
            myModelMVC.setOpen()
        }
    }
}
