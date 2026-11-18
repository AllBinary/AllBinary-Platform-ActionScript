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
package org.allbinary.game.configuration.feature {
    import org.allbinary.game.configuration.GameConfigurationGauge;
    import org.allbinary.game.configuration.GameConfigurationUtil;
    import org.allbinary.game.configuration.GameOptionsForm;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.midlet.MidletStrings;
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;

    public class GameFeatureItemCommandListener implements ItemCommandListener {
        public var logUtil:LogUtil = null;
        private var gameOptionsForm:GameOptionsForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureItemCommandListener():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function GameFeatureItemCommandListener(gameOptionsForm:GameOptionsForm) {
        super();
        this.initFieldsGameFeatureItemCommandListener();
        this.gameOptionsForm = gameOptionsForm;
    }
    

    public function commandAction(command:Command, item:Item):void {
        try {
            var itemLabel:String = item.getLabel();
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, MidletStrings.getInstance().COMMAND_ACTION);
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, (item as GameConfigurationGauge));
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, MidletStrings.getInstance().COMMAND_ACTION, e);
        }
    }
    }
}

