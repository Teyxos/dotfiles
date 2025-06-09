import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

Item {
    id: root

    required property int index
    readonly property int ws: index + 1

    Layout.preferredWidth: childrenRect.width
    Layout.preferredHeight: childrenRect.height

    Text {
        id: indicator

        // animate: true
        readonly property string label: "  "
        readonly property string activeLabel: "󰮯 "

        anchors.centerIn: parent
        text: Hyprland.focusedWorkspace.id === root.ws ? activeLabel : label
    }

}
