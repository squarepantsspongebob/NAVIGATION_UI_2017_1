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

    Rectangle {
        id: dataPage
        anchors.fill: parent
        color: "transparent"
        visible: true
        Image{
            anchors.fill: parent
            source: "qrc:/Img/dataPage.jpg"
        }
        Image{
            id: gongjuBtnImg
            visible: false
            x:708; y: 23; width: 96; height: 36
            source:"qrc:/Img/gongjuBtnHover.png"
        }
        Rectangle{
            x:570; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: gongjuBtnImg.visible = true
                onExited: gongjuBtnImg.visible = false
                onClicked:{
                    dataPage.visible = false
                    toolPage.visible = true
                }
            }
        }
        Image{
            id: peizhunBtnImgd
            visible: false
            x:1043; y: 23; width: 96; height: 36
            source:"qrc:/Img/peizhunBtnHover.png"
        }
        Rectangle{
            x:909; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: peizhunBtnImgd.visible = true
                onExited: peizhunBtnImgd.visible = false
                onClicked:{
                    dataPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Image{
            id: daohangBtnImgd
            visible: false
            x:1377; y: 23; width: 99; height: 40
            source:"qrc:/Img/daohangBtnHover.png"
        }
        Rectangle{
            x:1247; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: daohangBtnImgd.visible = true
                onExited: daohangBtnImgd.visible = false
                onClicked:{
                    dataPage.visible = false
                    navigationRec.visible = true
                }
            }
        }
    }

    Rectangle {
        id: toolPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPage.jpg"
        }
        Image{
            id: peizhunBtnImgt
            visible: false
            x:1041; y: 23; width: 96; height: 36
            source:"qrc:/Img/peizhunBtnHover.png"
        }
        Rectangle{
            x:909; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: peizhunBtnImgt.visible = true
                onExited: peizhunBtnImgt.visible = false
                onClicked:{
                    toolPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        //Navigation Font Highlight
        Image{
            id: daohangBtnImgt
            visible: false
            x:1383; y: 23; width: 99; height: 40
            source:"qrc:/Img/daohangBtnHover.png"
        }
        Rectangle{
            x:1247; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: daohangBtnImgt.visible = true
                onExited: daohangBtnImgt.visible = false
                onClicked:{
                    toolPage.visible = false
                    navigationRec.visible = true
                }
            }
        }
        //Data Font HighLight
        Image{
            id: shujuBtnImgt
            visible: false
            x:280; y: 23; width: 96; height: 36
            source:"qrc:/Img/shujuBtnHover.png"
        }
        Rectangle{
            x:280; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: shujuBtnImgt.visible = true
                onExited: shujuBtnImgt.visible = false
                onClicked:{
                    toolPage.visible = false
                    dataPage.visible = true
                }
            }
        }
        Rectangle{
            x:216; y: 899; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPage.visible = false
                    toolPageProbe.visible = true
                }
            }
        }
        Rectangle{
            x:612; y: 899; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPage.visible = false
                    toolPageProbe.visible = true
                }
            }
        }
    }

    Rectangle {
        id: toolPageAdapter
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPageAdapter.jpg"
        }
        Rectangle{
            x:1592; y: 763; width: 200; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPageAdapter.visible = false
                    toolPage.visible = true
                }
            }
        }
    }
    Rectangle {
        id: toolPageProbe
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPageProbe.jpg"
        }
        Rectangle{
            x:1592; y: 763; width: 200; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPageProbe.visible = false
                    toolPage.visible = true
                }
            }
        }
    }

    Rectangle {
        id: registrationPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            id: registrationPageBG
            anchors.fill: parent
            source: "qrc:/Img/registrationPage.jpg"
        }
        Image{
            id: gongjuBtnImgr
            visible: false
            x:615; y: 23; width: 96; height: 36
            source:"qrc:/Img/gongjuBtnHover.png"
        }
        Rectangle{
            x:615; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: gongjuBtnImgr.visible = true
                onExited: gongjuBtnImgr.visible = false
                onClicked:{
                    registrationPage.visible = false
                    toolPage.visible = true
                }
            }
        }
        Image{
            id: shujuBtnImgr
            visible: false
            x:280; y: 23; width: 96; height: 36
            source:"qrc:/Img/shujuBtnHover.png"
        }
        Rectangle{
            x:280; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: shujuBtnImgr.visible = true
                onExited: shujuBtnImgr.visible = false
                onClicked:{
                    registrationPage.visible = false
                    dataPage.visible = true
                }
            }
        }
        //Navigation Font Highlight
        Image{
            id: daohangBtnImgr
            visible: false
            x:1382; y: 23; width: 100; height: 40
            source:"qrc:/Img/daohangBtnHover.png"
        }
        Rectangle{
            x:1247; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: daohangBtnImgr.visible = true
                onExited: daohangBtnImgr.visible = false
                onClicked:{
                    registrationPage.visible = false
                    navigationRec.visible = true
                }
            }
        }
        Rectangle{
            x: 145; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    registrationPagePoint.visible = true
                }
            }
        }
        Rectangle{
            x: 588; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    ireachBeginPage.visible = true
                }
            }
        }
        Rectangle{
            x: 1032; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    sanshierPage.visible = true
                }
            }
        }
        Rectangle{
            x: 1475; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    surfacePage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: registrationPagePoint
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/registrationPagePoint.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPagePoint.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:1197; y: 538; width: 200; height: 60
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    registrationPagePoint.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: surfacePage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/surface.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    surfacePage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:1488; y: 895; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    surfacePage.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: sanshierPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/32.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    sanshierPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachBeginPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachBegin.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachBeginPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:86; y: 258; width: 1000; height: 700
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachBeginPage.visible = false
                    ireachFailPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachFailPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachFail.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachFailPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:86; y: 258; width: 1000; height: 700
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachFailPage.visible = false
                    ireachSuccessPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachSuccessPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachSuccess.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachSuccessPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x: 618; y: 681; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachSuccessPage.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
        Rectangle{
            x: 973; y: 681; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachSuccessPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: accuracyCheckPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/accuracyCheck.jpg"
        }
        Rectangle{
            x:618; y: 931; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    accuracyCheckPage.visible = false
                    navigationRec.visible = true
                }
            }
        }
        Rectangle{
            x: 973; y:931; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    accuracyCheckPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    accuracyCheckPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }

    Rectangle{
        id: navigationRec
        x:0; y:0; width: parent.width; height: parent.height
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/backgroundImg.png"
            fillMode: Image.Stretch
        }
        //Tool Font Highlight
        Image{
            id: gongjuBtnImgn
            visible: false
            x:615; y: 23; width: 96; height: 36
            source:"qrc:/Img/gongjuBtnHover.png"
        }
        Rectangle{
            x:615; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: gongjuBtnImgn.visible = true
                onExited: gongjuBtnImgn.visible = false
                onClicked:{
                    navigationRec.visible = false
                    toolPage.visible = true
                }
            }
        }
        //Data Font Highlight
        Image{
            id: shujuBtnImgn
            visible: false
            x:280; y: 23; width: 96; height: 36
            source:"qrc:/Img/shujuBtnHover.png"
        }
        Rectangle{
            x:280; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: shujuBtnImgn.visible = true
                onExited: shujuBtnImgn.visible = false
                onClicked:{
                    navigationRec.visible = false
                    dataPage.visible = true
                }
            }
        }
        //Registration Font Highlight
        Image{
            id: peizhunBtnImgn
            visible: false
            x:951; y: 23; width: 96; height: 36
            source:"qrc:/Img/peizhunBtnHover.png"
        }
        Rectangle{
            x:909; y:8
            width: 373; height: 63
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onEntered: peizhunBtnImgn.visible = true
                onExited: peizhunBtnImgn.visible = false
                onClicked:{
                    navigationRec.visible = false
                    registrationPage.visible = true
                }
            }
        }
        //taskPanel
        ColumnLayout{
            id: taskPanel
            x: 1603; y: 81;width: 297; spacing: 10
            Rectangle{
                id: toolState
                width: parent.width; height: 150
                color: "transparent"
                Image{
                    source: "qrc:/Img/toolState.png"
                }
            }
            Rectangle{
                id: input
                anchors.top: toolState.bottom
                anchors.topMargin: 15
                width: parent.width; height: 55
                color: "transparent"
                Image{
                    id: inputImg
                    anchors.fill: parent
                    source: "qrc:/Img/input1.png"
                }
                Rectangle{
                    width: 17; height:10
                    x: 257; y: 27
                    color: "transparent"
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (input.height==55){
                                input.height=129
                                inputImg.source = "qrc:/Img/input2.png"
                            }
                            else{
                                input.height=55
                                inputImg.source="qrc:/Img/input1.png"
                            }
                        }
                    }
                }
            }
            Rectangle{
                id: registrationEnsure
                anchors.top: input.bottom
                anchors.topMargin: 15
                width: parent.width; height: 55
                color: "transparent"
                Image{
                    id: registrationEnsureImg
                    anchors.fill: parent
                    source: "qrc:/Img/registrationEnsure1.png"
                }
                Rectangle{
                    width: 17; height:10
                    x: 257; y: 27
                    color: "transparent"
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (registrationEnsure.height==55){
                                registrationEnsure.height=129
                                registrationEnsureImg.source = "qrc:/Img/registrationEnsure2.png"
                            }
                            else{
                                registrationEnsure.height=55
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
                width: parent.width; height: 130
                color: "transparent"
                Image{
                    id: threedModelImg
                    anchors.fill: parent
                    source: "qrc:/Img/3DModel1.png"
                }
                Rectangle{
                    width: 17; height:10
                    x: 257; y: 27
                    color: "transparent"
                    MouseArea{
                        anchors.fill: parent
                        onClicked:{
                            if (threedModel.height==130){
                                threedModel.height=483
                                threedModelImg.source = "qrc:/Img/3DModel2.png"
                            }
                            else{
                                threedModel.height=130
                                threedModelImg.source="qrc:/Img/3DModel1.png"
                            }
                        }
                    }
                }
            }
        }//taskPanel


        //ctViewer
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
        }//ctViewer

        //systemMenu
        Rectangle{
            id: systemMenu
            x: 1650; y: 8; width: 56
            color: "transparent"
            RowLayout{
                anchors.fill: parent
                spacing: 9
                ButtonOne{
                    id: informationBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/systemIcon/infoBtnDefault.png"
                    imageClick: "qrc:/Img/systemIcon/infoBtnClick.png"
                    imageHover: "qrc:/Img/systemIcon/infoBtnHover.png"
                }
                ButtonOne{
                    id: setBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/systemIcon/setBtnDefault.png"
                    imageClick:"qrc:/Img/systemIcon/setBtnClick.png"
                    imageHover:"qrc:/Img/systemIcon/setBtnHover.png"
                }
                ButtonOne{
                    id: snapShotBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/systemIcon/snapshotBtnDefault.png"
                    imageHover:"qrc:/Img/systemIcon/snapshotBtnHover.png"
                    imageClick:"qrc:/Img/systemIcon/snapshotBtnClick.png"
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
        //windowAdjust
        Rectangle{
            id: windowAdjust
            x: 20; y: 117; width: 70
            ColumnLayout{
                anchors.fill: parent
                spacing: 7
                ButtonToggle{
                    id: windowSelBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/windowsBtnDefault.png"
                    imageHover: "qrc:/Img/mainTool/windowsBtnHover.png"
                    imageClick: "qrc:/Img/mainTool/windowsBtnClick.png"
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
                    imageDefault: "qrc:/Img/mainTool/zoomBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/zoomBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/zoomBtnClick.png"
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
                ButtonOne{
                    id: resetBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/positionBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/positionBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/positionBtnClick.png"
                }
                ButtonToggle{
                    id: lockBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/lockBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/lockBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/lockBtnClick.png"
                }
                ButtonToggle{
                    id: rulerBtn
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/rulerBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/rulerBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/rulerBtnClick.png"
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
                    imageDefault: "qrc:/Img/mainTool/whitebalanceBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/whitebalanceBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/whitebalanceBtnClick.png"
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
                    imageDefault: "qrc:/Img/mainTool/centerBtnDefault.png"
                    imageHover:"qrc:/Img/mainTool/centerBtnHover.png"
                    imageClick:"qrc:/Img/mainTool/centerBtnClick.png"
                }
                ButtonToggle{
                    id: center1
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/emptyBt.png"
                    imageHover:"qrc:/Img/mainTool/emptyBt.png"
                    imageClick:"qrc:/Img/mainTool/emptyBt.png"
                }
                ButtonToggle{
                    id: center2
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/emptyBt.png"
                    imageHover:"qrc:/Img/mainTool/emptyBt.png"
                    imageClick:"qrc:/Img/mainTool/emptyBt.png"
                }
                ButtonToggle{
                    id: center3
                    width: parent.width; height: width
                    imageDefault: "qrc:/Img/mainTool/emptyBt.png"
                    imageHover:"qrc:/Img/mainTool/emptyBt.png"
                    imageClick:"qrc:/Img/mainTool/emptyBt.png"
                }
            }
        }
        ButtonOne{
            id: patientBtn
            x:19; y:8
            width: 103; height: 62
            color: "transparent"
            imageDefault: "qrc:/Img/patientBtnDefault.png"
            imageHover: "qrc:/Img/patientBtnHover.png"
            imageClick: "qrc:/Img/patientBtnClick.png"
            onClicked: {
            }
        }
    }
} //root window
