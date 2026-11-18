// Generated Code Do Not Modify
package org.allbinary.game.layer.drop {
    import org.allbinary.layer.AllBinaryLayerFactoryInterface;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;
    import org.allbinary.util.BasicArrayListUtil;

    public class PlacedLayerFactory {
    private static var instance_value:PlacedLayerFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():PlacedLayerFactory {
        if (!PlacedLayerFactory.instance_set) {
            PlacedLayerFactory.instance_set = true;
            PlacedLayerFactory.instance_value = new PlacedLayerFactory();
        }
        return PlacedLayerFactory.instance_value;
    }
        private var list:BasicArrayList = null;
        private var basicArrayListUtil:BasicArrayListUtil = null;

        // Java field initializers run after the base constructor
        private function initFieldsPlacedLayerFactory():void {
    this.list = new BasicArrayListD();
    this.basicArrayListUtil = BasicArrayListUtil.getInstance();
        }
    

    public function PlacedLayerFactory() {
        super();
        this.initFieldsPlacedLayerFactory();
    }
    

    public function clear():void {
        this.list.clear();
    }
    

    public static function getInstance():PlacedLayerFactory {
        return PlacedLayerFactory.instance;
    }
    

    public function getSize():int {
        return this.list.size();
    }
    

    public function getRandomInstance():AllBinaryLayerFactoryInterface {
        return (this.basicArrayListUtil.getRandom(this.list) as AllBinaryLayerFactoryInterface);
    }
    

    public function add(layerInterfaceFactoryInterface:AllBinaryLayerFactoryInterface):void {
        this.list.add(layerInterfaceFactoryInterface);
    }
    }
}

