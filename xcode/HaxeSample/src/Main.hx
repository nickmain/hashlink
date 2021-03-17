import hl.I64;

@:hlNative("testbed")
extern abstract Swift(Dynamic) {
    static function foo(s: SomeStruct): Void;
}

@:struct
class SomeStruct {
    public var a: I64;
    public var b: String;

    public function new(a: I64, b: String) {
        this.a = a;
        this.b = b;
    }
}

class Main {
	static function main() {
        final ss = new SomeStruct(1234567890, "Hello World ❤️");
        Swift.foo(ss);
	}
}