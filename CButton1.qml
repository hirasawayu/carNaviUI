import QtQuick 2.15
import QtQuick.Timeline 1.0
import Qt5Compat.GraphicalEffects

Rectangle {
    id: cButton1
    visible: true
    width: 200
    height: 180
    radius: 10
    color: baseColor
    border.width: 3
    border.color: borderColor
    enabled: true

    property string fileName;
    property string imageSource;
    property string baseColor;
    property string borderColor;
    property string texts;
    property string textColor;
    property string pressedColor;
    property real textOpacity: 1


    Loader {
        id: buttonProperty
        source: "PButtonProperty.qml"

        onLoaded: {
            baseColor = buttonProperty.item.baseColor
            texts = buttonProperty.item.texts
            textColor = buttonProperty.item.textColor
            pressedColor = buttonProperty.item.pressedColor
        }
    }

    Text {
        text: texts
        anchors.fill: parent
        color: textColor
        opacity: textOpacity
        font.pixelSize: 30
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 100
    }

    Flipable {
        id: flipableImage
        y: 100
        width: 100
        height: 100
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 10

        property bool flipped: false

        front: Image {id: frontImage; source: imageSource; anchors.fill: parent}
        back: Image {id: backImage; source: imageSource; anchors.fill: parent}

        DirectionalBlur {
            anchors.fill: frontImage
            source: frontImage
            angle: 180
            length: 30
            samples: 30
        }

        DirectionalBlur {
            anchors.fill: backImage
            source: backImage
            angle: 180
            length: 30
            samples: 30
        }
    }

    Timeline {
        id: flipTimeline
        animations: [
            TimelineAnimation {
                id:timelineAnimation
                property: "currentFrame"
                duration: 2000
                running: false
                to: 2000
                from: 0
            }
        ]

        startFrame: 0
        endFrame: 2000
        enabled: true

        KeyframeGroup {

        }

    }

    MouseArea {
        id: cButton1MA
        anchors.fill: parent
        onClicked: screenLoader.source = fileName
        onPressed: parent.color = pressedColor
        onExited: parent.color = baseColor
        onEntered: parent.color = pressedColor
    }
}
