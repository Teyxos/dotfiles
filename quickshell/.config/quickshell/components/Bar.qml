import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Io
import "widgets"
import "workspaces"

// Prob need to go with a dual row layout to make it be able to center better
// Also need to work out buttons and tooltips (this is gonna end up so cool!)
Variants {
    model: Quickshell.screens

    PanelWindow {
        id: root

        required property ShellScreen modelData

        screen: modelData
        implicitHeight: 30
        implicitWidth: modelData.width

        anchors {
            top: true
            left: true
            right: true
        }

        RowLayout {
            anchors.fill: parent
            spacing: 0

            Workspaces {
            }

            ClockWidget {
            }

        }

    }

}
