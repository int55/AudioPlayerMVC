import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
Item{
    Slider{
        id: slidBar
        minimumValue: 0
        maximumValue: 100
        value: 40
    }
//    Text {
//        anchors.top: slidBar.bottom
//        text: qsTr("volume")
//        font.pointSize: 8

//    }

}
