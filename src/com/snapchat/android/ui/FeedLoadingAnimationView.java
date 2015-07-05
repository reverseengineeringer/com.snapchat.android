package com.snapchat.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.View;

public class FeedLoadingAnimationView
  extends View
{
  private Bitmap a;
  private Bitmap b;
  private final long c = SystemClock.elapsedRealtime();
  private final Rect d = new Rect();
  
  public FeedLoadingAnimationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  /* Error */
  public void onDraw(android.graphics.Canvas paramCanvas)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 35	com/snapchat/android/ui/FeedLoadingAnimationView:a	Landroid/graphics/Bitmap;
    //   6: ifnonnull +24 -> 30
    //   9: aload_0
    //   10: aload_0
    //   11: invokevirtual 39	com/snapchat/android/ui/FeedLoadingAnimationView:getContext	()Landroid/content/Context;
    //   14: ldc 40
    //   16: aload_1
    //   17: invokevirtual 46	android/graphics/Canvas:getWidth	()I
    //   20: aload_1
    //   21: invokevirtual 49	android/graphics/Canvas:getHeight	()I
    //   24: invokestatic 54	atf:a	(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    //   27: putfield 35	com/snapchat/android/ui/FeedLoadingAnimationView:a	Landroid/graphics/Bitmap;
    //   30: aload_0
    //   31: getfield 56	com/snapchat/android/ui/FeedLoadingAnimationView:b	Landroid/graphics/Bitmap;
    //   34: ifnonnull +24 -> 58
    //   37: aload_0
    //   38: aload_0
    //   39: invokevirtual 39	com/snapchat/android/ui/FeedLoadingAnimationView:getContext	()Landroid/content/Context;
    //   42: ldc 57
    //   44: aload_1
    //   45: invokevirtual 46	android/graphics/Canvas:getWidth	()I
    //   48: aload_1
    //   49: invokevirtual 49	android/graphics/Canvas:getHeight	()I
    //   52: invokestatic 54	atf:a	(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    //   55: putfield 56	com/snapchat/android/ui/FeedLoadingAnimationView:b	Landroid/graphics/Bitmap;
    //   58: aload_0
    //   59: invokevirtual 60	com/snapchat/android/ui/FeedLoadingAnimationView:invalidate	()V
    //   62: aload_0
    //   63: getfield 35	com/snapchat/android/ui/FeedLoadingAnimationView:a	Landroid/graphics/Bitmap;
    //   66: invokevirtual 63	android/graphics/Bitmap:getWidth	()I
    //   69: istore 8
    //   71: aload_0
    //   72: getfield 35	com/snapchat/android/ui/FeedLoadingAnimationView:a	Landroid/graphics/Bitmap;
    //   75: invokevirtual 64	android/graphics/Bitmap:getHeight	()I
    //   78: istore 9
    //   80: invokestatic 21	android/os/SystemClock:elapsedRealtime	()J
    //   83: aload_0
    //   84: getfield 23	com/snapchat/android/ui/FeedLoadingAnimationView:c	J
    //   87: lsub
    //   88: l2i
    //   89: istore 6
    //   91: iload 6
    //   93: i2d
    //   94: ldc2_w 65
    //   97: dmul
    //   98: ldc2_w 67
    //   101: ddiv
    //   102: invokestatic 74	java/lang/Math:sin	(D)D
    //   105: dstore_2
    //   106: iload 6
    //   108: i2d
    //   109: ldc2_w 65
    //   112: dmul
    //   113: ldc2_w 67
    //   116: ddiv
    //   117: invokestatic 77	java/lang/Math:cos	(D)D
    //   120: dstore 4
    //   122: dload_2
    //   123: dconst_0
    //   124: dcmpl
    //   125: ifle +85 -> 210
    //   128: aload_0
    //   129: getfield 35	com/snapchat/android/ui/FeedLoadingAnimationView:a	Landroid/graphics/Bitmap;
    //   132: astore 10
    //   134: dload 4
    //   136: dconst_0
    //   137: dcmpl
    //   138: ifle +81 -> 219
    //   141: iload 8
    //   143: i2d
    //   144: dstore 4
    //   146: dload_2
    //   147: invokestatic 80	java/lang/Math:abs	(D)D
    //   150: dload 4
    //   152: dmul
    //   153: d2i
    //   154: istore 7
    //   156: iload 9
    //   158: istore 6
    //   160: aload_0
    //   161: getfield 30	com/snapchat/android/ui/FeedLoadingAnimationView:d	Landroid/graphics/Rect;
    //   164: iload 8
    //   166: iload 7
    //   168: isub
    //   169: iconst_2
    //   170: idiv
    //   171: iload 9
    //   173: iload 6
    //   175: isub
    //   176: iconst_2
    //   177: idiv
    //   178: iload 7
    //   180: iload 8
    //   182: iadd
    //   183: iconst_2
    //   184: idiv
    //   185: iload 6
    //   187: iload 9
    //   189: iadd
    //   190: iconst_2
    //   191: idiv
    //   192: invokevirtual 84	android/graphics/Rect:set	(IIII)V
    //   195: aload_1
    //   196: aload 10
    //   198: aconst_null
    //   199: aload_0
    //   200: getfield 30	com/snapchat/android/ui/FeedLoadingAnimationView:d	Landroid/graphics/Rect;
    //   203: aconst_null
    //   204: invokevirtual 88	android/graphics/Canvas:drawBitmap	(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    //   207: aload_0
    //   208: monitorexit
    //   209: return
    //   210: aload_0
    //   211: getfield 56	com/snapchat/android/ui/FeedLoadingAnimationView:b	Landroid/graphics/Bitmap;
    //   214: astore 10
    //   216: goto -82 -> 134
    //   219: iload 9
    //   221: i2d
    //   222: dstore 4
    //   224: dload_2
    //   225: invokestatic 80	java/lang/Math:abs	(D)D
    //   228: dstore_2
    //   229: dload_2
    //   230: dload 4
    //   232: dmul
    //   233: d2i
    //   234: istore 6
    //   236: iload 8
    //   238: istore 7
    //   240: goto -80 -> 160
    //   243: astore_1
    //   244: aload_0
    //   245: monitorexit
    //   246: aload_1
    //   247: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	248	0	this	FeedLoadingAnimationView
    //   0	248	1	paramCanvas	android.graphics.Canvas
    //   105	125	2	d1	double
    //   120	111	4	d2	double
    //   89	146	6	i	int
    //   154	85	7	j	int
    //   69	168	8	k	int
    //   78	142	9	m	int
    //   132	83	10	localBitmap	Bitmap
    // Exception table:
    //   from	to	target	type
    //   2	30	243	finally
    //   30	58	243	finally
    //   58	122	243	finally
    //   128	134	243	finally
    //   146	156	243	finally
    //   160	207	243	finally
    //   210	216	243	finally
    //   224	229	243	finally
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.FeedLoadingAnimationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */