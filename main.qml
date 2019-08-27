import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 350
    height: 300
    title: qsTr("Audio Player")

    property alias volumeBar: volumeBar
    property string curPath: "false"

    Rectangle{
        id: rect1
        anchors.centerIn: parent
        width: 332; height: 154
        border.color: "black"
        radius: 5
        color: "skyblue"
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: 0

        ScreenInfo {
            id: screenInfo
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
            }
            ForwardButton {
                id: forward
                x: 256
            }
        }//-----------Row--------------

        VolumeBar {
            id: volumeBar
            anchors.top: rowBut.bottom
            anchors.topMargin: 5
            x: 10
        }

    } //---------Rectangle---------
    ListView {
        anchors.centerIn: parent
    }
} //---------window---------
