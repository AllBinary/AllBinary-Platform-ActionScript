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
package org.allbinary.animation {
    import org.allbinary.animation.resource.FeatureResourceAnimationInterfaceFactoryInterface;
    import org.allbinary.game.configuration.GameConfigurationCentral;
    import org.allbinary.game.resource.FeaturedResourceFactory;
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.Rectangle;
    import org.allbinary.graphics.RectangleFactory;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.logic.string.StringUtil;
    import org.allbinary.string.CommonSeps;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class FeaturedAnimationInterfaceFactoryInterfaceFactory extends FeaturedResourceFactory {
    private static var INSTANCE_value:FeaturedAnimationInterfaceFactoryInterfaceFactory;
    private static var INSTANCE_set:Boolean = false;
    private static function get INSTANCE():FeaturedAnimationInterfaceFactoryInterfaceFactory {
        if (!FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_set) {
            FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_set = true;
            FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_value = new FeaturedAnimationInterfaceFactoryInterfaceFactory();
        }
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_value;
    }
    private static function set INSTANCE(value:FeaturedAnimationInterfaceFactoryInterfaceFactory):void {
        FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_set = true;
        FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE_value = value;
    }
    

    public function FeaturedAnimationInterfaceFactoryInterfaceFactory() {
        super();
    }
    

    public static function getInstance():FeaturedAnimationInterfaceFactoryInterfaceFactory {
        return FeaturedAnimationInterfaceFactoryInterfaceFactory.INSTANCE;
    }
    

    public function getRectangle(resource:String):Rectangle {
        return this.getRectangleXY(resource, 0, 0);
    }
    

    public function getRectangleXY(resource:String, x:int, y:int):Rectangle {
        var pointFactory:PointFactory = PointFactory.getInstance();
        var list:BasicArrayList = this.getList();
        var scale:int = GameConfigurationCentral.getInstance().SCALE.getValue().intValue();
        var size:int = this.getList().size();
        for (var index:int = 0; index < size; index++) {
            var featureInterface:FeatureResourceAnimationInterfaceFactoryInterface = (list.objectArray[index] as FeatureResourceAnimationInterfaceFactoryInterface);
            if (featureInterface.isFeature()) {
                var rectangle:Rectangle = featureInterface.getRectangle(resource);
                if (rectangle != RectangleFactory.SINGLETON) {
                    return new Rectangle(pointFactory.createXY(x, y), ((int(rectangle.getWidth() * scale)) >> 1), ((int(rectangle.getHeight() * scale)) >> 1));
                }
            }
        }
        throw new JException("Exception", new StringMaker().append("No rectangle available for current feature selection or Resource: ").append(resource).toString());
    }
    

    public function getProcedural(resource:String):ProceduralAnimationInterfaceFactoryInterface {
        return (this.getBasicAnimationInterfaceFactoryInstance(resource) as ProceduralAnimationInterfaceFactoryInterface);
    }
    

    public function get_(resource:String):AnimationInterfaceFactoryInterface {
        return (this.getBasicAnimationInterfaceFactoryInstance(resource) as AnimationInterfaceFactoryInterface);
    }
    

    private function getBasicAnimationInterfaceFactoryInstance(resource:String):BasicAnimationInterfaceFactoryInterface {
        var list:BasicArrayList = this.getList();
        var resourceTypeAvailableList:BasicArrayList = new BasicArrayListD();
        var size:int = this.getList().size();
        var featureInterface:FeatureResourceAnimationInterfaceFactoryInterface = null;
        var animationInterfaceFactoryInterface:BasicAnimationInterfaceFactoryInterface = null;
        for (var index:int = 0; index < size; index++) {
            featureInterface = (list.objectArray[index] as FeatureResourceAnimationInterfaceFactoryInterface);
            if (featureInterface.isFeature()) {
                resourceTypeAvailableList.add(featureInterface);
                animationInterfaceFactoryInterface = featureInterface.getBasicAnimationInterfaceFactoryInstance(resource);
                if (animationInterfaceFactoryInterface != NullAnimationFactory.NULL_NOT_FOR_USE_ANIMATION_FACTORY) {
                    return animationInterfaceFactoryInterface;
                }
            }
        }
        if (resourceTypeAvailableList.size() > 0) {
            var NO_ANIMATION_AVAILABLE_FROM:String = "No animation available from: ";
            var FOR_FACTORIES:String = " factories: ";
            var FOR_RESOURCE:String = " for Resource: ";
            var HAS_KEY:String = " has: ";
            var RESOURCES_LABEL:String = " resources ";
            stringBuffer = new StringMaker();
            stringBuffer.append(NO_ANIMATION_AVAILABLE_FROM);
            stringBuffer.appendint(resourceTypeAvailableList.size());
            stringBuffer.append(CommonSeps.getInstance().FORWARD_SLASH);
            stringBuffer.appendint(size);
            stringBuffer.append(FOR_FACTORIES);
            var size2:int = resourceTypeAvailableList.size();
            for (index = 0; index < size2; index++) {
                stringBuffer.append(resourceTypeAvailableList.get_(index).toString());
                stringBuffer.append(CommonSeps.getInstance().COMMA_SEP);
            }
            stringBuffer.append(FOR_RESOURCE);
            stringBuffer.append(resource);
            for (index = 0; index < size; index++) {
                stringBuffer.append(CommonSeps.getInstance().NEW_LINE);
                featureInterface = (list.objectArray[index] as FeatureResourceAnimationInterfaceFactoryInterface);
                if (featureInterface.isFeature()) {
                    stringBuffer.append(StringUtil.getInstance().toString1(featureInterface));
                    stringBuffer.append(HAS_KEY);
                    stringBuffer.appendint(featureInterface.getHashtable().size());
                    stringBuffer.append(RESOURCES_LABEL);
                }
            }
            throw new JException("Exception", stringBuffer.toString());
        } else {
            var stringBuffer:StringMaker = new StringMaker();
            for (index = 0; index < size; index++) {
                featureInterface = (list.objectArray[index] as FeatureResourceAnimationInterfaceFactoryInterface);
                stringBuffer.append(featureInterface.toString());
                stringBuffer.append(CommonSeps.getInstance().SPACE);
            }
            var result:String = stringBuffer.toString();
            stringBuffer.delete_(0, stringBuffer.length());
            throw new JException("Exception", stringBuffer.append("No feature resource type available for Resource: ").append(resource).append(" Resource Factories Available: ").append(result).toString());
        }
    }
    }
}

