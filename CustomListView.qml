import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

ScrollView{
    property alias curIndex: view.currentIndex
    property alias cont: view.count

    width: parent.width
    height: parent.height
    ListView{
        id: view
        model: myModelMVC         // модель из с++
        delegate:
            Rectangle {
            width: parent.width
            height: 25
            border.color: area2.pressed? "gold" : "black"
            color: ListView.isCurrentItem ? " lightblue" : " beige "
            radius: 3
            Text {
                text: model.nameFold
                anchors.centerIn: parent
            }
            MouseArea{
                id: area2
                anchors.fill: parent
                onClicked: {
                    nameinf = model.nameFold
                    curPath = model.pathFold
                    view.currentIndex = model.index

                }
                Connections{
                    target: view
                    onCurrentIndexChanged: {
                        if(curIndex === index)
                            curPath = model.pathFold
                    }
                }
            }
        }//-------Rectangle----------
    }//---------ListView-----------
}//--------ScrollView-------
