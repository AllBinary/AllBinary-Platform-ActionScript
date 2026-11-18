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
package org.allbinary.game.configuration {
    import org.allbinary.game.configuration.feature.Features;
    import org.allbinary.game.configuration.feature.GameFeatureChoiceGroups;
    import org.allbinary.game.configuration.feature.InGameFeatureChoiceGroups;
    import org.allbinary.game.configuration.feature.SensorFeatureFactory;
    import org.allbinary.game.configuration.feature.TouchFeatureFactory;
    import org.allbinary.init.Init;
    import org.allbinary.input.gyro.OrientationData;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class InGameFeatures extends Init {
    

    override public function init():void {
        var LABEL:String = "Screen Buttons";
        var orientationData:OrientationData = OrientationData.getInstance();
        var exclusiveOrientationSensorVector:BasicArrayList = (GameFeatureChoiceGroups.getExclusiveInstance().get_().get_((orientationData.ORIENTATION_SENSOR_INPUT as Object)) as BasicArrayList);
        var inGameFeatureChoiceGroups:InGameFeatureChoiceGroups = InGameFeatureChoiceGroups.getExclusiveInstance();
        if (exclusiveOrientationSensorVector != null) {
            var inGameExclusiveOrientationSensorVectorCanBeNull:Object = inGameFeatureChoiceGroups.get_().get_((orientationData.ORIENTATION_SENSOR_INPUT as Object));
            if (inGameExclusiveOrientationSensorVectorCanBeNull == null) {
                this.addToInGameMenu();
            } else {
                var inGameExclusiveOrientationSensorVector:BasicArrayList = (inGameExclusiveOrientationSensorVectorCanBeNull as BasicArrayList);
                if (inGameExclusiveOrientationSensorVector.size() == 0) {
                    this.addToInGameMenu();
                }
            }
        }
        var features:Features = Features.getInstance();
        if (features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)) {
            var exclusiveScreenButtonsVector:BasicArrayList = new BasicArrayListD();
            var touchFeatureFactory:TouchFeatureFactory = TouchFeatureFactory.getInstance();
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS);
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS);
            inGameFeatureChoiceGroups.add(LABEL, exclusiveScreenButtonsVector);
        }
    }
    

    private function addToInGameMenu():void {
        var orientationData:OrientationData = OrientationData.getInstance();
        var inGameExclusiveOrientationSensorVector:BasicArrayList = new BasicArrayListD();
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS);
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION);
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector);
    }
    

    public function isAny():Boolean {
        var features:Features = Features.getInstance();
        var touchFeatureFactory:TouchFeatureFactory = TouchFeatureFactory.getInstance();
        if (features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)) {
            return true;
        }
        var exclusiveOrientationSensorVector:BasicArrayList = (GameFeatureChoiceGroups.getExclusiveInstance().get_().get_((OrientationData.getInstance().ORIENTATION_SENSOR_INPUT as Object)) as BasicArrayList);
        if (exclusiveOrientationSensorVector != null) {
            return true;
        }
        return false;
    }
    }
}

