
package ru.ogres;


class Easing {

    public static function Linear(t:Float, b:Float, c:Float, d:Float):Float {
        return c * t / d + b;
    }

    public static function ExpoEaseOut(t:Float, b:Float, c:Float, d:Float):Float {
        return ( t == d ) ? b + c : c * ( -Math.pow( 2, -10 * t / d ) + 1 ) + b;
    }


    public static function ExpoEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return ( t == 0 ) ? b : c * Math.pow( 2, 10 * ( t / d - 1 ) ) + b;
    }


    public static function ExpoEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t == 0 )
            return b;

        if ( t == d )
            return b + c;

        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * Math.pow( 2, 10 * ( t - 1 ) ) + b;

        return c / 2 * ( -Math.pow( 2, -10 * --t ) + 2 ) + b;
    }

    public static function ExpoEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return ExpoEaseOut( t * 2, b, c / 2, d );

        return ExpoEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function CircEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * Math.sqrt( 1 - ( t = t / d - 1 ) * t ) + b;
    }

    public static function CircEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return -c * ( Math.sqrt( 1 - ( t /= d ) * t ) - 1 ) + b;
    }

    public static function CircEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return -c / 2 * ( Math.sqrt( 1 - t * t ) - 1 ) + b;

        return c / 2 * ( Math.sqrt( 1 - ( t -= 2 ) * t ) + 1 ) + b;
    }

    public static function CircEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return CircEaseOut( t * 2, b, c / 2, d );

        return CircEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function QuadEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return -c * ( t /= d ) * ( t - 2 ) + b;
    }

    public static function QuadEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( t /= d ) * t + b;
    }

    public static function QuadEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * t * t + b;

        return -c / 2 * ( ( --t ) * ( t - 2 ) - 1 ) + b;
    }

    public static function QuadEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return QuadEaseOut( t * 2, b, c / 2, d );

        return QuadEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function SineEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * Math.sin( t / d * ( Math.PI / 2 ) ) + b;
    }

    public static function SineEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return -c * Math.cos( t / d * ( Math.PI / 2 ) ) + c + b;
    }

    public static function SineEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * ( Math.sin( Math.PI * t / 2 ) ) + b;

        return -c / 2 * ( Math.cos( Math.PI * --t / 2 ) - 2 ) + b;
    }

    public static function SineEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return SineEaseOut( t * 2, b, c / 2, d );

        return SineEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function CubicEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( ( t = t / d - 1 ) * t * t + 1 ) + b;
    }

    public static function CubicEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( t /= d ) * t * t + b;
    }

    public static function CubicEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * t * t * t + b;

        return c / 2 * ( ( t -= 2 ) * t * t + 2 ) + b;
    }

    
    public static function CubicEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return CubicEaseOut( t * 2, b, c / 2, d );

        return CubicEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function QuartEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return -c * ( ( t = t / d - 1 ) * t * t * t - 1 ) + b;
    }

    public static function QuartEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( t /= d ) * t * t * t + b;
    }

    public static function QuartEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * t * t * t * t + b;

        return -c / 2 * ( ( t -= 2 ) * t * t * t - 2 ) + b;
    }

    public static function QuartEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return QuartEaseOut( t * 2, b, c / 2, d );

        return QuartEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function QuintEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( ( t = t / d - 1 ) * t * t * t * t + 1 ) + b;
    }

    public static function QuintEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( t /= d ) * t * t * t * t + b;
    }

    public static function QuintEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * t * t * t * t * t + b;
        return c / 2 * ( ( t -= 2 ) * t * t * t * t + 2 ) + b;
    }

    public static function QuintEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return QuintEaseOut( t * 2, b, c / 2, d );
        return QuintEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    public static function ElasticEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d ) == 1 )
            return b + c;

        var p:Float = d * 0.3;
        var s:Float = (p / (2 * Math.PI)) * Math.asin(1);

        return ( c * Math.pow( 2, -10 * t ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) + c + b );
    }


    public static function ElasticEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d ) == 1 )
            return b + c;

        var p:Float = d * 0.3;
        var s:Float = p / 4;

        return -( c * Math.pow( 2, 10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) ) + b;
    }


    public static function ElasticEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d / 2 ) == 2 )
            return b + c;

        var p:Float = d * ( 0.3 * 1.5 );
        var s:Float = p / 4;

        if ( t < 1 )
            return -0.5 * ( c * Math.pow( 2, 10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) ) + b;
        return c * Math.pow( 2, -10 * ( t -= 1 ) ) * Math.sin( ( t * d - s ) * ( 2 * Math.PI ) / p ) * 0.5 + c + b;
    }


    public static function ElasticEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return ElasticEaseOut( t * 2, b, c / 2, d );
        return ElasticEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }


    public static function BounceEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( ( t /= d ) < ( 1 / 2.75 ) )
            return c * ( 7.5625 * t * t ) + b;
        else if ( t < ( 2 / 2.75 ) )
            return c * ( 7.5625 * ( t -= ( 1.5 / 2.75 ) ) * t + 0.75 ) + b;
        else if ( t < ( 2.5 / 2.75 ) )
            return c * ( 7.5625 * ( t -= ( 2.25 / 2.75 ) ) * t + 0.9375 ) + b;
        else
            return c * ( 7.5625 * ( t -= ( 2.625 / 2.75 ) ) * t + 0.984375 ) + b;
    }


    public static function BounceEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c - BounceEaseOut( d - t, 0, c, d ) + b;
    }

    
    public static function BounceEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return BounceEaseIn( t * 2, 0, c, d ) * 0.5 + b;
        else
            return BounceEaseOut( t * 2 - d, 0, c, d ) * 0.5 + c * 0.5 + b;
    }


    public static function BounceEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return BounceEaseOut( t * 2, b, c / 2, d );
        return BounceEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }

    
    public static function BackEaseOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( ( t = t / d - 1 ) * t * ( ( 1.70158 + 1 ) * t + 1.70158 ) + 1 ) + b;
    }

    
    public static function BackEaseIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        return c * ( t /= d ) * t * ( ( 1.70158 + 1 ) * t - 1.70158 ) + b;
    }

    public static function BackEaseInOut(t:Float, b:Float, c:Float, d:Float):Float
    {
        var s:Float = 1.70158;
        if ( ( t /= d / 2 ) < 1 )
            return c / 2 * ( t * t * ( ( ( s *= ( 1.525 ) ) + 1 ) * t - s ) ) + b;
        return c / 2 * ( ( t -= 2 ) * t * ( ( ( s *= ( 1.525 ) ) + 1 ) * t + s ) + 2 ) + b;
    }

    public static function BackEaseOutIn(t:Float, b:Float, c:Float, d:Float):Float
    {
        if ( t < d / 2 )
            return BackEaseOut( t * 2, b, c / 2, d );
        return BackEaseIn( ( t * 2 ) - d, b + c / 2, c / 2, d );
    }


    public static function FeedbackEaseOut(t:Float, b:Float, c:Float, d:Float, tl:Float, fs:Int)
    {
        if (t / d >= 1) {
            t = t - d;
            t /= (tl / 1.2);

            return b + c - (2 * Math.cos (t * 3) / (10 * t + 2)) * fs;
        }

        return (c - fs) * t / d + b;
    }


}