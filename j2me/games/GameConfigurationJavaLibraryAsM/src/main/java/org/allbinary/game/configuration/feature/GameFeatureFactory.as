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

    public class GameFeatureFactory {
    private static var instance_value:GameFeatureFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameFeatureFactory {
        if (!GameFeatureFactory.instance_set) {
            GameFeatureFactory.instance_set = true;
            GameFeatureFactory.instance_value = new GameFeatureFactory();
        }
        return GameFeatureFactory.instance_value;
    }
        public var SOUND:GameFeature = null;
        public var MUSIC:GameFeature = null;
        public var SCREEN_SHAKE:Feature = null;
        public var POST_IMAGE_LOADING_MODIFICATION:Feature = null;
        public var HEALTH_BARS:GameFeature = null;
        public var DAMAGE_FLOATERS:GameFeature = null;
        public var GAME_INPUT_LAYER_PROCESSOR:GameFeature = null;
        public var ARTIFICIAL_INTELLEGENCE_PROCESSOR:GameFeature = null;
        public var COLLIDABLE_INTERFACE_LAYER_PROCESSOR:GameFeature = null;
        public var TICKABLE_LAYER_PROCESSOR:GameFeature = null;
        public var CHEATING:GameFeature = null;
        public var DROPPED_ITEMS:GameFeature = null;
        public var DROPPED_ITEMS_FROM_DEATH:GameFeature = null;
        public var TEST_DESTROYED_LAYER_PROCESSOR:GameFeature = null;
        public var COLLISIONS_WITH_SOURCE:GameFeature = null;
        public var COLLISIONS_FORCED_TWO_DIMENSIONAL:GameFeature = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameFeatureFactory():void {
    this.SOUND = new GameFeature("Sound");
    this.MUSIC = new GameFeature("Music");
    this.SCREEN_SHAKE = new Feature("Screen Shake");
    this.POST_IMAGE_LOADING_MODIFICATION = new Feature("Post Image Loading Modification (Scaling, Rotation, or Other)");
    this.HEALTH_BARS = new GameFeature("Health Bars");
    this.DAMAGE_FLOATERS = new GameFeature("Damage Floaters");
    this.GAME_INPUT_LAYER_PROCESSOR = new GameFeature("Game Input Layer Processor");
    this.ARTIFICIAL_INTELLEGENCE_PROCESSOR = new GameFeature("Artificial Intelligence Layer Processor");
    this.COLLIDABLE_INTERFACE_LAYER_PROCESSOR = new GameFeature("Collidable Interface Layer Processor");
    this.TICKABLE_LAYER_PROCESSOR = new GameFeature("Tickable Layer Processor");
    this.CHEATING = new GameFeature("Cheating");
    this.DROPPED_ITEMS = new GameFeature("Drops");
    this.DROPPED_ITEMS_FROM_DEATH = new GameFeature("Drops from Dead");
    this.TEST_DESTROYED_LAYER_PROCESSOR = new GameFeature("Destroyed Layer Processor");
    this.COLLISIONS_WITH_SOURCE = new GameFeature("Allow Collisions With Source");
    this.COLLISIONS_FORCED_TWO_DIMENSIONAL = new GameFeature("Collisions Forced Two Dimensional");
        }
    

    public static function getInstance():GameFeatureFactory {
        return GameFeatureFactory.instance;
    }
    

    public function GameFeatureFactory() {
        super();
        this.initFieldsGameFeatureFactory();
    }
    }
}

