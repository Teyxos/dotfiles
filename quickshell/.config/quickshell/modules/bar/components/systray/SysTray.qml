import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Services.SystemTray
import Quickshell.Widgets

// TODO Fucking understand how the fuck you position items to not make the invisble thing ever again
// TODO Think now it works?
Item {
    id: root

    readonly property Repeater items: items

    clip: true
    visible: width > 0 && height > 0 // To avoid warnings about being visible with no size
    implicitWidth: layout.implicitWidth
    implicitHeight: layout.implicitHeight

    Row {
        id: layout

        spacing: 5

        Repeater {
            id: items

            model: SystemTray.items

            TrayItem {
            }

        }

        add: Transition {
            NumberAnimation {
                properties: "scale"
                from: 0
                to: 1
                duration: 1
                easing.type: Easing.BezierSpline
                easing.bezierCurve: [0, 0, 0, 1, 1, 1]
            }

        }

    }

    Behavior on implicitWidth {
        NumberAnimation {
            duration: 1
            easing.type: Easing.BezierSpline
            easing.bezierCurve: [0.05, 0, 2 / 15, 0.06, 1 / 6, 0.4, 5 / 24, 0.82, 0.25, 1, 1, 1]
        }

    }

    Behavior on implicitHeight {
        NumberAnimation {
            duration: 1
            easing.type: Easing.BezierSpline
            easing.bezierCurve: [0.05, 0, 2 / 15, 0.06, 1 / 6, 0.4, 5 / 24, 0.82, 0.25, 1, 1, 1]
        }

    }

}
