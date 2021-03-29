import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12



Window
{
  width: 640
  height: 480
  visible: true

  title: qsTr("Hello World")

  property var componentNames: [ "qml/more/MyDeeperComponent.qml", "qml/MyDeepComponent.qml" ]

  function generateObjects()
  {
      function generateOneObject( name )
      {
          var component
          var componentObject

          function finishCreation()
          {
              componentObject = component.createObject( contentColumn );
          }

          component = Qt.createComponent( `qrc:/${name}` )

          if ( component.status === Component.Ready )
          {
              finishCreation()
          }
          else
          {
              component.statusChanged.connect( finishCreation );
          }
      }

      for ( var index in componentNames )
      {
          generateOneObject(componentNames[index])
      }
  }

  Component.onCompleted: {
      generateObjects()
  }

  Column
  {
    id: contentColumn
  }
}
