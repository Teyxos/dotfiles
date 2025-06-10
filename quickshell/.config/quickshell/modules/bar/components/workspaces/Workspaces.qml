import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

Item {
    id: root

    implicitWidth: layout.implicitWidth
    implicitHeight: layout.implicitHeight

    RowLayout {
        id: layout

        anchors.fill: parent

        Repeater {
            model: Hyprland.workspaces

            Workspace {
            }

        }

    }

}
