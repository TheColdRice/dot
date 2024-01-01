import { Widget } from '../../../imports.js'
import { FontIcon } from '../../../misc/main.js'

import { ColorPicker, ScreenRecorder } from '../../../services/main.js'
import PanelButton from './PanelButton.js'

const { Gdk } = imports.gi

const ColorPickerButton = () => PanelButton({
  className: 'color-picker',
  content: FontIcon(''),
  binds: [[
    'tooltip-text', 
    ColorPicker, 
    'colors', 
    v => `${v.length} colors`
  ]],
  onClicked: () => ColorPicker.pick(),

  onSecondaryClick: btn => {
    if (Colors.colors.length === 0) return
    Widget.Menu({
      className: 'colorpicker',
      children: Colors.colors.map(color => Widget.MenuItem({
        child: Widget.Label(color),
        css: `background-color: ${color}`,
        onActivate: () => Colors.wlCopy(color),
      })),
    }).popup_at_widget(btn, Gdk.Gravity.SOUTH, Gdk.Gravity.NORTH, null)
  },
})

const ScreenShotButton = () => PanelButton({
  content: FontIcon(''),
  onClicked: () => ScreenRecorder.screenshot()
})

export default () => Widget.Box({
  children: [
    ColorPickerButton(),
    ScreenShotButton(),
  ]
})
