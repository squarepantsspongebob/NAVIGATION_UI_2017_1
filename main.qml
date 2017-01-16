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
    property color topBottomBarColor: "#323233"
    property color topBtnColor: "#D8D8D8"
    property color topBtnFontColor1: "#D0D0D0"
    property color r1Color: "#4A4A4A"
    property color viewerColor: "black"
    property color grColor: "#5FD0C0"
    property color orColor: "orange"
    property color drColor: "darkgray"
    color: bgColor


    Rectangle{
        id: columLayout; // spacing:0
        Rectangle{
            id: topR
            color: topBottomBarColor
            height: 72; width: 1920
            Button{
                id: returnBtn; x:33; y: 24
                background: Rectangle{
                    color: topBottomBarColor
                    implicitHeight: 24; implicitWidth: 24 //Need to write as "implicitHeight" to make the Alignment work
                    Image{
                        source: "qrc:/Img/back.png"
                        width: 24; height: 24
                        fillMode: Image.PreserveAspectFit
                    }
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
                x: 539; y: 12; width: 211; height: 53
                color: topBottomBarColor
                Image{
                    source: "qrc:/Img/data.png"
                    fillMode: Image.PreserveAspectFit
                }
                Text{
                    text: qsTr("数据");
                    x: 143; y: 15
                    font.pixelSize: 33; color: topBtnFontColor1
                }
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
                Text{ text: qsTr("配准"); font.pixelSize: 33; color: topBtnFontColor1; anchors.centerIn: parent}
            }
            Rectangle{
                id: navigationBtn
                x: 1173; y: 12; width: 211; height: 53
                radius: 13; color: topBtnColor
                Text{ text: qsTr("导航"); font.pixelSize: 33; color: topBtnFontColor1; anchors.centerIn: parent}
            }

            Button{
                id: quitBtn;
                x:1870; y:24
                background: Rectangle{
                    color: topBottomBarColor
                    Image{
                        source: "qrc:/Img/close.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    implicitHeight: 24; implicitWidth: 24 //Need to write as "implicitHeight" to make the Alignment work
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
        Rectangle{
            id: rowLayout;
            x: 0; y: 72
            width: 1920; height: 4+968
            property int spacing1: 33
            property int spacing2: 15
            property int spacing3: 23
            Rectangle{
                id: r1; x: 0; y: 4; width: 77; height: 968
                color: "black"
                Rectangle{
                    id: icon1
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: 11; y: 17
                    Image{
                        source:"qrc:/Img/zoom.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon2
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon1.y+implicitWidth+rowLayout.spacing1
                    Image{
                        source:"qrc:/Img/windows.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon3
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon1.y+(implicitWidth+rowLayout.spacing1)*2
                    Image{
                        source:"qrc:/Img/center.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon4
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon1.y+(implicitWidth+rowLayout.spacing1)*3
                    Image{
                        source:"qrc:/Img/reset.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon5
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon1.y+(implicitWidth+rowLayout.spacing1)*4
                    Image{
                        source:"qrc:/Img/ruler.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon6
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon1.y+(implicitWidth+rowLayout.spacing1)*5
                    Image{
                        source:"qrc:/Img/white.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon7
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: 732
                    Image{
                        source:"qrc:/Img/help.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon8
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon7.y+implicitHeight+rowLayout.spacing2
                    Image{
                        source:"qrc:/Img/set.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                Rectangle{
                    id: icon9
                    color: "black"
                    implicitHeight: 56; implicitWidth: implicitHeight
                    x: icon1.x; y: icon8.y+implicitHeight+rowLayout.spacing3
                    Image{
                        source:"qrc:/Img/PrintScreen.png"
                        fillMode: Image.PreserveAspectFit
                    }
                }
            } //r1
            Rectangle{
                id: r2; x: 77; y: 4
                property int windowHeight1: 482
                property int windowWidth1: 752
                width: windowWidth1*2+3+4; height: windowHeight1*2+4+4
                Rectangle{
                    id: coronalR
                    color: viewerColor
                    height: 482; width: 752
                    x: 3; y: 2
                    Label{ text: qsTr("Coronal"); color: "#D0D0D0"
                        x: 17; y: 10; font.pixelSize: 21; font.bold: true}
//                    SpinBox{
//                        from: 0; to: 100; value: 26
//                    }
                }
                Rectangle{
                    id: axialR
                    color: viewerColor
                    height: 482; width: 752
                    x: width+coronalR.x + 4; y: coronalR.y
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
                width: 330; height: 968
                color: bgColor
                x:1594; y:4
                Rectangle{
                    x: 4; y: 4;
                    width: 322; height: 482
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
            x: 0; y: 1048; width: 1920; height: 32
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
