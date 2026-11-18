// Generated Code Do Not Modify
package org.allbinary.business.advertisement {
    import org.allbinary.game.GameAdState;
    import org.allbinary.logic.system.SoftwareInformation;

    public class GameAdStateFactory implements GameAdStateFactoryInterface {
    private static var instance_value:GameAdStateFactory;
    private static var instance_set:Boolean = false;
    private static function get instance():GameAdStateFactory {
        if (!GameAdStateFactory.instance_set) {
            GameAdStateFactory.instance_set = true;
            GameAdStateFactory.instance_value = new GameAdStateFactory();
        }
        return GameAdStateFactory.instance_value;
    }
        private var gameAdStateArray:Vector.<GameAdState> = null;
        private var gameAdState:GameAdState = null;

        // Java field initializers run after the base constructor
        private function initFieldsGameAdStateFactory():void {
    this.gameAdStateArray = new <GameAdState>[new GameAdState(new AppNameLicensingAdConfiguration())];
    this.gameAdState = this.gameAdStateArray[0];
        }

        public function GameAdStateFactory() {
            super();
            this.initFieldsGameAdStateFactory();
        }
    

    public static function getInstance():GameAdStateFactory {
        return GameAdStateFactory.instance;
    }
    

    public function getCurrentInstance():GameAdState {
        return this.gameAdState;
    }
    

    public function getInstanceForApp(softwareInformation:SoftwareInformation):GameAdStateBase {
        this.gameAdState = this.gameAdStateArray[0];
        return this.gameAdStateArray[0];
    }
    

    public function isEnabled():Boolean {
        return false;
    }
    }
}

