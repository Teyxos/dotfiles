import QtQuick
import Quickshell
import Quickshell.Io
pragma Singleton

Singleton {
    id: root

    readonly property string time: {
        Qt.formatDateTime(clock.date, "dd/MM hh:mm yyyy");
    }

    SystemClock {
        id: clock

        precision: SystemClock.Minutes
    }

}
