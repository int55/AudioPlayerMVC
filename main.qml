import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 330
    height: 300
    title: qsTr("Audio Player")
    color: "gray"

    property alias volumeBar: volumeBar
    property string curPath
    property string nameinf
    property bool isOpen: true

Column{
    anchors.fill: parent
    Rectangle{
        id: rect1
        anchors.horizontalCenter: parent.horizontalCenter
        width: 332; height: 154
        border.color: "black"
        radius: 5
        color: "skyblue"
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0

        ScreenInfo {
            id: screenInfo
            x: 0
            y: 0
            color: "darkblue"
            OpenButton {
            }
        }

        Row{
            id: rowBut
            anchors.top: screenInfo.bottom
            anchors.topMargin: 5
            x: 10
            spacing: 4
            PlayButton {
                id: play
            }
            StopButton {
                id: stop
            }
            BackButton {
                id: back
                label: qsTr("<<")
                onClicked: {
                    if(listV1.curIndex > 0)
                        listV1.curIndex--
                }
            }
            ForwardButton {
                id: forward
                x: 256
                label: qsTr(">>")
                onClicked: {
                    if(listV1.curIndex < listV1.count)
                        listV1.curIndex++
                }
            }
        }//-----------Row--------------

        VolumeBar {
            id: volumeBar
            anchors.top: rowBut.bottom
            anchors.topMargin: 5
            x: 10
        }

        CustomListView {
            id: listV1
            x: 0
            height: 100 ; anchors.topMargin: 1; width: 332
            anchors.top: rect1.bottom

        }

    } //---------Rectangle---------
}//--------Column-------------
} //---------window---------
