import JavaScriptKit
#if canImport(emsdk)
import emsdk
#endif
#if canImport(WASILibc)
import WASILibc
#endif

func main() {

    guard
    case .object(let canvas) = JSObject.global.document.createElement("canvas")
    else
    {
        print("Could not create elements")
        fatalError("Could not create elements")
    }
    _ = JSObject.global.document.body.appendChild(canvas)

    if let gl = canvas.getContext?("webgl") {
        print("WebGL is supported")
        canvas.width = 800
        canvas.height = 600
        _ = gl.viewport(0, 0, 800, 600);
        _ = gl.clearColor(1.0, 0.0, 0.0, 1.0);
        _ = gl.clear(gl.COLOR_BUFFER_BIT);
    

    } else {
        print("WebGL is not supported")
    }

    let n:Double = 10
    let number = sqrt(n);
    print("sqrt(\(n)) = \(number)")

    

}
main()