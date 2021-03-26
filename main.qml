import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

import "qml"
import "qml/more"

Window
{
  width: 640
  height: 480
  visible: true

  title: qsTr("Hello World")

  Column
  {
    MyDeepComponent
    {
    }

    MyDeeperComponent
    {
    }
  }
}
