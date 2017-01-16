import QtQuick 2.0

Rectangle {
    id: myRect
    property string imageDefault: ""
    property string imageSource: imageDefault
    property string imageClick: ""
    property string imageHover: ""
    property string imageUnenable: ""
    property var mouseArea
    signal clicked

    Image{
        id: img
        anchors.fill: parent
        source: imageDefault
        fillMode: Image.PreserveAspectFit
    }
    MouseArea{
        id: mouseArea
        anchors.fill: parent
//        hoverEnabled: true;
//        onEntered: {
//            myRect.state= "hover"
//        }
//        onExited: {
//            myRect.state=="hover"? myRect.state="default":1
//        }
        onClicked: {
            myRect.state =="clicked"? myRect.state = "default": myRect.state = "clicked"
            parent.clicked()
        }
    }
    states: [
        State{
            name: "default"
            PropertyChanges {
               target: img;
               source: imageDefault
            }
        },
        State{
            name: "clicked"
            PropertyChanges {
                target: img;
                source: imageClick
            }
        },
        State{
            name: "hover"
            PropertyChanges {
                target: img;
                source: imageHover
            }
        }

    ]
}
