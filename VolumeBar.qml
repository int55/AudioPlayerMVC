import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
Item{
    Slider{
        id: slidBar
        minimumValue: 0
        maximumValue: 100
        value: 40
        MouseArea {
            anchors.fill: parent
            onClicked: {
                var procent = parent.width/100
                parent.value = mouseX/procent
                myModelMVC.setVolume(slidBar.value)
                //myModelMVC.setVolume(parent.value)
            }
        }
    }


}
