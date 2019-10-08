import QtQuick 2.9
import QtQuick.Window 2.2

Rectangle{
    id: screenInfo
    x: 0
    y: -12
    width: 332
    height: 94
    border.color: "black"
    radius: 5
    Text {
        id: iiii
        x: 99
        y: 69
        text: nameinf
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 14
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 12

    }

}
