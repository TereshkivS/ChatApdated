import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 1.3
import QtQuick.Controls.Styles 1.4

Window {
    id: root
    visible: true
    width: 640
    height: 480
    minimumHeight: 250

    Column{
        id: mycolumn
        spacing: 10
        width: parent.width
        height: parent.height
        Row{
            width: root.width
            id: myrow
            anchors.margins: 5
            spacing: 50
            Text {
                width: myrow.width/3 - myrow.spacing
                id: labelport
                text: qsTr("Enter port")
                font.pointSize: 16
            }
            TextField {
                width: myrow.width/3 - myrow.spacing
                font.pointSize: 16
                placeholderText: "e.g. 1234"
                style: TextFieldStyle {
                    textColor: "black"
                    background: Rectangle {
                        implicitWidth: 300
                        implicitHeight: 25
                        border.color: "#333"
                        border.width: 1
                    }
                }
            }
            Button{
                width: myrow.width/3 - myrow.spacing
                id: copybutton
                style: ButtonStyle{
                    label: Text{
                        //set text in center
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter

                        text: "Copy"
                        font.pointSize: 14

                    }
                }

                onClicked: {

                }
            }
        }
        Button{
            width: parent.width
            id: startserverbutton

            style: ButtonStyle{
                background:  Rectangle{
                    implicitWidth: 100
                    implicitHeight: 25
                    border.width: 1
                    radius: 4
                    color: "lightsteelblue"

                }
                label: Text{
                    //set text in center
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter

                    text: "Start Server"
                    font.pointSize: 14

                }

            }

            onClicked: {

            }
        }
        Rectangle{
            id: chatarea
            width: parent.width
            height: parent.height/3

            TextArea{
                id: textchatarea
                anchors.fill: parent
                font.pointSize: 14
            }
        }
        Text {
            id: labelactiveusers
            text: qsTr("Active Users")
            font.pointSize: 16
            //height: parent.height
        }

        TableView{
            width: parent.width
            height: parent.height/3

            TableViewStyle{

            }

            TableViewColumn{
                role: "domain name"
                title: "Domain"

            }
            TableViewColumn{
                role: "Host name"
                title: "Host"

            }
            TableViewColumn{
                role: "User name"
                title: "Name"
            }
            TableViewColumn{
                role: "Pooling time"
                title: "Pooling time"
            }
        }

    }

    title: qsTr("Server")
}
