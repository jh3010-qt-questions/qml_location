import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import Components 1.0

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
