// Copyright © 2020 David N Main. All rights reserved.

import Foundation

@_cdecl("testbed_foo")
func printSomething(s: SomeStruct) {
    print(s.pointee.a);

    let b = s.pointee.b.pointee
    print(b);

    let string = Swift.String(bytesNoCopy: b.bytes,
                              length: Int(b.length)*2, //char count * char size
                              encoding: .utf16LittleEndian, //is actually UCS2
                              freeWhenDone: false);
    print(string ?? "")
}
