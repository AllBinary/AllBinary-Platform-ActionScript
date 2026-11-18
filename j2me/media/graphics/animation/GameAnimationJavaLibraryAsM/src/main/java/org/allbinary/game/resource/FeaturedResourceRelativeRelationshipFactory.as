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
package org.allbinary.game.resource {
    import org.allbinary.graphics.PointFactory;
    import org.allbinary.graphics.RelativeRelationship;
    import org.allbinary.layer.AllBinaryLayer;
    import org.allbinary.layer.relationship.RelativeLayerRelationship;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class FeaturedResourceRelativeRelationshipFactory extends FeaturedResourceFactory {
    private static var INSTANCE_value:FeaturedResourceRelativeRelationshipFactory;
    private static var INSTANCE_set:Boolean = false;
    private static function get INSTANCE():FeaturedResourceRelativeRelationshipFactory {
        if (!FeaturedResourceRelativeRelationshipFactory.INSTANCE_set) {
            FeaturedResourceRelativeRelationshipFactory.INSTANCE_set = true;
            FeaturedResourceRelativeRelationshipFactory.INSTANCE_value = new FeaturedResourceRelativeRelationshipFactory();
        }
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE_value;
    }
        private var basicArrayListUtil:BasicArrayListUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsFeaturedResourceRelativeRelationshipFactory():void {
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
        }
    

    public function FeaturedResourceRelativeRelationshipFactory() {
        super();
        this.initFieldsFeaturedResourceRelativeRelationshipFactory();
    }
    

    public static function getInstance():FeaturedResourceRelativeRelationshipFactory {
        return FeaturedResourceRelativeRelationshipFactory.INSTANCE;
    }
    

    public function getRelativeRelationshipList(resource:String, layer:AllBinaryLayer):BasicArrayList {
        var featureReleaseList:BasicArrayList = this.getList();
        var size:int = this.getList().size();
        for (var index:int = 0; index < size; index++) {
            var featureInterface:ResourceRelativeRelationshipFactoryInterface = (featureReleaseList.objectArray[index] as ResourceRelativeRelationshipFactoryInterface);
            if (featureInterface.isFeature()) {
                var list:BasicArrayList = featureInterface.getResourceRelativeRelationshipList(resource);
                if (list != this.basicArrayListUtil.getImmutableInstance()) {
                    return this.duplicate(list, layer);
                }
            }
        }
        throw new JException("Exception", new StringMaker().append("Not available for current feature selection or Resource: ").append(resource).toString());
    }
    

    private function duplicate(list:BasicArrayList, layer:AllBinaryLayer):BasicArrayList {
        var pointFactory:PointFactory = PointFactory.getInstance();
        var newList:BasicArrayList = new BasicArrayListD();
        var size:int = list.size();
        for (var index:int = 0; index < size; index++) {
            var relativeRelationship:RelativeRelationship = (list.objectArray[index] as RelativeRelationship);
            newList.add(new RelativeLayerRelationship(layer, pointFactory.createXY(relativeRelationship.getX(), relativeRelationship.getY()), BasicArrayListUtil.getInstance().getImmutableInstance()));
        }
        return newList;
    }
    }
}

