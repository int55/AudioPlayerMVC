import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{    //--------- p l a y ------------------------------------------------
    id: play
    width: 90 ;height: 30
    border.color: playBut.pressed? "gold": "black"
    color: "lightgray"
    radius: 5
    Text {
        anchors.centerIn: parent
        text: qsTr("Play")
    }
    MouseArea{
        id: playBut
        anchors.fill: parent
        onClicked: {
            myModelMVC.startPlay(curPath)
            if(curPath)
                myModelMVC.startPlay(curPath)
            else console.log("path is not defined!")
        }
    }
}
