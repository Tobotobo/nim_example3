# nimble install webui
# nim c -d:release -d:strip --opt:size --app:gui --out:bin/release/webgui_minimal.exe src/webgui_minimal.nim
import webui

let window = newWindow() # Create a new Window
window.show("<html>Hello</html>") # Show the window with html content

wait() # Wait until the window gets closed