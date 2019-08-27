import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick 2.2

Window {
    id: windows
    //visible: winamp.explorerVisible    // вкл отк окна
    visible: true
    width: 250
    height: 450
    color: "gray"
    title: qsTr("Explorer")
Item{
    anchors.fill: parent
    ListView{
        id: viewFold
        anchors.fill: parent
        model: myExplorerMVC
        spacing: 5
        delegate: Rectangle{
            border.color: area1.pressed? "gold" : "black"
            width: parent.width
            height: 30
            radius: 3
            Image {
                id: imgFold
                width: 30 ; height: 30
                source: "folder.png"
            }
            Text {
                anchors.margins: 5
                anchors.left: imgFold.right
                anchors.verticalCenter: parent.verticalCenter
                text: model.nameFold
            }
            MouseArea{
                id: area1
                anchors.fill: parent
                onClicked: viewFold.currentIndex = model.index
                onDoubleClicked: {  myExplorerMVC.changeStack(pathFold)
                    }
            }
        }
    }

}//----------item-----------
}//--------window---------
