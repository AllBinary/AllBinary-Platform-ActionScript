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
    import org.allbinary.string.CommonLabels;
    import org.allbinary.string.CommonStrings;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class GameFeatureItemStateListener implements ItemStateListener {
    private static var toggleList_value:BasicArrayList;
    private static var toggleList_set:Boolean = false;
    private static function get toggleList():BasicArrayList {
        if (!GameFeatureItemStateListener.toggleList_set) {
            GameFeatureItemStateListener.toggleList_set = true;
            GameFeatureItemStateListener.toggleList_value = new BasicArrayListD();
        }
        return GameFeatureItemStateListener.toggleList_value;
    }
        public var logUtil:LogUtil = null;
        private var gameOptionsForm:GameOptionsForm = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureItemStateListener():void {
    this.logUtil = LogUtil.getInstance();
    
        }
    

    public function GameFeatureItemStateListener(gameOptionsForm:GameOptionsForm) {
        super();
        this.initFieldsGameFeatureItemStateListener();
        this.gameOptionsForm = gameOptionsForm;
        var gameFeatureFactory:GameFeatureFactory = GameFeatureFactory.getInstance();
        GameFeatureItemStateListener.add(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.DAMAGE_FLOATERS);
        GameFeatureItemStateListener.add(gameFeatureFactory.DROPPED_ITEMS);
        GameFeatureItemStateListener.add(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR);
        GameFeatureItemStateListener.add(gameFeatureFactory.HEALTH_BARS);
        GameFeatureItemStateListener.add(gameFeatureFactory.SOUND);
        GameFeatureItemStateListener.add(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR);
    }
    

    public static function add(gameFeature:GameFeature):void {
        if (!GameFeatureItemStateListener.toggleList.contains(gameFeature)) {
            GameFeatureItemStateListener.toggleList.add(gameFeature);
        }
    }
    

    public function itemStateChanged(item:Item):void {
        try {
            var itemLabel:String = item.getLabel();
            this.logUtil.putF(new StringMaker().append(CommonLabels.getInstance().ITEM_LABEL).append(itemLabel).toString(), this, "itemStateChanged");
            if ((item is GameConfigurationGauge)) {
                GameConfigurationUtil.getInstance().change(this.gameOptionsForm, (item as GameConfigurationGauge));
            } else if ((item is ChoiceGroup)) {
                var gameFeatureUtil:GameFeatureUtil = GameFeatureUtil.getInstance();
                if (gameFeatureUtil.isExclusive(itemLabel)) {
                    gameFeatureUtil.updateExclusiveForChoiceGroup((item as ChoiceGroup));
                } else {
                    gameFeatureUtil.updateMultiple((item as ChoiceGroup));
                }
            }
        } catch (e:*) {
            var commonStrings:CommonStrings = CommonStrings.getInstance();
            this.logUtil.put(commonStrings.EXCEPTION, this, "itemStateChanged", e);
        }
    }
    }
}

