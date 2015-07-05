import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import java.util.concurrent.atomic.AtomicInteger;

public final class aqs$a
  implements View.OnClickListener
{
  ImageView a;
  ObjectAnimator b;
  ImageView c;
  ObjectAnimator d;
  ObjectAnimator e;
  ImageView f;
  ImageView g;
  ObjectAnimator h;
  ObjectAnimator i;
  ImageView j;
  ObjectAnimator k;
  ObjectAnimator l;
  final AnimatorSet m = new AnimatorSet();
  final AnimatorSet n = new AnimatorSet();
  final AnimatorSet o = new AnimatorSet();
  final AnimatorSet p = new AnimatorSet();
  final AnimatorSet q = new AnimatorSet();
  final AnimatorSet r = new AnimatorSet();
  final AnimatorSet s = new AnimatorSet();
  final AtomicInteger t = new AtomicInteger(0);
  private Boolean v = Boolean.valueOf(false);
  private Boolean w = Boolean.valueOf(false);
  private Boolean x = Boolean.valueOf(false);
  
  public aqs$a(aqs paramaqs) {}
  
  /* Error */
  public final void onClick(android.view.View paramView)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 50	aqs$a:u	Laqs;
    //   6: getfield 97	aqs:n	Laqq;
    //   9: getfield 102	aqq:c	Laqr;
    //   12: astore_1
    //   13: aload_0
    //   14: getfield 50	aqs$a:u	Laqs;
    //   17: getfield 105	aqs:m	I
    //   20: istore_2
    //   21: aload_1
    //   22: getfield 110	aqr:b	[Z
    //   25: iload_2
    //   26: baload
    //   27: istore_3
    //   28: iload_3
    //   29: ifeq +6 -> 35
    //   32: aload_0
    //   33: monitorexit
    //   34: return
    //   35: aload_0
    //   36: getfield 50	aqs$a:u	Laqs;
    //   39: getfield 112	aqs:l	Landroid/widget/ImageView;
    //   42: ifnull -10 -> 32
    //   45: aload_0
    //   46: getfield 50	aqs$a:u	Laqs;
    //   49: getfield 112	aqs:l	Landroid/widget/ImageView;
    //   52: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   55: ifnull -23 -> 32
    //   58: aload_0
    //   59: getfield 50	aqs$a:u	Laqs;
    //   62: iconst_0
    //   63: invokevirtual 121	aqs:a	(Z)V
    //   66: aload_0
    //   67: getfield 89	aqs$a:t	Ljava/util/concurrent/atomic/AtomicInteger;
    //   70: iconst_0
    //   71: invokevirtual 124	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   74: aload_0
    //   75: iconst_0
    //   76: invokestatic 59	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   79: putfield 65	aqs$a:x	Ljava/lang/Boolean;
    //   82: aload_0
    //   83: aload_0
    //   84: getfield 50	aqs$a:u	Laqs;
    //   87: getfield 127	aqs:a	Landroid/view/View;
    //   90: ldc -128
    //   92: invokevirtual 134	android/view/View:findViewById	(I)Landroid/view/View;
    //   95: checkcast 114	android/widget/ImageView
    //   98: putfield 136	aqs$a:a	Landroid/widget/ImageView;
    //   101: aload_0
    //   102: getfield 136	aqs$a:a	Landroid/widget/ImageView;
    //   105: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   108: checkcast 138	android/graphics/drawable/ClipDrawable
    //   111: astore_1
    //   112: aload_1
    //   113: sipush 10000
    //   116: invokevirtual 142	android/graphics/drawable/ClipDrawable:setLevel	(I)Z
    //   119: pop
    //   120: aload_0
    //   121: getfield 136	aqs$a:a	Landroid/widget/ImageView;
    //   124: iconst_0
    //   125: invokevirtual 145	android/widget/ImageView:setVisibility	(I)V
    //   128: aload_0
    //   129: aload_1
    //   130: ldc -109
    //   132: iconst_2
    //   133: newarray <illegal type>
    //   135: dup
    //   136: iconst_0
    //   137: sipush 10000
    //   140: iastore
    //   141: dup
    //   142: iconst_1
    //   143: iconst_0
    //   144: iastore
    //   145: invokestatic 153	android/animation/ObjectAnimator:ofInt	(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    //   148: putfield 155	aqs$a:b	Landroid/animation/ObjectAnimator;
    //   151: aload_0
    //   152: getfield 155	aqs$a:b	Landroid/animation/ObjectAnimator;
    //   155: ldc2_w 156
    //   158: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   161: pop
    //   162: aload_0
    //   163: aload_0
    //   164: getfield 50	aqs$a:u	Laqs;
    //   167: getfield 127	aqs:a	Landroid/view/View;
    //   170: ldc -94
    //   172: invokevirtual 134	android/view/View:findViewById	(I)Landroid/view/View;
    //   175: checkcast 114	android/widget/ImageView
    //   178: putfield 164	aqs$a:c	Landroid/widget/ImageView;
    //   181: aload_0
    //   182: getfield 164	aqs$a:c	Landroid/widget/ImageView;
    //   185: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   188: checkcast 138	android/graphics/drawable/ClipDrawable
    //   191: astore_1
    //   192: aload_1
    //   193: sipush 10000
    //   196: invokevirtual 142	android/graphics/drawable/ClipDrawable:setLevel	(I)Z
    //   199: pop
    //   200: aload_0
    //   201: getfield 164	aqs$a:c	Landroid/widget/ImageView;
    //   204: iconst_0
    //   205: invokevirtual 145	android/widget/ImageView:setVisibility	(I)V
    //   208: aload_0
    //   209: aload_1
    //   210: ldc -109
    //   212: iconst_2
    //   213: newarray <illegal type>
    //   215: dup
    //   216: iconst_0
    //   217: sipush 10000
    //   220: iastore
    //   221: dup
    //   222: iconst_1
    //   223: iconst_0
    //   224: iastore
    //   225: invokestatic 153	android/animation/ObjectAnimator:ofInt	(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    //   228: putfield 166	aqs$a:d	Landroid/animation/ObjectAnimator;
    //   231: aload_0
    //   232: getfield 166	aqs$a:d	Landroid/animation/ObjectAnimator;
    //   235: ldc2_w 156
    //   238: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   241: pop
    //   242: aload_0
    //   243: aload_1
    //   244: ldc -109
    //   246: iconst_2
    //   247: newarray <illegal type>
    //   249: dup
    //   250: iconst_0
    //   251: iconst_0
    //   252: iastore
    //   253: dup
    //   254: iconst_1
    //   255: sipush 10000
    //   258: iastore
    //   259: invokestatic 153	android/animation/ObjectAnimator:ofInt	(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    //   262: putfield 168	aqs$a:e	Landroid/animation/ObjectAnimator;
    //   265: aload_0
    //   266: getfield 168	aqs$a:e	Landroid/animation/ObjectAnimator;
    //   269: ldc2_w 156
    //   272: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   275: pop
    //   276: aload_0
    //   277: aload_0
    //   278: getfield 50	aqs$a:u	Laqs;
    //   281: getfield 127	aqs:a	Landroid/view/View;
    //   284: ldc -87
    //   286: invokevirtual 134	android/view/View:findViewById	(I)Landroid/view/View;
    //   289: checkcast 114	android/widget/ImageView
    //   292: putfield 171	aqs$a:f	Landroid/widget/ImageView;
    //   295: aload_0
    //   296: getfield 171	aqs$a:f	Landroid/widget/ImageView;
    //   299: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   302: checkcast 138	android/graphics/drawable/ClipDrawable
    //   305: astore_1
    //   306: aload_1
    //   307: iconst_0
    //   308: invokevirtual 142	android/graphics/drawable/ClipDrawable:setLevel	(I)Z
    //   311: pop
    //   312: aload_0
    //   313: getfield 171	aqs$a:f	Landroid/widget/ImageView;
    //   316: iconst_0
    //   317: invokevirtual 145	android/widget/ImageView:setVisibility	(I)V
    //   320: aload_0
    //   321: aload_0
    //   322: getfield 50	aqs$a:u	Laqs;
    //   325: getfield 127	aqs:a	Landroid/view/View;
    //   328: ldc -84
    //   330: invokevirtual 134	android/view/View:findViewById	(I)Landroid/view/View;
    //   333: checkcast 114	android/widget/ImageView
    //   336: putfield 174	aqs$a:g	Landroid/widget/ImageView;
    //   339: aload_0
    //   340: getfield 174	aqs$a:g	Landroid/widget/ImageView;
    //   343: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   346: checkcast 138	android/graphics/drawable/ClipDrawable
    //   349: astore 4
    //   351: aload 4
    //   353: iconst_0
    //   354: invokevirtual 142	android/graphics/drawable/ClipDrawable:setLevel	(I)Z
    //   357: pop
    //   358: aload_0
    //   359: getfield 174	aqs$a:g	Landroid/widget/ImageView;
    //   362: iconst_0
    //   363: invokevirtual 145	android/widget/ImageView:setVisibility	(I)V
    //   366: aload_0
    //   367: aload_1
    //   368: ldc -109
    //   370: iconst_2
    //   371: newarray <illegal type>
    //   373: dup
    //   374: iconst_0
    //   375: iconst_0
    //   376: iastore
    //   377: dup
    //   378: iconst_1
    //   379: sipush 10000
    //   382: iastore
    //   383: invokestatic 153	android/animation/ObjectAnimator:ofInt	(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    //   386: putfield 176	aqs$a:h	Landroid/animation/ObjectAnimator;
    //   389: aload_0
    //   390: getfield 176	aqs$a:h	Landroid/animation/ObjectAnimator;
    //   393: ldc2_w 156
    //   396: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   399: pop
    //   400: aload_0
    //   401: aload 4
    //   403: ldc -109
    //   405: iconst_2
    //   406: newarray <illegal type>
    //   408: dup
    //   409: iconst_0
    //   410: iconst_0
    //   411: iastore
    //   412: dup
    //   413: iconst_1
    //   414: sipush 10000
    //   417: iastore
    //   418: invokestatic 153	android/animation/ObjectAnimator:ofInt	(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;
    //   421: putfield 178	aqs$a:i	Landroid/animation/ObjectAnimator;
    //   424: aload_0
    //   425: getfield 178	aqs$a:i	Landroid/animation/ObjectAnimator;
    //   428: ldc2_w 156
    //   431: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   434: pop
    //   435: aload_0
    //   436: aload_0
    //   437: getfield 50	aqs$a:u	Laqs;
    //   440: getfield 127	aqs:a	Landroid/view/View;
    //   443: ldc -77
    //   445: invokevirtual 134	android/view/View:findViewById	(I)Landroid/view/View;
    //   448: checkcast 114	android/widget/ImageView
    //   451: putfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   454: aload_0
    //   455: getfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   458: sipush 65280
    //   461: invokevirtual 184	android/widget/ImageView:setBackgroundColor	(I)V
    //   464: aload_0
    //   465: getfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   468: iconst_0
    //   469: invokevirtual 145	android/widget/ImageView:setVisibility	(I)V
    //   472: aload_0
    //   473: getfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   476: invokevirtual 188	android/widget/ImageView:getParent	()Landroid/view/ViewParent;
    //   479: checkcast 190	android/widget/FrameLayout
    //   482: astore_1
    //   483: aload_0
    //   484: aload_0
    //   485: getfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   488: ldc -64
    //   490: iconst_2
    //   491: newarray <illegal type>
    //   493: dup
    //   494: iconst_0
    //   495: aload_1
    //   496: invokevirtual 196	android/widget/FrameLayout:getHeight	()I
    //   499: i2f
    //   500: fastore
    //   501: dup
    //   502: iconst_1
    //   503: fconst_0
    //   504: fastore
    //   505: invokestatic 200	android/animation/ObjectAnimator:ofFloat	(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    //   508: putfield 202	aqs$a:k	Landroid/animation/ObjectAnimator;
    //   511: aload_0
    //   512: getfield 202	aqs$a:k	Landroid/animation/ObjectAnimator;
    //   515: ldc2_w 156
    //   518: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   521: pop
    //   522: aload_0
    //   523: aload_0
    //   524: getfield 181	aqs$a:j	Landroid/widget/ImageView;
    //   527: ldc -64
    //   529: iconst_2
    //   530: newarray <illegal type>
    //   532: dup
    //   533: iconst_0
    //   534: fconst_0
    //   535: fastore
    //   536: dup
    //   537: iconst_1
    //   538: aload_1
    //   539: invokevirtual 196	android/widget/FrameLayout:getHeight	()I
    //   542: i2f
    //   543: fastore
    //   544: invokestatic 200	android/animation/ObjectAnimator:ofFloat	(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;
    //   547: putfield 204	aqs$a:l	Landroid/animation/ObjectAnimator;
    //   550: aload_0
    //   551: getfield 204	aqs$a:l	Landroid/animation/ObjectAnimator;
    //   554: ldc2_w 156
    //   557: invokevirtual 161	android/animation/ObjectAnimator:setDuration	(J)Landroid/animation/ObjectAnimator;
    //   560: pop
    //   561: aload_0
    //   562: getfield 70	aqs$a:m	Landroid/animation/AnimatorSet;
    //   565: aload_0
    //   566: getfield 204	aqs$a:l	Landroid/animation/ObjectAnimator;
    //   569: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   572: pop
    //   573: aload_0
    //   574: getfield 72	aqs$a:n	Landroid/animation/AnimatorSet;
    //   577: aload_0
    //   578: getfield 166	aqs$a:d	Landroid/animation/ObjectAnimator;
    //   581: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   584: pop
    //   585: aload_0
    //   586: getfield 74	aqs$a:o	Landroid/animation/AnimatorSet;
    //   589: aload_0
    //   590: getfield 168	aqs$a:e	Landroid/animation/ObjectAnimator;
    //   593: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   596: aload_0
    //   597: getfield 166	aqs$a:d	Landroid/animation/ObjectAnimator;
    //   600: invokevirtual 213	android/animation/AnimatorSet$Builder:before	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   603: pop
    //   604: aload_0
    //   605: getfield 76	aqs$a:p	Landroid/animation/AnimatorSet;
    //   608: aload_0
    //   609: getfield 176	aqs$a:h	Landroid/animation/ObjectAnimator;
    //   612: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   615: pop
    //   616: aload_0
    //   617: getfield 78	aqs$a:q	Landroid/animation/AnimatorSet;
    //   620: iconst_2
    //   621: anewarray 215	android/animation/Animator
    //   624: dup
    //   625: iconst_0
    //   626: aload_0
    //   627: getfield 178	aqs$a:i	Landroid/animation/ObjectAnimator;
    //   630: aastore
    //   631: dup
    //   632: iconst_1
    //   633: aload_0
    //   634: getfield 155	aqs$a:b	Landroid/animation/ObjectAnimator;
    //   637: aastore
    //   638: invokevirtual 219	android/animation/AnimatorSet:playTogether	([Landroid/animation/Animator;)V
    //   641: aload_0
    //   642: getfield 80	aqs$a:r	Landroid/animation/AnimatorSet;
    //   645: aload_0
    //   646: getfield 202	aqs$a:k	Landroid/animation/ObjectAnimator;
    //   649: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   652: aload_0
    //   653: getfield 204	aqs$a:l	Landroid/animation/ObjectAnimator;
    //   656: invokevirtual 213	android/animation/AnimatorSet$Builder:before	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   659: pop
    //   660: aload_0
    //   661: getfield 82	aqs$a:s	Landroid/animation/AnimatorSet;
    //   664: aload_0
    //   665: getfield 202	aqs$a:k	Landroid/animation/ObjectAnimator;
    //   668: invokevirtual 208	android/animation/AnimatorSet:play	(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;
    //   671: pop
    //   672: aload_0
    //   673: getfield 72	aqs$a:n	Landroid/animation/AnimatorSet;
    //   676: new 11	aqs$a$1
    //   679: dup
    //   680: aload_0
    //   681: invokespecial 222	aqs$a$1:<init>	(Laqs$a;)V
    //   684: invokevirtual 226	android/animation/AnimatorSet:addListener	(Landroid/animation/Animator$AnimatorListener;)V
    //   687: aload_0
    //   688: getfield 74	aqs$a:o	Landroid/animation/AnimatorSet;
    //   691: new 13	aqs$a$2
    //   694: dup
    //   695: aload_0
    //   696: invokespecial 227	aqs$a$2:<init>	(Laqs$a;)V
    //   699: invokevirtual 226	android/animation/AnimatorSet:addListener	(Landroid/animation/Animator$AnimatorListener;)V
    //   702: aload_0
    //   703: getfield 78	aqs$a:q	Landroid/animation/AnimatorSet;
    //   706: new 15	aqs$a$3
    //   709: dup
    //   710: aload_0
    //   711: invokespecial 228	aqs$a$3:<init>	(Laqs$a;)V
    //   714: invokevirtual 226	android/animation/AnimatorSet:addListener	(Landroid/animation/Animator$AnimatorListener;)V
    //   717: aload_0
    //   718: getfield 72	aqs$a:n	Landroid/animation/AnimatorSet;
    //   721: invokevirtual 231	android/animation/AnimatorSet:start	()V
    //   724: aload_0
    //   725: getfield 70	aqs$a:m	Landroid/animation/AnimatorSet;
    //   728: invokevirtual 231	android/animation/AnimatorSet:start	()V
    //   731: aload_0
    //   732: getfield 50	aqs$a:u	Laqs;
    //   735: getfield 112	aqs:l	Landroid/widget/ImageView;
    //   738: invokevirtual 118	android/widget/ImageView:getDrawable	()Landroid/graphics/drawable/Drawable;
    //   741: checkcast 233	android/graphics/drawable/BitmapDrawable
    //   744: invokevirtual 237	android/graphics/drawable/BitmapDrawable:getBitmap	()Landroid/graphics/Bitmap;
    //   747: astore_1
    //   748: new 239	com/snapchat/android/scan/SnapScan
    //   751: dup
    //   752: invokespecial 240	com/snapchat/android/scan/SnapScan:<init>	()V
    //   755: pop
    //   756: aload_1
    //   757: invokestatic 243	com/snapchat/android/scan/SnapScan:a	(Landroid/graphics/Bitmap;)Lcom/snapchat/android/scan/SnapScanResult;
    //   760: astore_1
    //   761: aload_0
    //   762: iconst_1
    //   763: invokestatic 59	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   766: putfield 61	aqs$a:v	Ljava/lang/Boolean;
    //   769: aload_1
    //   770: ifnull -738 -> 32
    //   773: aload_1
    //   774: invokevirtual 249	com/snapchat/android/scan/SnapScanResult:getScannedData	()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
    //   777: ifnull -745 -> 32
    //   780: aload_1
    //   781: invokevirtual 249	com/snapchat/android/scan/SnapScanResult:getScannedData	()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
    //   784: invokevirtual 255	com/snapchat/android/scan/SnapScanResult$ScannedData:hasScannedData	()Z
    //   787: ifeq -755 -> 32
    //   790: aload_0
    //   791: iconst_1
    //   792: invokestatic 59	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   795: putfield 63	aqs$a:w	Ljava/lang/Boolean;
    //   798: new 257	com/snapchat/android/analytics/framework/EasyMetric
    //   801: dup
    //   802: ldc_w 259
    //   805: invokespecial 262	com/snapchat/android/analytics/framework/EasyMetric:<init>	(Ljava/lang/String;)V
    //   808: iconst_0
    //   809: invokevirtual 264	com/snapchat/android/analytics/framework/EasyMetric:b	(Z)V
    //   812: invokestatic 269	ban:a	()Lcom/squareup/otto/Bus;
    //   815: new 271	bbg
    //   818: dup
    //   819: ldc_w 273
    //   822: invokespecial 274	bbg:<init>	(Ljava/lang/String;)V
    //   825: invokevirtual 279	com/squareup/otto/Bus:a	(Ljava/lang/Object;)V
    //   828: invokestatic 284	aol:a	()Laol;
    //   831: aload_0
    //   832: getfield 50	aqs$a:u	Laqs;
    //   835: getfield 287	aqs:k	Landroid/content/Context;
    //   838: aload_1
    //   839: invokevirtual 249	com/snapchat/android/scan/SnapScanResult:getScannedData	()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
    //   842: invokevirtual 290	com/snapchat/android/scan/SnapScanResult$ScannedData:getSnapcodeVersion	()I
    //   845: aload_1
    //   846: invokevirtual 249	com/snapchat/android/scan/SnapScanResult:getScannedData	()Lcom/snapchat/android/scan/SnapScanResult$ScannedData;
    //   849: invokevirtual 294	com/snapchat/android/scan/SnapScanResult$ScannedData:getSnapcodeMessage	()[B
    //   852: invokevirtual 297	aol:a	(Landroid/content/Context;I[B)I
    //   855: pop
    //   856: goto -824 -> 32
    //   859: astore_1
    //   860: aload_0
    //   861: monitorexit
    //   862: aload_1
    //   863: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	864	0	this	a
    //   0	864	1	paramView	android.view.View
    //   20	6	2	i1	int
    //   27	2	3	i2	int
    //   349	53	4	localClipDrawable	android.graphics.drawable.ClipDrawable
    // Exception table:
    //   from	to	target	type
    //   2	28	859	finally
    //   35	769	859	finally
    //   773	856	859	finally
  }
}

/* Location:
 * Qualified Name:     aqs.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */