package com.addlive.view;

import android.graphics.SurfaceTexture;
import android.opengl.GLSurfaceView.Renderer;
import com.addlive.impl.Log;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

public class GLThread
  extends Thread
{
  private static final GLThreadManager sGLThreadManager = new GLThreadManager(null);
  private EglHelper mEglHelper;
  private ArrayList<Runnable> mEventQueue = new ArrayList();
  private boolean mExited;
  private boolean mHasSurface;
  private boolean mHaveEglContext;
  private boolean mHaveEglSurface;
  private int mHeight = 0;
  private boolean mPaused;
  private boolean mPreserveEGLContextOnPause = true;
  private boolean mRenderComplete;
  private GLSurfaceView.Renderer mRenderer;
  private boolean mRequestPaused;
  private boolean mRequestRender = true;
  private boolean mShouldExit;
  private boolean mShouldReleaseEglContext;
  private boolean mSizeChanged = false;
  private boolean mWaitingForSurface;
  private int mWidth = 0;
  private SurfaceTexture surface;
  private VideoViewType type;
  
  GLThread(GLSurfaceView.Renderer paramRenderer, VideoViewType paramVideoViewType)
  {
    mRenderer = paramRenderer;
    mPaused = false;
    type = paramVideoViewType;
  }
  
  private void checkRenderThreadState() {}
  
  /* Error */
  private void guardedRun()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 32	com/addlive/view/GLThread$EglHelper
    //   4: dup
    //   5: aload_0
    //   6: invokespecial 115	com/addlive/view/GLThread$EglHelper:<init>	(Lcom/addlive/view/GLThread;)V
    //   9: putfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   12: aload_0
    //   13: iconst_0
    //   14: putfield 119	com/addlive/view/GLThread:mHaveEglContext	Z
    //   17: aload_0
    //   18: iconst_0
    //   19: putfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   22: aconst_null
    //   23: astore 17
    //   25: aconst_null
    //   26: astore 16
    //   28: iconst_0
    //   29: istore 5
    //   31: iconst_0
    //   32: istore 8
    //   34: iconst_0
    //   35: istore_2
    //   36: iconst_0
    //   37: istore 7
    //   39: iconst_0
    //   40: istore 6
    //   42: iconst_0
    //   43: istore_3
    //   44: iconst_0
    //   45: istore 11
    //   47: iconst_0
    //   48: istore_1
    //   49: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   52: astore 18
    //   54: aload 18
    //   56: monitorenter
    //   57: iload_3
    //   58: istore 4
    //   60: iload 8
    //   62: istore_3
    //   63: aload_0
    //   64: getfield 123	com/addlive/view/GLThread:mShouldExit	Z
    //   67: ifeq +34 -> 101
    //   70: aload 18
    //   72: monitorexit
    //   73: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   76: astore 16
    //   78: aload 16
    //   80: monitorenter
    //   81: aload_0
    //   82: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   85: aload_0
    //   86: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   89: aload 16
    //   91: monitorexit
    //   92: return
    //   93: astore 17
    //   95: aload 16
    //   97: monitorexit
    //   98: aload 17
    //   100: athrow
    //   101: aload_0
    //   102: getfield 86	com/addlive/view/GLThread:mEventQueue	Ljava/util/ArrayList;
    //   105: invokevirtual 133	java/util/ArrayList:isEmpty	()Z
    //   108: ifne +95 -> 203
    //   111: aload_0
    //   112: getfield 86	com/addlive/view/GLThread:mEventQueue	Ljava/util/ArrayList;
    //   115: iconst_0
    //   116: invokevirtual 137	java/util/ArrayList:remove	(I)Ljava/lang/Object;
    //   119: checkcast 139	java/lang/Runnable
    //   122: astore 16
    //   124: iload 6
    //   126: istore 8
    //   128: iload 7
    //   130: istore 6
    //   132: iload_2
    //   133: istore 9
    //   135: iload_3
    //   136: istore 7
    //   138: iload 5
    //   140: istore_2
    //   141: iload 4
    //   143: istore_3
    //   144: iload 9
    //   146: istore 5
    //   148: iload 7
    //   150: istore 4
    //   152: iload 8
    //   154: istore 7
    //   156: aload 18
    //   158: monitorexit
    //   159: aload 16
    //   161: ifnull +535 -> 696
    //   164: aload 16
    //   166: invokeinterface 142 1 0
    //   171: iload 6
    //   173: istore 8
    //   175: iload 7
    //   177: istore 6
    //   179: aconst_null
    //   180: astore 16
    //   182: iload_2
    //   183: istore 7
    //   185: iload 5
    //   187: istore_2
    //   188: iload 7
    //   190: istore 5
    //   192: iload 8
    //   194: istore 7
    //   196: iload 4
    //   198: istore 8
    //   200: goto -151 -> 49
    //   203: aload_0
    //   204: getfield 100	com/addlive/view/GLThread:mPaused	Z
    //   207: aload_0
    //   208: getfield 144	com/addlive/view/GLThread:mRequestPaused	Z
    //   211: if_icmpeq +17 -> 228
    //   214: aload_0
    //   215: aload_0
    //   216: getfield 144	com/addlive/view/GLThread:mRequestPaused	Z
    //   219: putfield 100	com/addlive/view/GLThread:mPaused	Z
    //   222: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   225: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   228: iload 5
    //   230: istore 8
    //   232: aload_0
    //   233: getfield 151	com/addlive/view/GLThread:mShouldReleaseEglContext	Z
    //   236: ifeq +19 -> 255
    //   239: aload_0
    //   240: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   243: aload_0
    //   244: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   247: aload_0
    //   248: iconst_0
    //   249: putfield 151	com/addlive/view/GLThread:mShouldReleaseEglContext	Z
    //   252: iconst_1
    //   253: istore 8
    //   255: iload_3
    //   256: istore 9
    //   258: iload_3
    //   259: ifeq +14 -> 273
    //   262: aload_0
    //   263: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   266: aload_0
    //   267: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   270: iconst_0
    //   271: istore 9
    //   273: aload_0
    //   274: getfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   277: ifeq +50 -> 327
    //   280: aload_0
    //   281: getfield 100	com/addlive/view/GLThread:mPaused	Z
    //   284: ifeq +43 -> 327
    //   287: aload_0
    //   288: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   291: aload_0
    //   292: getfield 88	com/addlive/view/GLThread:mPreserveEGLContextOnPause	Z
    //   295: ifeq +12 -> 307
    //   298: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   301: invokevirtual 154	com/addlive/view/GLThread$GLThreadManager:shouldReleaseEGLContextWhenPausing	()Z
    //   304: ifeq +7 -> 311
    //   307: aload_0
    //   308: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   311: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   314: invokevirtual 157	com/addlive/view/GLThread$GLThreadManager:shouldTerminateEGLWhenPausing	()Z
    //   317: ifeq +10 -> 327
    //   320: aload_0
    //   321: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   324: invokevirtual 160	com/addlive/view/GLThread$EglHelper:finish	()V
    //   327: aload_0
    //   328: getfield 162	com/addlive/view/GLThread:mHasSurface	Z
    //   331: ifne +32 -> 363
    //   334: aload_0
    //   335: getfield 164	com/addlive/view/GLThread:mWaitingForSurface	Z
    //   338: ifne +25 -> 363
    //   341: aload_0
    //   342: getfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   345: ifeq +7 -> 352
    //   348: aload_0
    //   349: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   352: aload_0
    //   353: iconst_1
    //   354: putfield 164	com/addlive/view/GLThread:mWaitingForSurface	Z
    //   357: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   360: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   363: aload_0
    //   364: getfield 162	com/addlive/view/GLThread:mHasSurface	Z
    //   367: ifeq +21 -> 388
    //   370: aload_0
    //   371: getfield 164	com/addlive/view/GLThread:mWaitingForSurface	Z
    //   374: ifeq +14 -> 388
    //   377: aload_0
    //   378: iconst_0
    //   379: putfield 164	com/addlive/view/GLThread:mWaitingForSurface	Z
    //   382: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   385: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   388: iload 11
    //   390: ifeq +14 -> 404
    //   393: aload_0
    //   394: iconst_1
    //   395: putfield 166	com/addlive/view/GLThread:mRenderComplete	Z
    //   398: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   401: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   404: iload 8
    //   406: istore 10
    //   408: iload 7
    //   410: istore 14
    //   412: iload 6
    //   414: istore 12
    //   416: iload 4
    //   418: istore 13
    //   420: aload_0
    //   421: invokespecial 169	com/addlive/view/GLThread:readyToDraw	()Z
    //   424: ifeq +244 -> 668
    //   427: iload 8
    //   429: istore 5
    //   431: iload 4
    //   433: istore_3
    //   434: aload_0
    //   435: getfield 119	com/addlive/view/GLThread:mHaveEglContext	Z
    //   438: ifne +14 -> 452
    //   441: iload 8
    //   443: ifeq +133 -> 576
    //   446: iconst_0
    //   447: istore 5
    //   449: iload 4
    //   451: istore_3
    //   452: iload 7
    //   454: istore 8
    //   456: iload 6
    //   458: istore 4
    //   460: aload_0
    //   461: getfield 119	com/addlive/view/GLThread:mHaveEglContext	Z
    //   464: ifeq +29 -> 493
    //   467: iload 7
    //   469: istore 8
    //   471: iload 6
    //   473: istore 4
    //   475: aload_0
    //   476: getfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   479: ifne +14 -> 493
    //   482: aload_0
    //   483: iconst_1
    //   484: putfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   487: iconst_1
    //   488: istore 4
    //   490: iconst_1
    //   491: istore 8
    //   493: iload 5
    //   495: istore 10
    //   497: iload 8
    //   499: istore 14
    //   501: iload 4
    //   503: istore 12
    //   505: iload_3
    //   506: istore 13
    //   508: aload_0
    //   509: getfield 121	com/addlive/view/GLThread:mHaveEglSurface	Z
    //   512: ifeq +156 -> 668
    //   515: aload_0
    //   516: getfield 90	com/addlive/view/GLThread:mSizeChanged	Z
    //   519: ifeq +21 -> 540
    //   522: iconst_1
    //   523: istore 8
    //   525: aload_0
    //   526: getfield 92	com/addlive/view/GLThread:mWidth	I
    //   529: istore_2
    //   530: aload_0
    //   531: getfield 94	com/addlive/view/GLThread:mHeight	I
    //   534: istore_1
    //   535: aload_0
    //   536: iconst_0
    //   537: putfield 90	com/addlive/view/GLThread:mSizeChanged	Z
    //   540: aload_0
    //   541: iconst_0
    //   542: putfield 96	com/addlive/view/GLThread:mRequestRender	Z
    //   545: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   548: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   551: iload 8
    //   553: istore 6
    //   555: iload 5
    //   557: istore 8
    //   559: iload 4
    //   561: istore 7
    //   563: iload 9
    //   565: istore 4
    //   567: iload_2
    //   568: istore 5
    //   570: iload 8
    //   572: istore_2
    //   573: goto -417 -> 156
    //   576: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   579: aload_0
    //   580: invokevirtual 173	com/addlive/view/GLThread$GLThreadManager:tryAcquireEglContextLocked	(Lcom/addlive/view/GLThread;)Z
    //   583: istore 15
    //   585: iload 8
    //   587: istore 5
    //   589: iload 4
    //   591: istore_3
    //   592: iload 15
    //   594: ifeq -142 -> 452
    //   597: aload_0
    //   598: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   601: invokevirtual 176	com/addlive/view/GLThread$EglHelper:start	()V
    //   604: aload_0
    //   605: iconst_1
    //   606: putfield 119	com/addlive/view/GLThread:mHaveEglContext	Z
    //   609: iconst_1
    //   610: istore_3
    //   611: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   614: invokevirtual 149	java/lang/Object:notifyAll	()V
    //   617: iload 8
    //   619: istore 5
    //   621: goto -169 -> 452
    //   624: astore 16
    //   626: aload 18
    //   628: monitorexit
    //   629: aload 16
    //   631: athrow
    //   632: astore 17
    //   634: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   637: astore 16
    //   639: aload 16
    //   641: monitorenter
    //   642: aload_0
    //   643: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   646: aload_0
    //   647: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   650: aload 16
    //   652: monitorexit
    //   653: aload 17
    //   655: athrow
    //   656: astore 16
    //   658: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   661: aload_0
    //   662: invokevirtual 179	com/addlive/view/GLThread$GLThreadManager:releaseEglContextLocked	(Lcom/addlive/view/GLThread;)V
    //   665: aload 16
    //   667: athrow
    //   668: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   671: invokevirtual 182	java/lang/Object:wait	()V
    //   674: iload 10
    //   676: istore 5
    //   678: iload 14
    //   680: istore 7
    //   682: iload 9
    //   684: istore_3
    //   685: iload 12
    //   687: istore 6
    //   689: iload 13
    //   691: istore 4
    //   693: goto -630 -> 63
    //   696: iload 7
    //   698: ifeq +197 -> 895
    //   701: aload_0
    //   702: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   705: aload_0
    //   706: getfield 184	com/addlive/view/GLThread:surface	Landroid/graphics/SurfaceTexture;
    //   709: invokevirtual 188	com/addlive/view/GLThread$EglHelper:createSurface	(Landroid/graphics/SurfaceTexture;)Ljavax/microedition/khronos/opengles/GL;
    //   712: checkcast 190	javax/microedition/khronos/opengles/GL10
    //   715: astore 17
    //   717: aload 17
    //   719: ifnonnull +39 -> 758
    //   722: ldc -64
    //   724: ldc -62
    //   726: invokestatic 200	com/addlive/impl/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   729: pop
    //   730: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   733: astore 16
    //   735: aload 16
    //   737: monitorenter
    //   738: aload_0
    //   739: invokespecial 126	com/addlive/view/GLThread:stopEglSurfaceLocked	()V
    //   742: aload_0
    //   743: invokespecial 129	com/addlive/view/GLThread:stopEglContextLocked	()V
    //   746: aload 16
    //   748: monitorexit
    //   749: return
    //   750: astore 17
    //   752: aload 16
    //   754: monitorexit
    //   755: aload 17
    //   757: athrow
    //   758: getstatic 77	com/addlive/view/GLThread:sGLThreadManager	Lcom/addlive/view/GLThread$GLThreadManager;
    //   761: aload 17
    //   763: invokevirtual 204	com/addlive/view/GLThread$GLThreadManager:checkGLDriver	(Ljavax/microedition/khronos/opengles/GL10;)V
    //   766: iconst_0
    //   767: istore 7
    //   769: iload_3
    //   770: istore 9
    //   772: iload_3
    //   773: ifeq +24 -> 797
    //   776: aload_0
    //   777: getfield 98	com/addlive/view/GLThread:mRenderer	Landroid/opengl/GLSurfaceView$Renderer;
    //   780: aload 17
    //   782: aload_0
    //   783: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   786: getfield 208	com/addlive/view/GLThread$EglHelper:mEglConfig	Ljavax/microedition/khronos/egl/EGLConfig;
    //   789: invokeinterface 214 3 0
    //   794: iconst_0
    //   795: istore 9
    //   797: iload 6
    //   799: istore 8
    //   801: iload 6
    //   803: ifeq +27 -> 830
    //   806: aload_0
    //   807: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   810: invokevirtual 217	com/addlive/view/GLThread$EglHelper:purgeBuffers	()V
    //   813: aload_0
    //   814: getfield 98	com/addlive/view/GLThread:mRenderer	Landroid/opengl/GLSurfaceView$Renderer;
    //   817: aload 17
    //   819: iload 5
    //   821: iload_1
    //   822: invokeinterface 221 4 0
    //   827: iconst_0
    //   828: istore 8
    //   830: aload_0
    //   831: getfield 98	com/addlive/view/GLThread:mRenderer	Landroid/opengl/GLSurfaceView$Renderer;
    //   834: aload 17
    //   836: invokeinterface 224 2 0
    //   841: aload_0
    //   842: getfield 117	com/addlive/view/GLThread:mEglHelper	Lcom/addlive/view/GLThread$EglHelper;
    //   845: invokevirtual 227	com/addlive/view/GLThread$EglHelper:swap	()Z
    //   848: istore 15
    //   850: iload 15
    //   852: ifne +46 -> 898
    //   855: iconst_1
    //   856: istore_3
    //   857: iload 7
    //   859: istore 6
    //   861: iconst_1
    //   862: istore 11
    //   864: iload_2
    //   865: istore 4
    //   867: iload 5
    //   869: istore_2
    //   870: iload 4
    //   872: istore 5
    //   874: iload 8
    //   876: istore 7
    //   878: iload_3
    //   879: istore 8
    //   881: iload 9
    //   883: istore_3
    //   884: goto -835 -> 49
    //   887: astore 17
    //   889: aload 16
    //   891: monitorexit
    //   892: aload 17
    //   894: athrow
    //   895: goto -126 -> 769
    //   898: iload 4
    //   900: istore_3
    //   901: goto -44 -> 857
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	904	0	this	GLThread
    //   48	774	1	i	int
    //   35	835	2	j	int
    //   43	858	3	k	int
    //   58	841	4	m	int
    //   29	844	5	n	int
    //   40	820	6	i1	int
    //   37	840	7	i2	int
    //   32	848	8	i3	int
    //   133	749	9	i4	int
    //   406	269	10	i5	int
    //   45	818	11	i6	int
    //   414	272	12	i7	int
    //   418	272	13	i8	int
    //   410	269	14	i9	int
    //   583	268	15	bool	boolean
    //   26	155	16	localObject1	Object
    //   624	6	16	localObject2	Object
    //   656	10	16	localRuntimeException	RuntimeException
    //   23	1	17	localObject3	Object
    //   93	6	17	localObject4	Object
    //   632	22	17	localObject5	Object
    //   715	3	17	localGL101	GL10
    //   750	85	17	localGL102	GL10
    //   887	6	17	localObject6	Object
    //   52	575	18	localGLThreadManager3	GLThreadManager
    // Exception table:
    //   from	to	target	type
    //   81	92	93	finally
    //   95	98	93	finally
    //   63	73	624	finally
    //   101	124	624	finally
    //   156	159	624	finally
    //   203	228	624	finally
    //   232	252	624	finally
    //   262	270	624	finally
    //   273	307	624	finally
    //   307	311	624	finally
    //   311	327	624	finally
    //   327	352	624	finally
    //   352	363	624	finally
    //   363	388	624	finally
    //   393	404	624	finally
    //   420	427	624	finally
    //   434	441	624	finally
    //   460	467	624	finally
    //   475	487	624	finally
    //   508	515	624	finally
    //   515	522	624	finally
    //   525	540	624	finally
    //   540	551	624	finally
    //   576	585	624	finally
    //   597	604	624	finally
    //   604	609	624	finally
    //   611	617	624	finally
    //   626	629	624	finally
    //   658	668	624	finally
    //   668	674	624	finally
    //   49	57	632	finally
    //   164	171	632	finally
    //   629	632	632	finally
    //   701	717	632	finally
    //   722	730	632	finally
    //   758	766	632	finally
    //   776	794	632	finally
    //   806	827	632	finally
    //   830	850	632	finally
    //   597	604	656	java/lang/RuntimeException
    //   738	749	750	finally
    //   752	755	750	finally
    //   642	653	887	finally
    //   889	892	887	finally
  }
  
  private boolean readyToDraw()
  {
    return (!mPaused) && (mHasSurface) && (mWidth > 0) && (mHeight > 0) && (mRequestRender);
  }
  
  private void stopEglContextLocked()
  {
    if (mHaveEglContext)
    {
      mEglHelper.finish();
      mHaveEglContext = false;
      sGLThreadManager.releaseEglContextLocked(this);
    }
  }
  
  private void stopEglSurfaceLocked()
  {
    if (mHaveEglSurface)
    {
      mHaveEglSurface = false;
      mEglHelper.destroySurface();
    }
  }
  
  private void waitForRenderComplete()
  {
    while ((!mExited) && (!mPaused) && (!mRenderComplete) && (ableToDraw())) {
      try
      {
        sGLThreadManager.wait();
      }
      catch (InterruptedException localInterruptedException)
      {
        Thread.currentThread().interrupt();
      }
    }
  }
  
  public boolean ableToDraw()
  {
    return (mHaveEglContext) && (mHaveEglSurface) && (readyToDraw());
  }
  
  public void onPause()
  {
    synchronized (sGLThreadManager)
    {
      mRequestPaused = true;
      sGLThreadManager.notifyAll();
      for (;;)
      {
        if (!mExited)
        {
          boolean bool = mPaused;
          if (!bool) {
            try
            {
              sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
          }
        }
      }
    }
  }
  
  public void onResume()
  {
    synchronized (sGLThreadManager)
    {
      mRequestPaused = false;
      mRequestRender = true;
      mRenderComplete = false;
      sGLThreadManager.notifyAll();
      for (;;)
      {
        if ((!mExited) && (mPaused))
        {
          boolean bool = mRenderComplete;
          if (!bool) {
            try
            {
              sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
          }
        }
      }
    }
  }
  
  public void onWindowResize(int paramInt1, int paramInt2)
  {
    synchronized (sGLThreadManager)
    {
      mWidth = paramInt1;
      mHeight = paramInt2;
      mSizeChanged = true;
      mRequestRender = true;
      mRenderComplete = false;
      sGLThreadManager.notifyAll();
      waitForRenderComplete();
      return;
    }
  }
  
  public void queueEvent(Runnable paramRunnable)
  {
    if (paramRunnable == null) {
      throw new IllegalArgumentException("r must not be null");
    }
    synchronized (sGLThreadManager)
    {
      mEventQueue.add(paramRunnable);
      sGLThreadManager.notifyAll();
      return;
    }
  }
  
  public void requestExitAndWait()
  {
    synchronized (sGLThreadManager)
    {
      mShouldExit = true;
      sGLThreadManager.notifyAll();
      for (;;)
      {
        boolean bool = mExited;
        if (!bool) {
          try
          {
            sGLThreadManager.wait();
          }
          catch (InterruptedException localInterruptedException)
          {
            Thread.currentThread().interrupt();
          }
        }
      }
    }
  }
  
  public void requestReleaseEglContextLocked()
  {
    mShouldReleaseEglContext = true;
    sGLThreadManager.notifyAll();
  }
  
  public void requestRender()
  {
    synchronized (sGLThreadManager)
    {
      mRequestRender = true;
      mRenderComplete = false;
      sGLThreadManager.notifyAll();
      return;
    }
  }
  
  public void run()
  {
    setName("GLThread " + getId());
    try
    {
      guardedRun();
      return;
    }
    catch (Exception localException)
    {
      Log.e("AddLive_SDK", "Got an error during rendering loop", localException);
      return;
    }
    finally
    {
      sGLThreadManager.threadExiting(this);
    }
  }
  
  public void setSurface(SurfaceTexture paramSurfaceTexture)
  {
    surface = paramSurfaceTexture;
  }
  
  public void surfaceCreated()
  {
    Log.w("AddLive_SDK", "Processing surface created");
    synchronized (sGLThreadManager)
    {
      mHasSurface = true;
      sGLThreadManager.notifyAll();
      for (;;)
      {
        if (mWaitingForSurface)
        {
          boolean bool = mExited;
          if (!bool) {
            try
            {
              sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
          }
        }
      }
    }
    Log.w("AddLive_SDK", "surface created processed");
  }
  
  public void surfaceDestroyed()
  {
    synchronized (sGLThreadManager)
    {
      mHasSurface = false;
      sGLThreadManager.notifyAll();
      for (;;)
      {
        if (!mWaitingForSurface)
        {
          boolean bool = mExited;
          if (!bool) {
            try
            {
              sGLThreadManager.wait();
            }
            catch (InterruptedException localInterruptedException)
            {
              Thread.currentThread().interrupt();
            }
          }
        }
      }
    }
  }
  
  abstract class BaseConfigChooser
    implements GLThread.EGLConfigChooser
  {
    protected int[] mConfigSpec = filterConfigSpec(paramArrayOfInt);
    
    public BaseConfigChooser(int[] paramArrayOfInt) {}
    
    private int[] filterConfigSpec(int[] paramArrayOfInt)
    {
      int i = paramArrayOfInt.length;
      int[] arrayOfInt = new int[i + 2];
      System.arraycopy(paramArrayOfInt, 0, arrayOfInt, 0, i - 1);
      arrayOfInt[(i - 1)] = 12352;
      arrayOfInt[i] = 4;
      arrayOfInt[(i + 1)] = 12344;
      return arrayOfInt;
    }
    
    public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay)
    {
      int[] arrayOfInt = new int[1];
      if (!paramEGL10.eglChooseConfig(paramEGLDisplay, mConfigSpec, null, 0, arrayOfInt)) {
        throw new IllegalArgumentException("eglChooseConfig failed");
      }
      int i = arrayOfInt[0];
      if (i <= 0) {
        throw new IllegalArgumentException("No configs match configSpec");
      }
      EGLConfig[] arrayOfEGLConfig = new EGLConfig[i];
      if (!paramEGL10.eglChooseConfig(paramEGLDisplay, mConfigSpec, arrayOfEGLConfig, i, arrayOfInt)) {
        throw new IllegalArgumentException("eglChooseConfig#2 failed");
      }
      paramEGL10 = chooseConfig(paramEGL10, paramEGLDisplay, arrayOfEGLConfig);
      if (paramEGL10 == null) {
        throw new IllegalArgumentException("No config chosen");
      }
      return paramEGL10;
    }
    
    abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig);
  }
  
  class CircleEGLConfigChooser
    extends GLThread.ComponentSizeChooser
  {
    public CircleEGLConfigChooser(boolean paramBoolean) {}
  }
  
  class ComponentSizeChooser
    extends GLThread.BaseConfigChooser
  {
    protected int mAlphaSize;
    protected int mBlueSize;
    protected int mDepthSize;
    protected int mGreenSize;
    protected int mRedSize;
    protected int mStencilSize;
    private int[] mValue = new int[1];
    
    public ComponentSizeChooser(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
    {
      super(new int[] { 12324, paramInt1, 12323, paramInt2, 12322, paramInt3, 12321, paramInt4, 12325, paramInt5, 12326, paramInt6, 12344 });
      mRedSize = paramInt1;
      mGreenSize = paramInt2;
      mBlueSize = paramInt3;
      mAlphaSize = paramInt4;
      mDepthSize = paramInt5;
      mStencilSize = paramInt6;
    }
    
    private int findConfigAttrib(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, int paramInt1, int paramInt2)
    {
      if (paramEGL10.eglGetConfigAttrib(paramEGLDisplay, paramEGLConfig, paramInt1, mValue)) {
        paramInt2 = mValue[0];
      }
      return paramInt2;
    }
    
    public EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig[] paramArrayOfEGLConfig)
    {
      int j = paramArrayOfEGLConfig.length;
      int i = 0;
      while (i < j)
      {
        EGLConfig localEGLConfig = paramArrayOfEGLConfig[i];
        int k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12325, 0);
        int m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12326, 0);
        if ((k >= mDepthSize) && (m >= mStencilSize))
        {
          k = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12324, 0);
          m = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12323, 0);
          int n = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12322, 0);
          int i1 = findConfigAttrib(paramEGL10, paramEGLDisplay, localEGLConfig, 12321, 0);
          if ((k == mRedSize) && (m == mGreenSize) && (n == mBlueSize) && (i1 == mAlphaSize)) {
            return localEGLConfig;
          }
        }
        i += 1;
      }
      return null;
    }
  }
  
  class DefaultContextFactory
    implements GLThread.EGLContextFactory
  {
    private int EGL_CONTEXT_CLIENT_VERSION = 12440;
    
    private DefaultContextFactory() {}
    
    public EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig)
    {
      int i = EGL_CONTEXT_CLIENT_VERSION;
      return paramEGL10.eglCreateContext(paramEGLDisplay, paramEGLConfig, EGL10.EGL_NO_CONTEXT, new int[] { i, 2, 12344 });
    }
    
    public void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext)
    {
      if (!paramEGL10.eglDestroyContext(paramEGLDisplay, paramEGLContext))
      {
        Log.e("DefaultContextFactory", "display:" + paramEGLDisplay + " context: " + paramEGLContext);
        throw new RuntimeException("eglDestroyContext failed: ");
      }
    }
  }
  
  static class DefaultWindowSurfaceFactory
    implements GLThread.EGLWindowSurfaceFactory
  {
    public EGLSurface createWindowSurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject)
    {
      try
      {
        paramEGL10 = paramEGL10.eglCreateWindowSurface(paramEGLDisplay, paramEGLConfig, paramObject, null);
        return paramEGL10;
      }
      catch (IllegalArgumentException paramEGL10)
      {
        Log.e("AddLive_SDK", "eglCreateWindowSurface", paramEGL10);
      }
      return null;
    }
    
    public void destroySurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface)
    {
      paramEGL10.eglDestroySurface(paramEGLDisplay, paramEGLSurface);
    }
  }
  
  public static abstract interface EGLConfigChooser
  {
    public abstract EGLConfig chooseConfig(EGL10 paramEGL10, EGLDisplay paramEGLDisplay);
  }
  
  public static abstract interface EGLContextFactory
  {
    public abstract EGLContext createContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig);
    
    public abstract void destroyContext(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLContext paramEGLContext);
  }
  
  public static abstract interface EGLWindowSurfaceFactory
  {
    public abstract EGLSurface createWindowSurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLConfig paramEGLConfig, Object paramObject);
    
    public abstract void destroySurface(EGL10 paramEGL10, EGLDisplay paramEGLDisplay, EGLSurface paramEGLSurface);
  }
  
  class EglHelper
  {
    GLThread.EGLConfigChooser mEGLConfigChooser;
    GLThread.EGLContextFactory mEGLContextFactory;
    GLThread.EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    EGL10 mEgl;
    EGLConfig mEglConfig;
    EGLContext mEglContext;
    EGLDisplay mEglDisplay;
    EGLSurface mEglSurface;
    
    public EglHelper()
    {
      if (type == VideoViewType.CIRCLE) {}
      for (mEGLConfigChooser = new GLThread.CircleEGLConfigChooser(GLThread.this, true);; mEGLConfigChooser = new GLThread.SimpleEGLConfigChooser(GLThread.this, true))
      {
        mEGLContextFactory = new GLThread.DefaultContextFactory(GLThread.this, null);
        mEGLWindowSurfaceFactory = new GLThread.DefaultWindowSurfaceFactory(null);
        return;
      }
    }
    
    private void throwEglException(String paramString)
    {
      throwEglException(paramString, mEgl.eglGetError());
    }
    
    private void throwEglException(String paramString, int paramInt)
    {
      throw new RuntimeException(paramString + " failed: " + paramInt);
    }
    
    public GL createSurface(SurfaceTexture paramSurfaceTexture)
    {
      if (mEgl == null) {
        throw new RuntimeException("egl not initialized");
      }
      if (mEglDisplay == null) {
        throw new RuntimeException("eglDisplay not initialized");
      }
      if (mEglConfig == null) {
        throw new RuntimeException("mEglConfig not initialized");
      }
      if ((mEglSurface != null) && (mEglSurface != EGL10.EGL_NO_SURFACE))
      {
        mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
      }
      mEglSurface = mEGLWindowSurfaceFactory.createWindowSurface(mEgl, mEglDisplay, mEglConfig, paramSurfaceTexture);
      if ((mEglSurface == null) || (mEglSurface == EGL10.EGL_NO_SURFACE))
      {
        if (mEgl.eglGetError() == 12299) {
          Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
        }
        return null;
      }
      if (!mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext)) {
        throwEglException("eglMakeCurrent");
      }
      return mEglContext.getGL();
    }
    
    public void destroySurface()
    {
      if ((mEglSurface != null) && (mEglSurface != EGL10.EGL_NO_SURFACE))
      {
        mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
        mEGLWindowSurfaceFactory.destroySurface(mEgl, mEglDisplay, mEglSurface);
        mEglSurface = null;
      }
    }
    
    public void finish()
    {
      if (mEglContext != null)
      {
        mEGLContextFactory.destroyContext(mEgl, mEglDisplay, mEglContext);
        mEglContext = null;
      }
      if (mEglDisplay != null)
      {
        mEgl.eglTerminate(mEglDisplay);
        mEglDisplay = null;
      }
    }
    
    public void purgeBuffers()
    {
      mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
      mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext);
    }
    
    public void start()
    {
      mEgl = ((EGL10)EGLContext.getEGL());
      mEglDisplay = mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
      if (mEglDisplay == EGL10.EGL_NO_DISPLAY) {
        throw new RuntimeException("eglGetDisplay failed");
      }
      int[] arrayOfInt = new int[2];
      if (!mEgl.eglInitialize(mEglDisplay, arrayOfInt)) {
        throw new RuntimeException("eglInitialize failed");
      }
      mEglConfig = mEGLConfigChooser.chooseConfig(mEgl, mEglDisplay);
      mEglContext = mEGLContextFactory.createContext(mEgl, mEglDisplay, mEglConfig);
      if ((mEglContext == null) || (mEglContext == EGL10.EGL_NO_CONTEXT))
      {
        mEglContext = null;
        throwEglException("createContext");
      }
      mEglSurface = null;
    }
    
    public boolean swap()
    {
      if (!mEgl.eglSwapBuffers(mEglDisplay, mEglSurface))
      {
        int i = mEgl.eglGetError();
        switch (i)
        {
        case 12300: 
        case 12301: 
        default: 
          throwEglException("eglSwapBuffers", i);
        }
      }
      for (;;)
      {
        return true;
        return false;
        Log.e("EglHelper", "eglSwapBuffers returned EGL_BAD_NATIVE_WINDOW. tid=" + Thread.currentThread().getId());
      }
    }
  }
  
  static class GLThreadManager
  {
    private static String TAG = "GLThreadManager";
    private static final String kADRENO = "Adreno";
    private static final int kGLES_20 = 131072;
    private static final String kMSM7K_RENDERER_PREFIX = "Q3Dimension MSM7500 ";
    private GLThread mEglOwner;
    private boolean mGLESDriverCheckComplete;
    private int mGLESVersion;
    private boolean mGLESVersionCheckComplete;
    private boolean mLimitedGLESContexts;
    private boolean mMultipleGLESContextsAllowed;
    
    private void checkGLESVersion()
    {
      if (!mGLESVersionCheckComplete)
      {
        mMultipleGLESContextsAllowed = true;
        mGLESVersionCheckComplete = true;
      }
    }
    
    public void checkGLDriver(GL10 paramGL10)
    {
      boolean bool2 = false;
      label98:
      for (;;)
      {
        try
        {
          if (!mGLESDriverCheckComplete)
          {
            checkGLESVersion();
            paramGL10 = paramGL10.glGetString(7937);
            if (mGLESVersion < 131072)
            {
              if (!paramGL10.startsWith("Q3Dimension MSM7500 "))
              {
                bool1 = true;
                mMultipleGLESContextsAllowed = bool1;
                notifyAll();
              }
            }
            else
            {
              if (!mMultipleGLESContextsAllowed) {
                break label98;
              }
              bool1 = bool2;
              if (paramGL10.startsWith("Adreno")) {
                break label98;
              }
              mLimitedGLESContexts = bool1;
              mGLESDriverCheckComplete = true;
            }
          }
          else
          {
            return;
          }
          boolean bool1 = false;
          continue;
          bool1 = true;
        }
        finally {}
      }
    }
    
    public void releaseEglContextLocked(GLThread paramGLThread)
    {
      if (mEglOwner == paramGLThread) {
        mEglOwner = null;
      }
      notifyAll();
    }
    
    public boolean shouldReleaseEGLContextWhenPausing()
    {
      try
      {
        boolean bool = mLimitedGLESContexts;
        return bool;
      }
      finally
      {
        localObject = finally;
        throw ((Throwable)localObject);
      }
    }
    
    /* Error */
    public boolean shouldTerminateEGLWhenPausing()
    {
      // Byte code:
      //   0: aload_0
      //   1: monitorenter
      //   2: aload_0
      //   3: invokespecial 48	com/addlive/view/GLThread$GLThreadManager:checkGLESVersion	()V
      //   6: aload_0
      //   7: getfield 42	com/addlive/view/GLThread$GLThreadManager:mMultipleGLESContextsAllowed	Z
      //   10: istore_1
      //   11: iload_1
      //   12: ifne +9 -> 21
      //   15: iconst_1
      //   16: istore_1
      //   17: aload_0
      //   18: monitorexit
      //   19: iload_1
      //   20: ireturn
      //   21: iconst_0
      //   22: istore_1
      //   23: goto -6 -> 17
      //   26: astore_2
      //   27: aload_0
      //   28: monitorexit
      //   29: aload_2
      //   30: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	31	0	this	GLThreadManager
      //   10	13	1	bool	boolean
      //   26	4	2	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   2	11	26	finally
    }
    
    public void threadExiting(GLThread paramGLThread)
    {
      try
      {
        GLThread.access$302(paramGLThread, true);
        if (mEglOwner == paramGLThread) {
          mEglOwner = null;
        }
        notifyAll();
        return;
      }
      finally {}
    }
    
    public boolean tryAcquireEglContextLocked(GLThread paramGLThread)
    {
      if ((mEglOwner == paramGLThread) || (mEglOwner == null))
      {
        mEglOwner = paramGLThread;
        notifyAll();
      }
      do
      {
        return true;
        checkGLESVersion();
      } while (mMultipleGLESContextsAllowed);
      if (mEglOwner != null) {
        mEglOwner.requestReleaseEglContextLocked();
      }
      return false;
    }
  }
  
  class SimpleEGLConfigChooser
    extends GLThread.ComponentSizeChooser
  {
    public SimpleEGLConfigChooser(boolean paramBoolean) {}
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.GLThread
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */