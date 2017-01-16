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

    property color topBottomBarColor: "#323233"
    property color topBtnColor: "#D8D8D8"
    property color topBtnFontColor1: "#D0D0D0"
    property color r1Color: "#4A4A4A"
    property color viewerColor: "black"
    property color grColor: "#5FD0C0"
    property color orColor: "orange"
    property color drColor: "darkgray"


    Rectangle{
        id: rootRec
        x:0; y:0; width: parent.width; height: parent.height
        Image{
            anchors.fill: parent
            source: "qrc:/Img/backgroundImg.png"
            fillMode: Image.Stretch
        }

        ColumnLayout{
            id: taskPanel
            x: 1607; y: 81;width: 297; spacing: 10
            Rectangle{
                id: toolState
                x:0;y:0
                width: parent.width; height: 176
                Image{
                    source: "qrc:/Img/toolState.png"
                }
            }
            Rectangle{
                id: input
                anchors.top: toolState.bottom
                anchors.topMargin: 15
                width: parent.width; height: 60
                Image{
                    id: inputImg
                    anchors.fill: parent
                    source: "qrc:/Img/registrationEnsure1.png"
                }
                Rectangle{
                    width: 50; height:50
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (input.height==60){
                                input.height=150
                                inputImg.source = "qrc:/Img/registrationEnsure2.png"
                            }
                            else{
                                input.height=60
                                inputImg.source="qrc:/Img/registrationEnsure1.png"
                            }
                        }
                    }
                }
            }
            Rectangle{
                id: registrationEnsure
                anchors.top: input.bottom
                anchors.topMargin: 15
                width: parent.width; height: 60
                Image{
                    id: registrationEnsureImg
                    anchors.fill: parent
                    source: "qrc:/Img/registrationEnsure1.png"
                }
                Rectangle{
                    width: 50; height:50
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (registrationEnsure.height==60){
                                registrationEnsure.height=150
                                registrationEnsureImg.source = "qrc:/Img/registrationEnsure2.png"
                            }
                            else{
                                registrationEnsure.height=60
                                registrationEnsureImg.source="qrc:/Img/registrationEnsure1.png"
                            }
                        }
                    }
                }
            }
            Rectangle{
                id: threedModel
                anchors.top: registrationEnsure.bottom
                anchors.topMargin: 15
                width: parent.width; height: 60
                Image{
                    id: threedModelImg
                    anchors.fill: parent
                    source: "qrc:/Img/registrationEnsure1.png"
                }
                Rectangle{
                    width: 50; height:50
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (threedModel.height==60){
                                threedModel.height=150
                                threedModelImg.source = "qrc:/Img/registrationEnsure2.png"
                            }
                            else{
                                threedModel.height=60
                                threedModelImg.source="qrc:/Img/registrationEnsure1.png"
                            }
                        }
                    }
                }
            }
        }



        GridLayout{
            id: ctViewer
            x: 107; y: 81
            rows: 2; columns: 2; rowSpacing: 3; columnSpacing: 4
            Rectangle{
                id: coronalWin
                width: 744; height: 477
                Image{
                    anchors.fill: parent
                    source: "qrc:/Img/coronal.png"
                }
            }
            Rectangle{
                id: axialWin
                width: 744; height: 477
                Image{
                    anchors.fill: parent
                    source: "qrc:/Img/axial.png"
                }
            }
            Rectangle{
                id: sagittalWin
                width: 744; height: 477
                Image{
                    anchors.fill: parent
                    source: "qrc:/Img/coronal.png"
                }
            }
            Rectangle{
                id: threeDWin
                width: 744; height: 477
                Image{
                    anchors.fill: parent
                    source: "qrc:/Img/axial.png"
                }
            }
        }
        Rectangle{
            id: systemMenu
            x: 1650; y: 8; width: 56
            RowLayout{
                anchors.fill: parent
                spacing: 9
                ButtonToggle{
                    id: informationBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/information.png"
                    imageClick: "qrc:/Img/center.png"
                    imageHover: "qrc:/Img/ruler.png"
                }
                ButtonToggle{
                    id: setBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/set.png"
                }
                ButtonToggle{
                    id: snapShotBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/snapShot.png"
                }

                ButtonToggle{
                    id: quitBtn
                    width: parent.width; height: width
                    Image{
                        source: "qrc:/Img/quit.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    onClicked: Qt.quit()
                }
            }
        }
        Rectangle{
            id: windowAdjust
            x: 20; y: 117; width: 70
            ColumnLayout{
                anchors.fill: parent
                spacing: 7
                ButtonToggle{
                    id: windowSelBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/windows.png"
                    property bool windowSelExdShow: false
                    onClicked: {
                        if (windowSelExdShow){
                            windowSelLoader.sourceComponent = undefined
                            windowSelExdShow=false
                        }
                        else{
                            windowSelLoader.sourceComponent = windowSelCom
                            windowSelExdShow=true
                        }
                    }
                    Loader{
                        id: windowSelLoader
                        anchors.left:windowSelBtn.left; anchors.top:windowSelBtn.top
                        height:windowSelBtn.height; width: windowSelBtn.width*4
                    }

                    Component{
                        id: windowSelCom
                        Rectangle{
                            height: 70
                            Image{
                                anchors.fill: parent
                                source: "qrc:/Img/windowSelExd.png"
                            }
                        }
                    }
                }
                ButtonToggle{
                    id: zoomBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/zoom.png"
                    property bool zoomExdShow: false
                    onClicked:{
                        console.log(zoomExdShow)
                        if(zoomExdShow){
                            zoomExdLoader.sourceComponent = undefined
                            zoomExdShow = false
                        }
                        else{
                            zoomExdLoader.sourceComponent = zoomExdCom
                            zoomExdShow = true
                        }
                    }
                    Loader{
                        id: zoomExdLoader
                        anchors.left: zoomBtn.left; anchors.top:zoomBtn.top
                        height: zoomBtn.height; width: zoomBtn.width*5
                    }
                    Component{
                        id: zoomExdCom
                        Rectangle{
                            height: 70
                            Image{
                                anchors.fill: parent
                                source: "qrc:/Img/zoomExd.png"
                            }
                        }
                    }
                }
                ButtonToggle{
                    id: resetBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/reset.png"
                }
                ButtonToggle{
                    id: lockBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/lock.png"
                }
                ButtonToggle{
                    id: rulerBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/ruler.png"
                    property bool rulerExdShow: false
                    onClicked:{
                        if(rulerExdShow){
                            rulerExdLoader.sourceComponent = undefined
                            rulerExdShow = false
                        }
                        else{
                            rulerExdLoader.sourceComponent = rulerExdCom
                            rulerExdShow = true
                        }
                    }
                    Loader{
                        id: rulerExdLoader
                        anchors.left: rulerBtn.left; anchors.top:rulerBtn.top
                        height: rulerBtn.height; width: rulerBtn.width*3.5
                    }
                    Component{
                        id: rulerExdCom
                        Rectangle{
                            height: 70
                            Image{
                                anchors.fill: parent
                                source: "qrc:/Img/rulerExd.png"
                            }
                        }
                    }
                }
                ButtonToggle{
                    id: whiteBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/white.png"
                    property bool whiteExdShow: false
                    onClicked:{
                        if(whiteExdShow){
                            whiteExdLoader.sourceComponent = undefined
                            whiteExdShow = false
                        }
                        else{
                            whiteExdLoader.sourceComponent = whiteExdCom
                            whiteExdShow = true
                        }
                    }
                    Loader{
                        id: whiteExdLoader
                        anchors.left: whiteBtn.left; anchors.top:whiteBtn.top
                        height: whiteBtn.height; width: whiteBtn.width*3.5
                    }
                    Component{
                        id: whiteExdCom
                        Rectangle{
                            height: 70
                            Image{
                                anchors.fill: parent
                                source: "qrc:/Img/whiteExd.png"
                            }
                        }
                    }
                }
                ButtonToggle{
                    id: center
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/center.png"
                }
                ButtonToggle{
                    id: center1
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/empty.png"
                }
                ButtonToggle{
                    id: center2
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/empty.png"
                }
                ButtonToggle{
                    id: center3
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/empty.png"
                }
            }
        }
    }
} //root window
