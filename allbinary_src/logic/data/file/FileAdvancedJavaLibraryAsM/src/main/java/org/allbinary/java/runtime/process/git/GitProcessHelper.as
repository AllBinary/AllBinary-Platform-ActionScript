/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
package org.allbinary.java.runtime.process.git {
    import java.io.JFile;
    import java.io.JIOException;
    import java.nio.charset.JStandardCharsets;
    import java.util.JArrayList;
    import java.util.JList;
    import org.allbinary.logic.communication.log.LogUtil;
    import org.allbinary.logic.io.file.AbFile;
    import org.allbinary.logic.io.file.AbFileNativeUtil;
    import org.allbinary.logic.io.file.directory.TrackedStrings;
    import org.allbinary.logic.string.StringMaker;
    import org.allbinary.string.CommonStrings;
    import java.lang.JProcess;
    import java.lang.JProcessBuilder;

    //Do not use this instead just skip target, build, Application paths.
    public class GitProcessHelper {
    private static var instance_value:GitProcessHelper;
    private static var instance_set:Boolean = false;
    private static function get instance():GitProcessHelper {
        if (!GitProcessHelper.instance_set) {
            GitProcessHelper.instance_set = true;
            GitProcessHelper.instance_value = new GitProcessHelper();
        }
        return GitProcessHelper.instance_value;
    }
        private var trackedStrings:TrackedStrings = null;

        // Java field initializers run after the base constructor
        private function initFieldsGitProcessHelper():void {
    this.trackedStrings = TrackedStrings.getInstance();
        }
    

    public static function getInstance():GitProcessHelper {
        return GitProcessHelper.instance;
    }
    

    public function GitProcessHelper() {
        super();
        this.initFieldsGitProcessHelper();
        var logUtil:LogUtil = LogUtil.getInstance();
        var commonStrings:CommonStrings = CommonStrings.getInstance();
        var THIS_IS_SLOW:String = "This is slow consider path exclusion instead";
        logUtil.putF(THIS_IS_SLOW, this, commonStrings.CONSTRUCTOR);
    }
    

    public function trackedFiles(...args):JList {
        if (args.length == 2) {
            return this.trackedFiles_jo2(args[0], args[1]);
        }
        if (args.length == 3) {
            return this.trackedFiles_jo3(args[0], args[1], args[2]);
        }
        throw new JException("IllegalArgumentException", "trackedFiles");
    }

    private function trackedFiles_jo2(rootAsString:String, pathspec:String):JList {
        return this.trackedFiles(rootAsString, pathspec, ".java");
    }

    private function trackedFiles_jo3(rootAsString:String, pathspec:String, suffix:String):JList {
        var process:JProcess = new JProcessBuilder(this.trackedStrings.GIT_COMMAND, this.trackedStrings.CHANGE_DIRECTORY_OPTION, rootAsString, this.trackedStrings.LIST_FILES_COMMAND, this.trackedStrings.SEP_BY_NULL_CHAR_INSTEAD_OF_NEW_LINE, this.trackedStrings.PATHSPEC_SEPARATOR, pathspec).redirectError(JProcessBuilder.Redirect.INHERIT).start();
        var output:Vector.<int> = process.getInputStream().readAllBytes();
        var exitCode:int = process.waitFor();
        if (exitCode != 0) {
            throw new JException("IllegalStateException", new StringMaker().append("git ls-files failed for ").append(rootAsString).append(" with exit code ").appendint(exitCode).toString());
        }
        var files:JList = new JArrayList();
        var start:int = 0;
        var relativePath:String = null;
        for (var index:int = 0; index < output.length; index++) {
            if (output[index] == 0) {
                relativePath = JString.ofBytes(output, start, int(index - start), JStandardCharsets.UTF_8);
                if (JString.endsWith(relativePath, suffix)) {
                    files.add(relativePath);
                }
                start = int(index + 1);
            }
        }
        return files;
    }
    
    

    public function isTracked(file:AbFile):Boolean {
        try {
            var nativeFile:JFile = AbFileNativeUtil.get_(file);
            var parentFile:JFile = nativeFile.getParentFile();
            var process:JProcess = new JProcessBuilder(this.trackedStrings.GIT_COMMAND, this.trackedStrings.CHANGE_DIRECTORY_OPTION, parentFile.getPath(), this.trackedStrings.LIST_FILES_COMMAND, this.trackedStrings.ERROR_UNMATCH_OPTION, this.trackedStrings.PATHSPEC_SEPARATOR, nativeFile.getName()).redirectErrorStream(true).start();
            process.getInputStream().readAllBytes();
            return process.waitFor() == 0;
        } catch (e:*) {
            return false;
        }
    }
    }
}

