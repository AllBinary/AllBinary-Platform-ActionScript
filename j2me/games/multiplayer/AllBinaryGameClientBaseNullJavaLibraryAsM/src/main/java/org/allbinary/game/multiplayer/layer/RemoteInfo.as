/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
package org.allbinary.game.multiplayer.layer {
    import org.allbinary.logic.string.StringUtil;

    public class RemoteInfo {
    public static const NEW_PLAYER_ID:int = 0;
    private static var REMOTE_INFO_value:RemoteInfo;
    private static var REMOTE_INFO_set:Boolean = false;
    public static function get REMOTE_INFO():RemoteInfo {
        if (!RemoteInfo.REMOTE_INFO_set) {
            RemoteInfo.REMOTE_INFO_set = true;
            RemoteInfo.REMOTE_INFO_value = new RemoteInfo(StringUtil.getInstance().EMPTY_STRING, -1, -1, RemoteInfo.NEW_PLAYER_ID);
        }
        return RemoteInfo.REMOTE_INFO_value;
    }
    

    public function RemoteInfo(username:String, actorSessionId:int, playerInputId:int, id:int) {
        super();
    }
    }
}

