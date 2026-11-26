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
package org.allbinary.logic.io.file.filter {
    import java.io.JFileFilter;
    import org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor;
    import org.allbinary.util.BasicArrayList;
    import org.allbinary.util.BasicArrayListD;

    public class BasicFileFilterUtil {
    

    public function BasicFileFilterUtil() {
        super();
    }
    

    public static function getInstance1(extension:String):JFileFilter {
        var vector:BasicArrayList = new BasicArrayListD();
        vector.add(extension);
        var includeFileExtensionsBooleanFileVisitor:IncludeFileExtensionsBooleanFileVisitor = new IncludeFileExtensionsBooleanFileVisitor(vector);
        return (new VisitorFileFilter(includeFileExtensionsBooleanFileVisitor) as JFileFilter);
    }
    }
}

