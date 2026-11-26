// Generated Code Do Not Modify
package org.allbinary.logic.math.permutations {
    import org.allbinary.TsUtil;
    import org.allbinary.logic.NullUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.util.visitor.Visitor;
    import org.allbinary.string.CommonSeps;

    public class ObjectPermutationVisitor extends Visitor {
        public var data:Vector.<Object> = null;
        private var stringBuilder:StringMaker = null;

        // Java field initializers run after the base constructor
        private function initFieldsObjectPermutationVisitor():void {
    
    this.stringBuilder = new StringMaker();
        }
    

    public function ObjectPermutationVisitor(data:Vector.<Object>) {
        super();
        this.initFieldsObjectPermutationVisitor();
        this.data = data;
    }
    

    override public function visit(...args):* {
        if (args.length == 1) {
            return this.visit_jo1(args[0]);
        }
        return super.visit.apply(this, args);
    }

    private function visit_jo1(anyType:Object):Object {
        this.stringBuilder.delete_(0, this.stringBuilder.length());
        this.print(this.data, this.stringBuilder);
        return NullUtil.getInstance().NULL_OBJECT;
    }
    

    public function print(...args):void {
        if (args.length == 1) {
            this.print_jo1(args[0]);
            return;
        }
        if (args.length == 2) {
            this.print_jo2(args[0], args[1]);
            return;
        }
        throw new JException("IllegalArgumentException", "print");
    }

    private function print_jo1(data:Vector.<Object>):void {
        var stringBuilder:StringMaker = new StringMaker();
        this.print(data, stringBuilder);
    }

    private function print_jo2(data:Vector.<Object>, stringBuilder:StringMaker):void {
        var tsUtil:TsUtil = TsUtil.getInstance();
        var size:int = data.length;
        for (var i:int = 0; i < size; i++) {
            stringBuilder.appendint(tsUtil.hashCode(data[i]));
            stringBuilder.append(CommonSeps.getInstance().SPACE);
        }
        trace(stringBuilder.toString());
    }
    
    }
}

