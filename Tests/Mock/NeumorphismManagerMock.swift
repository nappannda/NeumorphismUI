import SwiftUI

@available(iOS 13.0, *)
class NeumorphismManagerMock: NeumorphismManagable {
    var isDark = false
    
    var fontColorCallCount = 0
    var fontColorArgs: (lightColor: Color?, darkColor: Color?)?
    func fontColor(lightColor: Color? = nil, darkColor: Color? = nil) -> Color {
        fontColorCallCount += 1
        fontColorArgs?.lightColor = lightColor
        fontColorArgs?.darkColor = darkColor
        if isDark {
            return lightColor ?? Color.white
        } else {
            return darkColor ?? Color.black
        }
    }
    
    var changeModeCallCount = 0
    func changeMode() {
        changeModeCallCount += 1
        isDark.toggle()
    }
}
