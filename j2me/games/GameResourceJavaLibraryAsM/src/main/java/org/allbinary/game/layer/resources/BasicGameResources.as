/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
package org.allbinary.game.layer.resources {
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonStrings;

    public class BasicGameResources {
    private static var stringBuffer_value:StringMaker;
    private static var stringBuffer_set:Boolean = false;
    public static function get stringBuffer():StringMaker {
        if (!BasicGameResources.stringBuffer_set) {
            BasicGameResources.stringBuffer_set = true;
            BasicGameResources.stringBuffer_value = new StringMaker();
        }
        return BasicGameResources.stringBuffer_value;
    }
        public var logUtil:LogUtil = null;
        public var RESOURCE:String = null;
        public var RESOURCE_DESTROY:String = null;

        // Java field initializers run after the base constructor
        private function initFieldsBasicGameResources():void {
    this.logUtil = LogUtil.getInstance();
    this.RESOURCE = StringUtil.getInstance().EMPTY_STRING;
    this.RESOURCE_DESTROY = StringUtil.getInstance().EMPTY_STRING;
        }
    

    public function BasicGameResources() {
        super();
        this.initFieldsBasicGameResources();
    }
    

    public function init(ROOT:String, SIZE:Vector.<String>):void {
        try {
            var scale:int = GameConfigurationCentral.getInstance().SCALE.getValue().intValue();
            if (scale > 1 && int(scale - 1) < SIZE.length) {
                this.append(ROOT, SIZE[int(scale - 1)]);
            } else {
                throw new JException("Exception", new StringMaker().append("Invalid Value: ").appendint(scale).toString());
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, commonStrings.INIT, e);
        }
    }
    

    public function append(ROOT:String, sizeString:String):void {
        var DESTROY:String = "_destroy";
        var string:String = this.getString();
        BasicGameResources.stringBuffer.delete_(0, JString.lengthOf(BasicGameResources.stringBuffer));
        BasicGameResources.stringBuffer.append(ROOT);
        BasicGameResources.stringBuffer.append(string);
        BasicGameResources.stringBuffer.append(sizeString);
        this.RESOURCE = BasicGameResources.stringBuffer.toString();
        BasicGameResources.stringBuffer.delete_(0, JString.lengthOf(BasicGameResources.stringBuffer));
        BasicGameResources.stringBuffer.append(ROOT);
        BasicGameResources.stringBuffer.append(DESTROY);
        BasicGameResources.stringBuffer.append(string);
        BasicGameResources.stringBuffer.append(sizeString);
        this.RESOURCE_DESTROY = BasicGameResources.stringBuffer.toString();
    }
    

    public function getString():String {
        return GameGraphicsResourceUtil.getInstance().getName();
    }
    }
}

