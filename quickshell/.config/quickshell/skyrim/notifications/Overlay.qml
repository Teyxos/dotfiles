import QtQuick
import Quickshell

PopupWindow {
    id: root
    required property var controller
    required property var notificationServer

    // anchor.window: screen
    // anchor.rect.y: screen.height + 10
    anchor.rect.y: 50
    implicitWidth: 300
    implicitHeight: 100

    color: "red"

    Rectangle {
        anchors.fill: parent
        Text {
            text: "Test"
            // text: root.notificationServer.currentNotification.body
        }
    }
}
