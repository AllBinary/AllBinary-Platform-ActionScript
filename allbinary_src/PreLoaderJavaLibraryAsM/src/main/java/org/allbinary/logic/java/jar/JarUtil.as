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
package org.allbinary.logic.java.jar {
    import java.io.JIOException;
    import java.net.JURL;
    import java.net.JURLConnection;
    import java.util.jar.JJarEntry;
    import java.util.jar.JJarInputStream;

    public class JarUtil {
        private var jarURL:JURL = null;

        // Java field initializers run after the base constructor
        private function initFieldsJarUtil():void {
    
        }
    

    public function JarUtil(jarURL:JURL) {
        super();
        this.initFieldsJarUtil();
        this.jarURL = jarURL;
    }
    

    public function show():void {
        var cache:Vector.<int> = new Vector.<int>(1024);
        try {
            var conn:JURLConnection = this.jarURL.openConnection();
            var jis:JJarInputStream = new JJarInputStream(conn.getInputStream());
            while (true) {
                var entry:JJarEntry = jis.getNextJarEntry();
                if (entry != null) {
                    if (!entry.isDirectory()) {
                        var offset:int = 0;
                        var i:int = 0;
                        while (((i = jis.read(cache, offset, int(cache.length - offset)))) != -1) {
                            offset += i;
                            if (offset >= cache.length) {
                                var newcache:Vector.<int> = new Vector.<int>(int(cache.length + 1024));
                                JSystem.arraycopy(cache, 0, newcache, 0, cache.length);
                                cache = newcache;
                            }
                        }
                        var tmp:Vector.<int> = new Vector.<int>(offset);
                        JSystem.arraycopy(cache, 0, tmp, 0, offset);
                        trace(entry.getName());
                    }
                } else {
                    break;
                }
            }
        } catch (ex:*) {
            trace(String(ex));
            ex.printStackTrace();
        }
    }
    

    public static function main(args:Vector.<String>):void {
        new JarUtil(new JURL("file:///G:/mnt/bc/mydev/working/j2me/MiniSpaceWars/MiniSpaceWars/dist/MiniSpaceWars.jar")).show();
    }
    }
}

