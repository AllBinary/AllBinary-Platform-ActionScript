// Generated Code Do Not Modify
package org.allbinary.animation {
    import org.allbinary.math.AngleFactory;
    import org.allbinary.math.AngleInfo;
    import org.allbinary.util.CircularIndexUtil;

    public class NullRotationAnimation extends RotationAnimation {
    

    public static function createTotalAngle(angleInfo:AngleInfo, totalAngle:int, animationBehavior:AnimationBehavior):NullRotationAnimation {
        return new NullRotationAnimation(angleInfo, CircularIndexUtil.createInstance(int(totalAngle / angleInfo.getAngleIncrementInfo().getAngleIncrement())), animationBehavior);
    }
    

    public static function createQuarter(animationBehavior:AnimationBehavior):NullRotationAnimation {
        return new NullRotationAnimation(AngleInfo.getInstance1(AngleFactory.getInstance().QUARTER_TOTAL_ANGLE), CircularIndexUtil.createInstance(4), animationBehavior);
    }
    

    public function NullRotationAnimation(angleInfo:AngleInfo, circularIndexUtil:CircularIndexUtil, animationBehavior:AnimationBehavior) {
        super(angleInfo, circularIndexUtil, animationBehavior);
    }
    

    override public function getAnimationSize():int {
        return 0;
    }
    }
}

