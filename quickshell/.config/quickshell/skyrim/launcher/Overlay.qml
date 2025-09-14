pragma ComponentBehavior: Bound
import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell

FloatingWindow {
    required property var controller

    minimumSize: Qt.size(800, 600)
    maximumSize: Qt.size(800, 600)

    ColumnLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: 10
        spacing: 10

        property string filterText: ""

        TextField {
            id: appInput
            background: Rectangle {
                color: "lightgray"
                radius: 5
            }

            Layout.fillWidth: true
            Layout.preferredHeight: 40
            focus: true

            onTextChanged: mainLayout.filterText = text

            Keys.onPressed: event => {
                if (event.key == Qt.Key_Escape) {
                    Qt.quit();
                }

                if (event.key == Qt.Key_Return) {
                    console.log("Launch application:", mainLayout.filterText);
                }
            }
        }

        ListView {
            Layout.fillWidth: true
            Layout.fillHeight: true
            model: DesktopEntries.applications
            interactive: false

            delegate: Item {
                // width: parent.width
                id: entry
                visible: name.toLowerCase().indexOf(mainLayout.filterText.toLowerCase()) !== -1
                height: visible ? 40 : 0
                opacity: visible ? 1 : 0

                required property var modelData
                property string icon: modelData.icon
                property string name: modelData.name

                Behavior on height {
                    NumberAnimation {
                        duration: 250
                    }
                }

                Behavior on opacity {
                    NumberAnimation {
                        duration: 250
                    }
                }

                Row {
                    spacing: 10
                    anchors.verticalCenter: parent.verticalCenter

                    // Image {
                    //     source: icon.startsWith("/") || icon.contains("/") ? icon : "image://theme/" + icon

                    //     onStatusChanged: {
                    //         if (status === Image.Error) {
                    //             source = "qrc:/default-app-icon.png";
                    //         }
                    //     }

                    //     width: 24
                    //     height: 24
                    // }

                    Text {
                        text: entry.name
                        font.pixelSize: 16
                    }
                }

                // TODO: Do this properly maybe no need but :3
                // MouseArea {
                //     anchors.fill: parent
                //     onClicked: {
                //         console.log("Launching:", entry.name);
                //         // TODO: call C++ slot to launch
                //     }
                // }
            }
        }
    }
}
