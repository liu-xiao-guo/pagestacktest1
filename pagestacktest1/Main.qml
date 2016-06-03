import QtQuick 2.4
import Ubuntu.Components 1.3

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "pagestacktest1.liu-xiao-guo"

    width: units.gu(60)
    height: units.gu(85)

    PageStack {
        id:pagestack

        Component.onCompleted: {
            pagestack.push(mainpage)
        }

        Page {
            id: mainpage
            header: PageHeader {
                id: pageHeader
                title: i18n.tr("pagestacktest1")
            }

            Item {
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                    top: pageHeader.bottom
                }

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: units.gu(1)
                    text: "Main page button"

                    onClicked: {
                        pagestack.push(detailpage)
                    }
                }
            }
        }

        Page {
            id: detailpage
            header: PageHeader {
                id: header1
                title: i18n.tr("pagestacktest1")
            }

            Item {
                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                    top: header1.bottom
                }

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: units.gu(10)
                    text: "detailpage button"

                }
            }

        }

    }
}

