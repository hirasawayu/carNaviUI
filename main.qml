import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 700
    height: 400
    visible: true
    title: "CarNavi"

    Rectangle {
        anchors.fill: parent


        Loader {
            id: screenLoader
            anchors.fill: parent
            source: "S0.qml"
        }


    }
}
