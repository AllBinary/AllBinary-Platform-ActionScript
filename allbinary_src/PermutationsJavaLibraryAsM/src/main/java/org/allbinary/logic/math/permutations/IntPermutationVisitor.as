// Generated Code Do Not Modify
package org.allbinary.logic.math.permutations {
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonSeps;

    public class IntPermutationVisitor extends Visitor {
        public var data:Vector.<int> = null;
        private var stringBuilder:StringMaker = null;

        // Java field initializers run after the base constructor
        private function initFieldsIntPermutationVisitor():void {
    
    this.stringBuilder = new StringMaker();
        }
    

    public function IntPermutationVisitor(data:Vector.<int>) {
        super();
        this.initFieldsIntPermutationVisitor();
        this.data = data;
    }
    

    override public function visit(anyType:Object):Object {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        this.print(this.data, this.stringBuilder);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public function print(data:Vector.<int>):void {
        var stringBuilder:StringMaker = new StringMaker();
        this.print(data, stringBuilder);
    }
    

    public function print(data:Vector.<int>, stringBuilder:StringMaker):void {
        var commonSeps:CommonSeps = CommonSeps.getInstance();
        var size:int = data.length;
        for (var i:int = 0; i < size; i++) {
            stringBuilder.appendint(data[i]);
            stringBuilder.append(commonSeps.SPACE);
        }
        trace(stringBuilder.toString());
    }
    }
}

