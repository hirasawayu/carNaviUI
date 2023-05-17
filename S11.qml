import QtQuick 2.15

Rectangle{
    id: s11
    color: "black"

    Loader {
        id: backButton
        source: "CBackButton.qml"
        x: backButtonX
        y: backButtonY

        onLoaded:{
             = "S1.qml"
        }

    }
}
