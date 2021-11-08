import QtQuick 2.6
import QtQuick.Controls 2.0 as Controls
import QtQuick.Layouts 1.2
import org.kde.kirigami 2.13 as Kirigami

Kirigami.ApplicationWindow {
    id: root
    title: i18nc("@title", "Hello World")

    pageStack.initialPage: Kirigami.ScrollablePage {
        title: i18nc("@title", "Kountdown")

        actions.main: Kirigami.Action {
            id: addAction
            icon.name: "list-add"
            text: i18nc("@action:button", "Add Kountdown")
            onTriggered: kountdownModel.append({
                name: "Kirigami action",
                description: "Congrats",
                date: 1000
            })
        }

        Kirigami.CardsListView {
            id: layout
            model: kountdownModel
            delegate: kountdownDelegate

            ListModel {
                id: kountdownModel
                ListElement { name: "Dog birthday"; description: "Dog birthday"; date: 100 }
            }

            Component {
                id: kountdownDelegate
                Kirigami.AbstractCard {
                    contentItem: Item {
                        implicitWidth: delegateLayout.implicitWidth
                        implicitHeight: delegateLayout.implicitHeight
                        GridLayout {
                            id: delegateLayout
                            anchors {
                                left: parent.left
                                top: parent.top
                                right: parent.right
                            }
                            rowSpacing: Kirigami.Units.largeSpacing
                            columnSpacing: Kirigami.Units.largeSpacing
                            columns: root.wideScreen ? 4 : 2

                            Kirigami.Heading {
                                Layout.fillHeight: true
                                level: 1
                                text: (date < 100000) ? date : i18n("%1 days", Math.round((date-Date.now())/86400000))
                            }

                            ColumnLayout {
                                Kirigami.Heading {
                                    Layout.fillWidth: true
                                    level: 2
                                    text: name
                                }
                                Kirigami.Separator {
                                    Layout.fillWidth: true
                                    visible: description.length > 0
                                }
                                Controls.Label {
                                    Layout.fillWidth: true
                                    wrapMode: Text.WordWrap
                                    text: description
                                    visible: description.length > 0
                                }
                            }
                            Controls.Button {
                                Layout.alignment: Qt.AlignRight
                                Layout.columnSpan: 2
                                text: i18n("Edit")
                            }
                        }
                    }
                }
            }
        }
    }
}
