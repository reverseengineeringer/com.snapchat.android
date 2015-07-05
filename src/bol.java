import android.graphics.Bitmap;
import android.os.Handler;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicInteger;

final class bol
  implements Runnable
{
  private static final Object t = new Object();
  private static final ThreadLocal<StringBuilder> u = new ThreadLocal() {};
  private static final AtomicInteger v = new AtomicInteger();
  private static final bpi w = new bpi()
  {
    public final boolean a(bpg paramAnonymousbpg)
    {
      return true;
    }
    
    public final bpi.a b(bpg paramAnonymousbpg)
    {
      throw new IllegalStateException("Unrecognized type of request: " + paramAnonymousbpg);
    }
  };
  final int a = v.incrementAndGet();
  final bpd b;
  final bor c;
  final bom d;
  final bpk e;
  final String f;
  final bpg g;
  final int h;
  int i;
  final bpi j;
  boj k;
  List<boj> l;
  Bitmap m;
  Future<?> n;
  bpd.d o;
  Exception p;
  int q;
  int r;
  int s;
  
  private bol(bpd parambpd, bor parambor, bom parambom, bpk parambpk, boj paramboj, bpi parambpi)
  {
    b = parambpd;
    c = parambor;
    d = parambom;
    e = parambpk;
    k = paramboj;
    f = i;
    g = b;
    s = b.r;
    h = e;
    i = f;
    j = parambpi;
    r = parambpi.a();
  }
  
  private static Bitmap a(final List<bpm> paramList, Bitmap paramBitmap)
  {
    int i2 = paramList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      bpm localbpm = (bpm)paramList.get(i1);
      Bitmap localBitmap;
      try
      {
        localBitmap = localbpm.a();
        if (localBitmap != null) {
          break label154;
        }
        paramBitmap = new StringBuilder("Transformation ").append(localbpm.b()).append(" returned null after ").append(i1).append(" previous transformation(s).\n\nTransformation list:\n");
        paramList = paramList.iterator();
        while (paramList.hasNext()) {
          paramBitmap.append(((bpm)paramList.next()).b()).append('\n');
        }
        bpd.a.post(new Runnable()
        {
          public final void run()
          {
            throw new NullPointerException(a.toString());
          }
        });
      }
      catch (RuntimeException paramList)
      {
        bpd.a.post(new Runnable()
        {
          public final void run()
          {
            throw new RuntimeException("Transformation " + a.b() + " crashed with exception.", paramList);
          }
        });
        return null;
      }
      return null;
      label154:
      if ((localBitmap == paramBitmap) && (paramBitmap.isRecycled()))
      {
        bpd.a.post(new Runnable()
        {
          public final void run()
          {
            throw new IllegalStateException("Transformation " + a.b() + " returned input Bitmap but recycled it.");
          }
        });
        return null;
      }
      if ((localBitmap != paramBitmap) && (!paramBitmap.isRecycled()))
      {
        bpd.a.post(new Runnable()
        {
          public final void run()
          {
            throw new IllegalStateException("Transformation " + a.b() + " mutated input Bitmap but failed to recycle the original.");
          }
        });
        return null;
      }
      i1 += 1;
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }
  
  static bol a(bpd parambpd, bor parambor, bom parambom, bpk parambpk, boj paramboj)
  {
    bpg localbpg = b;
    List localList = e;
    int i1 = 0;
    int i2 = localList.size();
    while (i1 < i2)
    {
      bpi localbpi = (bpi)localList.get(i1);
      if (localbpi.a(localbpg)) {
        return new bol(parambpd, parambor, parambom, parambpk, paramboj, localbpi);
      }
      i1 += 1;
    }
    return new bol(parambpd, parambor, parambom, parambpk, paramboj, w);
  }
  
  private static boolean a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return (!paramBoolean) || (paramInt1 > paramInt3) || (paramInt2 > paramInt4);
  }
  
  /* Error */
  private Bitmap c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 18
    //   3: aload_0
    //   4: getfield 117	bol:h	I
    //   7: invokestatic 225	boz:a	(I)Z
    //   10: ifeq +78 -> 88
    //   13: aload_0
    //   14: getfield 93	bol:d	Lbom;
    //   17: aload_0
    //   18: getfield 103	bol:f	Ljava/lang/String;
    //   21: invokeinterface 230 2 0
    //   26: astore 20
    //   28: aload 20
    //   30: astore 18
    //   32: aload 20
    //   34: ifnull +54 -> 88
    //   37: aload_0
    //   38: getfield 95	bol:e	Lbpk;
    //   41: invokevirtual 234	bpk:a	()V
    //   44: aload_0
    //   45: getstatic 238	bpd$d:a	Lbpd$d;
    //   48: putfield 240	bol:o	Lbpd$d;
    //   51: aload 20
    //   53: astore 19
    //   55: aload_0
    //   56: getfield 89	bol:b	Lbpd;
    //   59: getfield 243	bpd:o	Z
    //   62: ifeq +23 -> 85
    //   65: ldc -11
    //   67: ldc -9
    //   69: aload_0
    //   70: getfield 107	bol:g	Lbpg;
    //   73: invokevirtual 249	bpg:a	()Ljava/lang/String;
    //   76: ldc -5
    //   78: invokestatic 256	bpo:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   81: aload 20
    //   83: astore 19
    //   85: aload 19
    //   87: areturn
    //   88: aload_0
    //   89: getfield 107	bol:g	Lbpg;
    //   92: astore 19
    //   94: aload_0
    //   95: getfield 128	bol:r	I
    //   98: ifne +683 -> 781
    //   101: getstatic 261	bpa:c	Lbpa;
    //   104: getfield 263	bpa:d	I
    //   107: istore 5
    //   109: aload 19
    //   111: iload 5
    //   113: putfield 265	bpg:c	I
    //   116: aload_0
    //   117: getfield 123	bol:j	Lbpi;
    //   120: aload_0
    //   121: getfield 107	bol:g	Lbpg;
    //   124: invokevirtual 268	bpi:b	(Lbpg;)Lbpi$a;
    //   127: astore 20
    //   129: aload 20
    //   131: ifnull +163 -> 294
    //   134: aload_0
    //   135: aload 20
    //   137: getfield 271	bpi$a:a	Lbpd$d;
    //   140: putfield 240	bol:o	Lbpd$d;
    //   143: aload_0
    //   144: aload 20
    //   146: getfield 272	bpi$a:d	I
    //   149: putfield 274	bol:q	I
    //   152: aload 20
    //   154: getfield 276	bpi$a:b	Landroid/graphics/Bitmap;
    //   157: astore 19
    //   159: aload 19
    //   161: astore 18
    //   163: aload 19
    //   165: ifnonnull +129 -> 294
    //   168: aload 20
    //   170: getfield 279	bpi$a:c	Ljava/io/InputStream;
    //   173: astore 20
    //   175: aload_0
    //   176: getfield 107	bol:g	Lbpg;
    //   179: astore 18
    //   181: new 281	box
    //   184: dup
    //   185: aload 20
    //   187: invokespecial 284	box:<init>	(Ljava/io/InputStream;)V
    //   190: astore 21
    //   192: aload 21
    //   194: ldc_w 285
    //   197: invokevirtual 288	box:a	(I)J
    //   200: lstore 14
    //   202: aload 18
    //   204: invokestatic 291	bpi:d	(Lbpg;)Landroid/graphics/BitmapFactory$Options;
    //   207: astore 19
    //   209: aload 19
    //   211: invokestatic 294	bpi:a	(Landroid/graphics/BitmapFactory$Options;)Z
    //   214: istore 16
    //   216: aload 21
    //   218: invokestatic 297	bpo:c	(Ljava/io/InputStream;)Z
    //   221: istore 17
    //   223: aload 21
    //   225: lload 14
    //   227: invokevirtual 300	box:a	(J)V
    //   230: iload 17
    //   232: ifeq +558 -> 790
    //   235: aload 21
    //   237: invokestatic 303	bpo:b	(Ljava/io/InputStream;)[B
    //   240: astore 21
    //   242: iload 16
    //   244: ifeq +32 -> 276
    //   247: aload 21
    //   249: iconst_0
    //   250: aload 21
    //   252: arraylength
    //   253: aload 19
    //   255: invokestatic 309	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   258: pop
    //   259: aload 18
    //   261: getfield 310	bpg:h	I
    //   264: aload 18
    //   266: getfield 311	bpg:i	I
    //   269: aload 19
    //   271: aload 18
    //   273: invokestatic 314	bpi:a	(IILandroid/graphics/BitmapFactory$Options;Lbpg;)V
    //   276: aload 21
    //   278: iconst_0
    //   279: aload 21
    //   281: arraylength
    //   282: aload 19
    //   284: invokestatic 309	android/graphics/BitmapFactory:decodeByteArray	([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   287: astore 18
    //   289: aload 20
    //   291: invokestatic 316	bpo:a	(Ljava/io/InputStream;)V
    //   294: aload 18
    //   296: astore 19
    //   298: aload 18
    //   300: ifnull -215 -> 85
    //   303: aload_0
    //   304: getfield 89	bol:b	Lbpd;
    //   307: getfield 243	bpd:o	Z
    //   310: ifeq +17 -> 327
    //   313: ldc -11
    //   315: ldc -9
    //   317: aload_0
    //   318: getfield 107	bol:g	Lbpg;
    //   321: invokevirtual 249	bpg:a	()Ljava/lang/String;
    //   324: invokestatic 319	bpo:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   327: aload_0
    //   328: getfield 95	bol:e	Lbpk;
    //   331: aload 18
    //   333: iconst_2
    //   334: invokevirtual 322	bpk:a	(Landroid/graphics/Bitmap;I)V
    //   337: aload_0
    //   338: getfield 107	bol:g	Lbpg;
    //   341: astore 19
    //   343: aload 19
    //   345: invokevirtual 324	bpg:d	()Z
    //   348: ifne +11 -> 359
    //   351: aload 19
    //   353: invokevirtual 326	bpg:e	()Z
    //   356: ifeq +512 -> 868
    //   359: iconst_1
    //   360: istore 5
    //   362: iload 5
    //   364: ifne +14 -> 378
    //   367: aload 18
    //   369: astore 19
    //   371: aload_0
    //   372: getfield 274	bol:q	I
    //   375: ifeq -290 -> 85
    //   378: getstatic 68	bol:t	Ljava/lang/Object;
    //   381: astore 21
    //   383: aload 21
    //   385: monitorenter
    //   386: aload_0
    //   387: getfield 107	bol:g	Lbpg;
    //   390: invokevirtual 324	bpg:d	()Z
    //   393: ifne +14 -> 407
    //   396: aload 18
    //   398: astore 20
    //   400: aload_0
    //   401: getfield 274	bol:q	I
    //   404: ifeq +288 -> 692
    //   407: aload_0
    //   408: getfield 107	bol:g	Lbpg;
    //   411: astore 19
    //   413: aload_0
    //   414: getfield 274	bol:q	I
    //   417: istore 11
    //   419: aload 18
    //   421: invokevirtual 329	android/graphics/Bitmap:getWidth	()I
    //   424: istore 5
    //   426: aload 18
    //   428: invokevirtual 332	android/graphics/Bitmap:getHeight	()I
    //   431: istore 6
    //   433: aload 19
    //   435: getfield 334	bpg:l	Z
    //   438: istore 16
    //   440: new 336	android/graphics/Matrix
    //   443: dup
    //   444: invokespecial 337	android/graphics/Matrix:<init>	()V
    //   447: astore 20
    //   449: aload 19
    //   451: invokevirtual 324	bpg:d	()Z
    //   454: ifeq +592 -> 1046
    //   457: aload 19
    //   459: getfield 310	bpg:h	I
    //   462: istore 12
    //   464: aload 19
    //   466: getfield 311	bpg:i	I
    //   469: istore 13
    //   471: aload 19
    //   473: getfield 340	bpg:m	F
    //   476: fstore_3
    //   477: fload_3
    //   478: fconst_0
    //   479: fcmpl
    //   480: ifeq +27 -> 507
    //   483: aload 19
    //   485: getfield 342	bpg:p	Z
    //   488: ifeq +386 -> 874
    //   491: aload 20
    //   493: fload_3
    //   494: aload 19
    //   496: getfield 344	bpg:n	F
    //   499: aload 19
    //   501: getfield 346	bpg:o	F
    //   504: invokevirtual 350	android/graphics/Matrix:setRotate	(FFF)V
    //   507: aload 19
    //   509: getfield 352	bpg:j	Z
    //   512: ifeq +423 -> 935
    //   515: iload 12
    //   517: i2f
    //   518: iload 5
    //   520: i2f
    //   521: fdiv
    //   522: fstore_3
    //   523: iload 13
    //   525: i2f
    //   526: iload 6
    //   528: i2f
    //   529: fdiv
    //   530: fstore 4
    //   532: fload_3
    //   533: fload 4
    //   535: fcmpl
    //   536: ifle +355 -> 891
    //   539: iload 6
    //   541: i2f
    //   542: fload 4
    //   544: fload_3
    //   545: fdiv
    //   546: fmul
    //   547: f2d
    //   548: invokestatic 358	java/lang/Math:ceil	(D)D
    //   551: d2i
    //   552: istore 7
    //   554: iload 6
    //   556: iload 7
    //   558: isub
    //   559: iconst_2
    //   560: idiv
    //   561: istore 10
    //   563: iload 13
    //   565: i2f
    //   566: iload 7
    //   568: i2f
    //   569: fdiv
    //   570: fstore 4
    //   572: iload 5
    //   574: istore 8
    //   576: iconst_0
    //   577: istore 9
    //   579: iload 16
    //   581: iload 5
    //   583: iload 6
    //   585: iload 12
    //   587: iload 13
    //   589: invokestatic 360	bol:a	(ZIIII)Z
    //   592: ifeq +498 -> 1090
    //   595: aload 20
    //   597: fload_3
    //   598: fload 4
    //   600: invokevirtual 364	android/graphics/Matrix:preScale	(FF)Z
    //   603: pop
    //   604: goto +486 -> 1090
    //   607: iload 11
    //   609: ifeq +12 -> 621
    //   612: aload 20
    //   614: iload 11
    //   616: i2f
    //   617: invokevirtual 368	android/graphics/Matrix:preRotate	(F)Z
    //   620: pop
    //   621: aload 18
    //   623: iload 5
    //   625: iload 6
    //   627: iload 8
    //   629: iload 7
    //   631: aload 20
    //   633: iconst_1
    //   634: invokestatic 372	android/graphics/Bitmap:createBitmap	(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    //   637: astore 20
    //   639: aload 18
    //   641: astore 19
    //   643: aload 20
    //   645: aload 18
    //   647: if_acmpeq +12 -> 659
    //   650: aload 18
    //   652: invokevirtual 375	android/graphics/Bitmap:recycle	()V
    //   655: aload 20
    //   657: astore 19
    //   659: aload 19
    //   661: astore 20
    //   663: aload_0
    //   664: getfield 89	bol:b	Lbpd;
    //   667: getfield 243	bpd:o	Z
    //   670: ifeq +22 -> 692
    //   673: ldc -11
    //   675: ldc_w 377
    //   678: aload_0
    //   679: getfield 107	bol:g	Lbpg;
    //   682: invokevirtual 249	bpg:a	()Ljava/lang/String;
    //   685: invokestatic 319	bpo:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   688: aload 19
    //   690: astore 20
    //   692: aload 20
    //   694: astore 18
    //   696: aload_0
    //   697: getfield 107	bol:g	Lbpg;
    //   700: invokevirtual 326	bpg:e	()Z
    //   703: ifeq +53 -> 756
    //   706: aload_0
    //   707: getfield 107	bol:g	Lbpg;
    //   710: getfield 379	bpg:g	Ljava/util/List;
    //   713: aload 20
    //   715: invokestatic 381	bol:a	(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    //   718: astore 19
    //   720: aload 19
    //   722: astore 18
    //   724: aload_0
    //   725: getfield 89	bol:b	Lbpd;
    //   728: getfield 243	bpd:o	Z
    //   731: ifeq +25 -> 756
    //   734: ldc -11
    //   736: ldc_w 377
    //   739: aload_0
    //   740: getfield 107	bol:g	Lbpg;
    //   743: invokevirtual 249	bpg:a	()Ljava/lang/String;
    //   746: ldc_w 383
    //   749: invokestatic 256	bpo:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   752: aload 19
    //   754: astore 18
    //   756: aload 21
    //   758: monitorexit
    //   759: aload 18
    //   761: astore 19
    //   763: aload 18
    //   765: ifnull -680 -> 85
    //   768: aload_0
    //   769: getfield 95	bol:e	Lbpk;
    //   772: aload 18
    //   774: iconst_3
    //   775: invokevirtual 322	bpk:a	(Landroid/graphics/Bitmap;I)V
    //   778: aload 18
    //   780: areturn
    //   781: aload_0
    //   782: getfield 121	bol:i	I
    //   785: istore 5
    //   787: goto -678 -> 109
    //   790: iload 16
    //   792: ifeq +36 -> 828
    //   795: aload 21
    //   797: aconst_null
    //   798: aload 19
    //   800: invokestatic 387	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   803: pop
    //   804: aload 18
    //   806: getfield 310	bpg:h	I
    //   809: aload 18
    //   811: getfield 311	bpg:i	I
    //   814: aload 19
    //   816: aload 18
    //   818: invokestatic 314	bpi:a	(IILandroid/graphics/BitmapFactory$Options;Lbpg;)V
    //   821: aload 21
    //   823: lload 14
    //   825: invokevirtual 300	box:a	(J)V
    //   828: aload 21
    //   830: aconst_null
    //   831: aload 19
    //   833: invokestatic 387	android/graphics/BitmapFactory:decodeStream	(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    //   836: astore 19
    //   838: aload 19
    //   840: astore 18
    //   842: aload 19
    //   844: ifnonnull -555 -> 289
    //   847: new 389	java/io/IOException
    //   850: dup
    //   851: ldc_w 391
    //   854: invokespecial 392	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   857: athrow
    //   858: astore 18
    //   860: aload 20
    //   862: invokestatic 316	bpo:a	(Ljava/io/InputStream;)V
    //   865: aload 18
    //   867: athrow
    //   868: iconst_0
    //   869: istore 5
    //   871: goto -509 -> 362
    //   874: aload 20
    //   876: fload_3
    //   877: invokevirtual 395	android/graphics/Matrix:setRotate	(F)V
    //   880: goto -373 -> 507
    //   883: astore 18
    //   885: aload 21
    //   887: monitorexit
    //   888: aload 18
    //   890: athrow
    //   891: iload 5
    //   893: i2f
    //   894: fload_3
    //   895: fload 4
    //   897: fdiv
    //   898: fmul
    //   899: f2d
    //   900: dstore_1
    //   901: dload_1
    //   902: invokestatic 358	java/lang/Math:ceil	(D)D
    //   905: d2i
    //   906: istore 8
    //   908: iload 5
    //   910: iload 8
    //   912: isub
    //   913: iconst_2
    //   914: idiv
    //   915: istore 9
    //   917: iload 12
    //   919: i2f
    //   920: iload 8
    //   922: i2f
    //   923: fdiv
    //   924: fstore_3
    //   925: iconst_0
    //   926: istore 10
    //   928: iload 6
    //   930: istore 7
    //   932: goto -353 -> 579
    //   935: aload 19
    //   937: getfield 397	bpg:k	Z
    //   940: ifeq +188 -> 1128
    //   943: iload 12
    //   945: i2f
    //   946: iload 5
    //   948: i2f
    //   949: fdiv
    //   950: fstore_3
    //   951: iload 13
    //   953: i2f
    //   954: iload 6
    //   956: i2f
    //   957: fdiv
    //   958: fstore 4
    //   960: fload_3
    //   961: fload 4
    //   963: fcmpg
    //   964: ifge +158 -> 1122
    //   967: iload 16
    //   969: iload 5
    //   971: iload 6
    //   973: iload 12
    //   975: iload 13
    //   977: invokestatic 360	bol:a	(ZIIII)Z
    //   980: ifeq +121 -> 1101
    //   983: aload 20
    //   985: fload_3
    //   986: fload_3
    //   987: invokevirtual 364	android/graphics/Matrix:preScale	(FF)Z
    //   990: pop
    //   991: goto +110 -> 1101
    //   994: iload 12
    //   996: ifeq +71 -> 1067
    //   999: iload 12
    //   1001: i2f
    //   1002: iload 5
    //   1004: i2f
    //   1005: fdiv
    //   1006: fstore_3
    //   1007: iload 13
    //   1009: ifeq +69 -> 1078
    //   1012: iload 13
    //   1014: i2f
    //   1015: iload 6
    //   1017: i2f
    //   1018: fdiv
    //   1019: fstore 4
    //   1021: iload 16
    //   1023: iload 5
    //   1025: iload 6
    //   1027: iload 12
    //   1029: iload 13
    //   1031: invokestatic 360	bol:a	(ZIIII)Z
    //   1034: ifeq +12 -> 1046
    //   1037: aload 20
    //   1039: fload_3
    //   1040: fload 4
    //   1042: invokevirtual 364	android/graphics/Matrix:preScale	(FF)Z
    //   1045: pop
    //   1046: iconst_0
    //   1047: istore 9
    //   1049: iload 6
    //   1051: istore 7
    //   1053: iload 5
    //   1055: istore 8
    //   1057: iconst_0
    //   1058: istore 6
    //   1060: iload 9
    //   1062: istore 5
    //   1064: goto -457 -> 607
    //   1067: iload 13
    //   1069: i2f
    //   1070: iload 6
    //   1072: i2f
    //   1073: fdiv
    //   1074: fstore_3
    //   1075: goto -68 -> 1007
    //   1078: iload 12
    //   1080: i2f
    //   1081: iload 5
    //   1083: i2f
    //   1084: fdiv
    //   1085: fstore 4
    //   1087: goto -66 -> 1021
    //   1090: iload 10
    //   1092: istore 6
    //   1094: iload 9
    //   1096: istore 5
    //   1098: goto -491 -> 607
    //   1101: iconst_0
    //   1102: istore 9
    //   1104: iload 6
    //   1106: istore 7
    //   1108: iload 5
    //   1110: istore 8
    //   1112: iconst_0
    //   1113: istore 6
    //   1115: iload 9
    //   1117: istore 5
    //   1119: goto -512 -> 607
    //   1122: fload 4
    //   1124: fstore_3
    //   1125: goto -158 -> 967
    //   1128: iload 12
    //   1130: ifne +8 -> 1138
    //   1133: iload 13
    //   1135: ifeq -89 -> 1046
    //   1138: iload 12
    //   1140: iload 5
    //   1142: if_icmpne -148 -> 994
    //   1145: iload 13
    //   1147: iload 6
    //   1149: if_icmpeq -103 -> 1046
    //   1152: goto -158 -> 994
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1155	0	this	bol
    //   900	2	1	d1	double
    //   476	649	3	f1	float
    //   530	593	4	f2	float
    //   107	1036	5	i1	int
    //   431	719	6	i2	int
    //   552	555	7	i3	int
    //   574	537	8	i4	int
    //   577	539	9	i5	int
    //   561	530	10	i6	int
    //   417	198	11	i7	int
    //   462	681	12	i8	int
    //   469	681	13	i9	int
    //   200	624	14	l1	long
    //   214	808	16	bool1	boolean
    //   221	10	17	bool2	boolean
    //   1	840	18	localObject1	Object
    //   858	8	18	localObject2	Object
    //   883	6	18	localObject3	Object
    //   53	883	19	localObject4	Object
    //   26	1012	20	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   175	230	858	finally
    //   235	242	858	finally
    //   247	276	858	finally
    //   276	289	858	finally
    //   795	828	858	finally
    //   828	838	858	finally
    //   847	858	858	finally
    //   386	396	883	finally
    //   400	407	883	finally
    //   407	477	883	finally
    //   483	507	883	finally
    //   507	532	883	finally
    //   539	572	883	finally
    //   579	604	883	finally
    //   612	621	883	finally
    //   621	639	883	finally
    //   650	655	883	finally
    //   663	688	883	finally
    //   696	720	883	finally
    //   724	752	883	finally
    //   756	759	883	finally
    //   874	880	883	finally
    //   885	888	883	finally
    //   901	925	883	finally
    //   935	960	883	finally
    //   967	991	883	finally
    //   999	1007	883	finally
    //   1012	1021	883	finally
    //   1021	1046	883	finally
  }
  
  final void a(boj paramboj)
  {
    int i5 = 1;
    int i4 = 0;
    boolean bool;
    if (k == paramboj)
    {
      k = null;
      bool = true;
    }
    for (;;)
    {
      int i1;
      int i3;
      label67:
      int i2;
      if ((bool) && (b.r == s))
      {
        i1 = bpd.e.a;
        if ((l != null) && (!l.isEmpty()))
        {
          i3 = 1;
          i2 = i5;
          if (k == null)
          {
            if (i3 == 0) {
              break label207;
            }
            i2 = i5;
          }
          label85:
          if (i2 == 0) {
            break label212;
          }
          if (k == null) {
            break label255;
          }
          i1 = k.b.r;
        }
      }
      label129:
      label207:
      label212:
      label252:
      label255:
      for (;;)
      {
        i2 = i1;
        if (i3 != 0)
        {
          i5 = l.size();
          i3 = i4;
          i2 = i1;
          if (i3 < i5)
          {
            i2 = l.get(i3)).b.r;
            if (i2 - 1 <= i1 - 1) {
              break label252;
            }
            i1 = i2;
          }
        }
        for (;;)
        {
          i3 += 1;
          break label129;
          if (l == null) {
            break label258;
          }
          bool = l.remove(paramboj);
          break;
          i3 = 0;
          break label67;
          i2 = 0;
          break label85;
          i2 = i1;
          s = i2;
          if (b.o) {
            bpo.a("Hunter", "removed", b.a(), bpo.a(this, "from "));
          }
          return;
        }
      }
      label258:
      bool = false;
    }
  }
  
  final boolean a()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (k == null) {
      if (l != null)
      {
        bool1 = bool2;
        if (!l.isEmpty()) {}
      }
      else
      {
        bool1 = bool2;
        if (n != null)
        {
          bool1 = bool2;
          if (n.cancel(false)) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  final boolean b()
  {
    return (n != null) && (n.isCancelled());
  }
  
  /* Error */
  public final void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 107	bol:g	Lbpg;
    //   4: astore_1
    //   5: aload_1
    //   6: getfield 440	bpg:d	Landroid/net/Uri;
    //   9: ifnull +112 -> 121
    //   12: aload_1
    //   13: getfield 440	bpg:d	Landroid/net/Uri;
    //   16: invokevirtual 445	android/net/Uri:getPath	()Ljava/lang/String;
    //   19: invokestatic 451	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   22: astore_1
    //   23: getstatic 71	bol:u	Ljava/lang/ThreadLocal;
    //   26: invokevirtual 455	java/lang/ThreadLocal:get	()Ljava/lang/Object;
    //   29: checkcast 147	java/lang/StringBuilder
    //   32: astore_2
    //   33: aload_2
    //   34: aload_1
    //   35: invokevirtual 458	java/lang/String:length	()I
    //   38: bipush 8
    //   40: iadd
    //   41: invokevirtual 462	java/lang/StringBuilder:ensureCapacity	(I)V
    //   44: aload_2
    //   45: bipush 8
    //   47: aload_2
    //   48: invokevirtual 463	java/lang/StringBuilder:length	()I
    //   51: aload_1
    //   52: invokevirtual 467	java/lang/StringBuilder:replace	(IILjava/lang/String;)Ljava/lang/StringBuilder;
    //   55: pop
    //   56: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   59: aload_2
    //   60: invokevirtual 476	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   63: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   66: aload_0
    //   67: getfield 89	bol:b	Lbpd;
    //   70: getfield 243	bpd:o	Z
    //   73: ifeq +15 -> 88
    //   76: ldc -11
    //   78: ldc_w 481
    //   81: aload_0
    //   82: invokestatic 484	bpo:a	(Lbol;)Ljava/lang/String;
    //   85: invokestatic 319	bpo:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   88: aload_0
    //   89: aload_0
    //   90: invokespecial 486	bol:c	()Landroid/graphics/Bitmap;
    //   93: putfield 488	bol:m	Landroid/graphics/Bitmap;
    //   96: aload_0
    //   97: getfield 488	bol:m	Landroid/graphics/Bitmap;
    //   100: ifnonnull +32 -> 132
    //   103: aload_0
    //   104: getfield 91	bol:c	Lbor;
    //   107: aload_0
    //   108: invokevirtual 493	bor:b	(Lbol;)V
    //   111: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   114: ldc_w 495
    //   117: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   120: return
    //   121: aload_1
    //   122: getfield 496	bpg:e	I
    //   125: invokestatic 502	java/lang/Integer:toHexString	(I)Ljava/lang/String;
    //   128: astore_1
    //   129: goto -106 -> 23
    //   132: aload_0
    //   133: getfield 91	bol:c	Lbor;
    //   136: astore_1
    //   137: aload_1
    //   138: getfield 504	bor:i	Landroid/os/Handler;
    //   141: aload_1
    //   142: getfield 504	bor:i	Landroid/os/Handler;
    //   145: iconst_4
    //   146: aload_0
    //   147: invokevirtual 508	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   150: invokevirtual 512	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   153: pop
    //   154: goto -43 -> 111
    //   157: astore_1
    //   158: aload_1
    //   159: getfield 514	bos$b:a	Z
    //   162: ifeq +13 -> 175
    //   165: aload_1
    //   166: getfield 516	bos$b:b	I
    //   169: sipush 504
    //   172: if_icmpeq +8 -> 180
    //   175: aload_0
    //   176: aload_1
    //   177: putfield 518	bol:p	Ljava/lang/Exception;
    //   180: aload_0
    //   181: getfield 91	bol:c	Lbor;
    //   184: aload_0
    //   185: invokevirtual 493	bor:b	(Lbol;)V
    //   188: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   191: ldc_w 495
    //   194: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   197: return
    //   198: astore_1
    //   199: aload_0
    //   200: aload_1
    //   201: putfield 518	bol:p	Ljava/lang/Exception;
    //   204: aload_0
    //   205: getfield 91	bol:c	Lbor;
    //   208: aload_0
    //   209: invokevirtual 520	bor:a	(Lbol;)V
    //   212: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   215: ldc_w 495
    //   218: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   221: return
    //   222: astore_1
    //   223: aload_0
    //   224: aload_1
    //   225: putfield 518	bol:p	Ljava/lang/Exception;
    //   228: aload_0
    //   229: getfield 91	bol:c	Lbor;
    //   232: aload_0
    //   233: invokevirtual 520	bor:a	(Lbol;)V
    //   236: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   239: ldc_w 495
    //   242: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   245: return
    //   246: astore_1
    //   247: new 522	java/io/StringWriter
    //   250: dup
    //   251: invokespecial 523	java/io/StringWriter:<init>	()V
    //   254: astore_2
    //   255: aload_0
    //   256: getfield 95	bol:e	Lbpk;
    //   259: astore_3
    //   260: new 525	bpl
    //   263: dup
    //   264: aload_3
    //   265: getfield 527	bpk:b	Lbom;
    //   268: invokeinterface 529 1 0
    //   273: aload_3
    //   274: getfield 527	bpk:b	Lbom;
    //   277: invokeinterface 530 1 0
    //   282: aload_3
    //   283: getfield 533	bpk:d	J
    //   286: aload_3
    //   287: getfield 535	bpk:e	J
    //   290: aload_3
    //   291: getfield 537	bpk:f	J
    //   294: aload_3
    //   295: getfield 539	bpk:g	J
    //   298: aload_3
    //   299: getfield 541	bpk:h	J
    //   302: aload_3
    //   303: getfield 543	bpk:i	J
    //   306: aload_3
    //   307: getfield 545	bpk:j	J
    //   310: aload_3
    //   311: getfield 547	bpk:k	J
    //   314: aload_3
    //   315: getfield 549	bpk:l	I
    //   318: aload_3
    //   319: getfield 551	bpk:m	I
    //   322: aload_3
    //   323: getfield 553	bpk:n	I
    //   326: invokestatic 559	java/lang/System:currentTimeMillis	()J
    //   329: invokespecial 562	bpl:<init>	(IIJJJJJJJJIIIJ)V
    //   332: astore_3
    //   333: new 564	java/io/PrintWriter
    //   336: dup
    //   337: aload_2
    //   338: invokespecial 567	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   341: astore 4
    //   343: aload 4
    //   345: ldc_w 569
    //   348: invokevirtual 572	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   351: aload 4
    //   353: ldc_w 574
    //   356: invokevirtual 572	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   359: aload 4
    //   361: ldc_w 576
    //   364: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   367: aload 4
    //   369: aload_3
    //   370: getfield 580	bpl:a	I
    //   373: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   376: aload 4
    //   378: ldc_w 584
    //   381: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   384: aload 4
    //   386: aload_3
    //   387: getfield 585	bpl:b	I
    //   390: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   393: aload 4
    //   395: ldc_w 587
    //   398: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   401: aload 4
    //   403: aload_3
    //   404: getfield 585	bpl:b	I
    //   407: i2f
    //   408: aload_3
    //   409: getfield 580	bpl:a	I
    //   412: i2f
    //   413: fdiv
    //   414: ldc_w 588
    //   417: fmul
    //   418: f2d
    //   419: invokestatic 358	java/lang/Math:ceil	(D)D
    //   422: d2i
    //   423: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   426: aload 4
    //   428: ldc_w 590
    //   431: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   434: aload 4
    //   436: aload_3
    //   437: getfield 592	bpl:c	J
    //   440: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   443: aload 4
    //   445: ldc_w 596
    //   448: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   451: aload 4
    //   453: aload_3
    //   454: getfield 597	bpl:d	J
    //   457: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   460: aload 4
    //   462: ldc_w 599
    //   465: invokevirtual 572	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   468: aload 4
    //   470: ldc_w 601
    //   473: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   476: aload 4
    //   478: aload_3
    //   479: getfield 603	bpl:k	I
    //   482: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   485: aload 4
    //   487: ldc_w 605
    //   490: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   493: aload 4
    //   495: aload_3
    //   496: getfield 606	bpl:e	J
    //   499: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   502: aload 4
    //   504: ldc_w 608
    //   507: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   510: aload 4
    //   512: aload_3
    //   513: getfield 609	bpl:h	J
    //   516: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   519: aload 4
    //   521: ldc_w 611
    //   524: invokevirtual 572	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   527: aload 4
    //   529: ldc_w 613
    //   532: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   535: aload 4
    //   537: aload_3
    //   538: getfield 614	bpl:l	I
    //   541: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   544: aload 4
    //   546: ldc_w 616
    //   549: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   552: aload 4
    //   554: aload_3
    //   555: getfield 617	bpl:f	J
    //   558: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   561: aload 4
    //   563: ldc_w 619
    //   566: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   569: aload 4
    //   571: aload_3
    //   572: getfield 620	bpl:m	I
    //   575: invokevirtual 582	java/io/PrintWriter:println	(I)V
    //   578: aload 4
    //   580: ldc_w 622
    //   583: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   586: aload 4
    //   588: aload_3
    //   589: getfield 623	bpl:g	J
    //   592: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   595: aload 4
    //   597: ldc_w 625
    //   600: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   603: aload 4
    //   605: aload_3
    //   606: getfield 626	bpl:i	J
    //   609: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   612: aload 4
    //   614: ldc_w 628
    //   617: invokevirtual 579	java/io/PrintWriter:print	(Ljava/lang/String;)V
    //   620: aload 4
    //   622: aload_3
    //   623: getfield 629	bpl:j	J
    //   626: invokevirtual 594	java/io/PrintWriter:println	(J)V
    //   629: aload 4
    //   631: ldc_w 631
    //   634: invokevirtual 572	java/io/PrintWriter:println	(Ljava/lang/String;)V
    //   637: aload 4
    //   639: invokevirtual 634	java/io/PrintWriter:flush	()V
    //   642: aload_0
    //   643: new 131	java/lang/RuntimeException
    //   646: dup
    //   647: aload_2
    //   648: invokevirtual 635	java/io/StringWriter:toString	()Ljava/lang/String;
    //   651: aload_1
    //   652: invokespecial 638	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   655: putfield 518	bol:p	Ljava/lang/Exception;
    //   658: aload_0
    //   659: getfield 91	bol:c	Lbor;
    //   662: aload_0
    //   663: invokevirtual 493	bor:b	(Lbol;)V
    //   666: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   669: ldc_w 495
    //   672: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   675: return
    //   676: astore_1
    //   677: aload_0
    //   678: aload_1
    //   679: putfield 518	bol:p	Ljava/lang/Exception;
    //   682: aload_0
    //   683: getfield 91	bol:c	Lbor;
    //   686: aload_0
    //   687: invokevirtual 493	bor:b	(Lbol;)V
    //   690: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   693: ldc_w 495
    //   696: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   699: return
    //   700: astore_1
    //   701: invokestatic 473	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   704: ldc_w 495
    //   707: invokevirtual 479	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   710: aload_1
    //   711: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	712	0	this	bol
    //   4	138	1	localObject1	Object
    //   157	20	1	localb	bos.b
    //   198	3	1	locala	bpb.a
    //   222	3	1	localIOException	java.io.IOException
    //   246	406	1	localOutOfMemoryError	OutOfMemoryError
    //   676	3	1	localException	Exception
    //   700	11	1	localObject2	Object
    //   32	616	2	localObject3	Object
    //   259	364	3	localObject4	Object
    //   341	297	4	localPrintWriter	java.io.PrintWriter
    // Exception table:
    //   from	to	target	type
    //   0	23	157	bos$b
    //   23	88	157	bos$b
    //   88	111	157	bos$b
    //   121	129	157	bos$b
    //   132	154	157	bos$b
    //   0	23	198	bpb$a
    //   23	88	198	bpb$a
    //   88	111	198	bpb$a
    //   121	129	198	bpb$a
    //   132	154	198	bpb$a
    //   0	23	222	java/io/IOException
    //   23	88	222	java/io/IOException
    //   88	111	222	java/io/IOException
    //   121	129	222	java/io/IOException
    //   132	154	222	java/io/IOException
    //   0	23	246	java/lang/OutOfMemoryError
    //   23	88	246	java/lang/OutOfMemoryError
    //   88	111	246	java/lang/OutOfMemoryError
    //   121	129	246	java/lang/OutOfMemoryError
    //   132	154	246	java/lang/OutOfMemoryError
    //   0	23	676	java/lang/Exception
    //   23	88	676	java/lang/Exception
    //   88	111	676	java/lang/Exception
    //   121	129	676	java/lang/Exception
    //   132	154	676	java/lang/Exception
    //   0	23	700	finally
    //   23	88	700	finally
    //   88	111	700	finally
    //   121	129	700	finally
    //   132	154	700	finally
    //   158	175	700	finally
    //   175	180	700	finally
    //   180	188	700	finally
    //   199	212	700	finally
    //   223	236	700	finally
    //   247	666	700	finally
    //   677	690	700	finally
  }
}

/* Location:
 * Qualified Name:     bol
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */