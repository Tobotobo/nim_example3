# # nimble install wNim
# # nim c -d:release -d:strip --opt:size --app:gui --out:bin/release/wnim_example1.exe src/wnim_example1.nim
# import wNim
# # import winim/lean

# # proc msgBox(str: string) =
# #   MessageDialog(nil, str, "情報", wOk or wIconInformation).display()

# # msgBox("aaa")

# # let app = App()
# # let frame = Frame(title="Hello World", size=(800, 600))

# # frame.center()
# # frame.show()
# # app.mainLoop()

# # let app = App(wSystemDpiAware)
# # let frame = Frame(title="Hello World", style=wDefaultFrameStyle or wModalFrame)

# # frame.dpiAutoScale:
# #   frame.size = (640, 530)
# #   frame.minSize = (500, 450)

# # let panel = Panel(frame)

# # let statusBar = StatusBar(frame)
# # let buttonOk = Button(panel, label="&OK", size=(90, 30), pos=(100, 120))
# # let buttonCancel = Button(panel, label="&Cancel", size=(90, 30), pos=(200, 120))
# # let menubar = MenuBar(frame)
# # let menu = Menu(menubar, "&File")

# # buttonOk.wEvent_Button do ():
# #   MessageDialog(frame, "OK", "情報", wOk or wIconInformation).display()

# # frame.center()
# # frame.show()
# # app.mainLoop()

# # let app = App()
# # let frame = Frame(title="wNim Frame", size=(400, 300))
# # let panel = Panel(frame)
# # let button1 = Button(panel, label="Button1")
# # let button2 = Button(panel, label="Button2")

# # proc layout() =
# #   button1.size = (panel.size.width div 2, panel.size.height)
# #   button1.position = (0, 0)

# #   button2.size = (panel.size.width div 2, panel.size.height)
# #   button2.position = (panel.size.width div 2, 0)

# # # frame.wEvent_Size already has it's default event handler to resize the panel.
# # # see https://github.com/khchen/wNim/wiki/Event-Handling#skip-event

# # panel.wEvent_Size do ():
# #   layout()

# # layout()
# # frame.center()
# # frame.show()
# # app.mainLoop()

# let app = App()
# let frame = Frame(title="wNim Frame", size=(400, 300))
# let panel = Panel(frame)
# let button1 = Button(panel, label="Button1")
# let button2 = Button(panel, label="Button2")

# # proc layout() =
# #   panel.autolayout """
# #     H:|[button1][button2(button1)]|
# #     V:|[button1,button2]|
# #   """
# proc layout() =
#   # self = button1
#   # resizer.addObject(button1)
#   # resizer.addConstraint(self.left == panel.left + 10)
#   # resizer.addConstraint(self.top == panel.top + 10)
#   # resizer.addConstraint(self.bottom == panel.bottom - 10)
#   # self = button2
#   # resizer.addObject(button2)
#   # resizer.addConstraint(self.left == button1.right + 10)
#   # resizer.addConstraint(self.width == button1.width)
#   # resizer.addConstraint(self.right == panel.right - 10)
#   # resizer.addConstraint(self.top == panel.top + 10)
#   # resizer.addConstraint(self.bottom == panel.bottom - 10)

# panel.wEvent_Size do ():
#   layout()

# layout()
# frame.center()
# frame.show()
# app.mainLoop()