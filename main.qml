import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Window {
    id: root
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Hello World")
    flags: Qt.FramelessWindowHint|Qt.WindowSystemMenuHint|Qt.WindowMinimizeButtonHint|Qt.Window
    property color bgColor: "white"
    property color ftColor: "#323233"
    property color topRColor: "#323233"
    property color topBtnColor: "#D8D8D8"
    property color topBtnFontColor: "#A0A0A0"
    property color r1Color: "#4A4A4A"
    property color viewerColor: "black"
    property color grColor: "#5FD0C0"
    property color orColor: "orange"
    property color drColor: "darkgray"
    color: bgColor

    ColumnLayout{
        id: columLayout; spacing:0
        Rectangle{
            id: topR
            color: topRColor
            height: 72; width: 1920
            Button{
                id: returnBtn; x:12; y: 11
                text: qsTr("Back")
                contentItem: Text {
                      text: returnBtn.text
                      font.pixelSize: 15; font.bold: true
                      horizontalAlignment: Text.AlignHCenter
                      verticalAlignment: Text.AlignVCenter
                      }
                background: Rectangle{
                    color: drColor
                    implicitHeight: 50; implicitWidth: 50 //Need to write as "implicitHeight" to make the Alignment work
                }
                onClicked: {
                }
            }
            Label{
                id: currentLabel
                x: 76; y: 20;
                text: "Patient Manager"
                font.pixelSize: 28; color: "white"
            }

            Rectangle{
                id: dataBtn
                x: 537; y: 12; width: 211; height: 53
                radius: 13; color: topBtnColor
                Text{ text: qsTr("数据"); font.pixelSize: 33; color: topBtnFontColor; anchors.centerIn: parent}
            }
            Rectangle{
                id: toolBtn
                x: 749; y: 12; width: 211; height: 53
                radius: 13; color: grColor
                Text{ text: qsTr("工具"); font.pixelSize: 33; color: "#323233"; anchors.centerIn: parent}
            }
            Rectangle{
                id: registrationBtn
                x: 961; y: 12; width: 211; height: 53
                radius: 13; color: topBtnColor
                Text{ text: qsTr("配准"); font.pixelSize: 33; color: topBtnFontColor; anchors.centerIn: parent}
            }
            Rectangle{
                id: navigationBtn
                x: 1173; y: 12; width: 211; height: 53
                radius: 13; color: topBtnColor
                Text{ text: qsTr("导航"); font.pixelSize: 33; color: topBtnFontColor; anchors.centerIn: parent}
            }

            Button{
                id: quitBtn;
                x:1800; y:11
                text: qsTr("Quit")
                contentItem: Text {
                      text: quitBtn.text
                      font.pixelSize: 15; font.bold: true
                      horizontalAlignment: Text.AlignHCenter
                      verticalAlignment: Text.AlignVCenter
                      }
                background: Rectangle{
                    color: drColor
                    implicitHeight: 50; implicitWidth: 50 //Need to write as "implicitHeight" to make the Alignment work
                }
                onClicked: {
                    Qt.quit()
                }
            } //quitBtn

            ToolButton{
                id: menuToolButton
                text: "Menu"
                onClicked: optionsMenu.open()
                x: 1700; y: 11
                background: Rectangle{
                    color: drColor; implicitWidth: 50; implicitHeight: 50
                }
                Menu{
                    id: optionsMenu;
                    //x: parent.x -100; // The x position of menu is decided by system. If we set it as the same as menu icon x, there will be an offset.
                    y: parent.y+parent.height+10
                    transformOrigin: Menu.TopRight
                    title: "More"
                    MenuItem{
                        text: "Settings"; onTriggered: settingsPopup.open()
                    }
                    MenuItem{
                        text: "About"; onTriggered: aboutDialog.open()
                    }
                }
            } //toolButton Menu
        } //topR
        RowLayout{
            id: rowLayout;
            Rectangle{
                id: r1; x: 0; y: 4; width: 77; height: 968
                color: r1Color
                Rectangle{
                    id: icon1
                    color: drColor
                    height: 50; width: height
                    x: 12; y: 12
                }
                Rectangle{
                    id: icon2
                    color: drColor
                    height: 50; width: height
                    x: icon1.x; y: icon1.y+height+12
                }
                Rectangle{
                    id: icon3
                    color: drColor
                    height: 50; width: height
                    x: icon1.x; y: icon1.y+height*2+12*2
                }
                Rectangle{
                    id: icon4
                    color: drColor
                    height: 50; width: height
                    x: icon1.x; y: icon1.y+(height+12)*3
                }
            } //r1
            Rectangle{
                id: r2; x: 77; y: 0
                width: 752*2+4*3; height: 482*2+4*3
                Rectangle{
                    id: coronalR
                    color: viewerColor
                    height: 482; width: 752
                    x: 4; y: 4
                    Label{ text: qsTr("Coronal"); color: "#D0D0D0"
                        x: 17; y: 10; font.pixelSize: 21; font.bold: true}
                    SpinBox{
                        from: 0; to: 100; value: 26

                    }
                }
                Rectangle{
                    id: axialR
                    color: viewerColor
                    height: 482; width: 752
                    x: 752+4+4; y: 4
                    Label{ text: qsTr("Axial"); color: "#D0D0D0"
                        x: 17; y: 10; font.pixelSize: 21; font.bold: true}
                }
                Rectangle{
                    id: sagittalR
                    color: viewerColor
                    height: 482; width: 752
                    x: coronalR.x; y: coronalR.y+coronalR.height+4
                    Label{ text: qsTr("Sagittal"); color: "#D0D0D0"
                        x: 17; y: 10; font.pixelSize: 21; font.bold: true}
                }
                Rectangle{
                    id: threeDR
                    color: viewerColor
                    height: 482; width: 752
                    x: axialR.x; y: axialR.y+axialR.height+4
                    Label{ text: qsTr("3D"); color: "#D0D0D0"
                        x: 17; y: 10; font.pixelSize: 21; font.bold: true}
                }
               } //r2
            Rectangle{
                width: 330; height: 482*2+4*3
                color: bgColor
                Rectangle{
                    x: 4; y: 4; width: 330-4*2; height: 482
                    color: drColor
                    TabBar{
                        id: planBar
                        width: parent.width
                        TabButton{text: qsTr("方案一")}
                        TabButton{text: qsTr("方案二")}
                        background: Rectangle{
                            color: grColor
                        }
                    }
                    StackLayout{
                        width: parent.width; height: parent.height-planBar.height
                        x:0; y:planBar.height
                        currentIndex: planBar.currentIndex
                        Rectangle{
                            id: planTab1
                            color: grColor
                        }
                        Rectangle{
                            id: planTab2
                            color: grColor
                        }
                    }
                }
                Rectangle{
                x: 4; y: 4*2+482; width: 330-4*2; height: 482
                color: drColor
                }
            } //r3
        } //rowLayout

        Rectangle{
            id: btmR
            color: r1Color
            x: 0; y: 1016; width: 1920; height: 32
        }
    } //ColumnLayout
    Popup{
        id: settingsPopup; x: root.width/2; y: root.height/2
        width: 200; height: width
        modal:  true; focus: true
    }
    Popup{
        id: aboutDialog; x: root.width/2; y: root.height/2
        width: 200; height: width
        modal: true; focus: true
    }
} //root window
