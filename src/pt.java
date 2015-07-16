import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Deprecated
public final class pt
{
  private static final int DEFAULT_RESPONSE_SIZE = 1024;
  public static final int DELETE = 4;
  public static final int GET = 1;
  private static final String LANGUAGE_HEADER_NAME = "Accept-Language";
  private static final String LOCALE_HEADER_NAME = "Accept-Locale";
  public static final int MAX_DISCOVER_SHARE_BLOB_SIZE = 5242880;
  public static final int MAX_UPLOAD_BLOB_SIZE = 2621440;
  public static final int NO_RESPONSE_STATUSCODE = -1;
  public static final int POST = 2;
  public static final int PUT = 3;
  private static final String TAG = "SnapchatServer";
  private static final String USER_AGENT_HEADER_NAME = "User-Agent";
  private static final String UUID_HEADER_NAME = "X-Snapchat-UUID";
  
  /* Error */
  public static Bundle a(String paramString, Bundle paramBundle, pt.a parama)
  {
    // Byte code:
    //   0: invokestatic 56	com/snapchat/android/util/debug/ReleaseManager:f	()Z
    //   3: ifeq +696 -> 699
    //   6: aload_0
    //   7: invokestatic 62	bal:b	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 24
    //   12: invokestatic 67	bgt:a	()Lbgt;
    //   15: aload 24
    //   17: invokevirtual 69	bgt:a	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 25
    //   22: aload 25
    //   24: aload 24
    //   26: invokevirtual 75	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: istore 7
    //   31: new 77	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 81	java/lang/StringBuilder:<init>	()V
    //   38: aload 25
    //   40: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_0
    //   44: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 95	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   53: astore 29
    //   55: new 97	android/os/Bundle
    //   58: dup
    //   59: invokespecial 98	android/os/Bundle:<init>	()V
    //   62: astore 28
    //   64: new 100	tz
    //   67: dup
    //   68: invokespecial 101	tz:<init>	()V
    //   71: astore 31
    //   73: invokestatic 107	android/os/SystemClock:elapsedRealtime	()J
    //   76: lstore 20
    //   78: invokestatic 112	java/lang/System:currentTimeMillis	()J
    //   81: lstore 22
    //   83: lload 22
    //   85: invokestatic 116	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   88: astore 24
    //   90: aload 24
    //   92: aload_0
    //   93: invokestatic 119	pt:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   96: astore 25
    //   98: aload_1
    //   99: ldc 121
    //   101: aload 24
    //   103: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload_1
    //   107: ldc 127
    //   109: aload 25
    //   111: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: invokestatic 131	bgp:b	()Ljava/lang/String;
    //   117: astore 30
    //   119: iconst_m1
    //   120: istore_3
    //   121: invokestatic 136	mp:a	()Lmp;
    //   124: astore 32
    //   126: iconst_1
    //   127: istore 4
    //   129: aconst_null
    //   130: astore 25
    //   132: iload 4
    //   134: ifeq +1585 -> 1719
    //   137: aload 25
    //   139: astore 26
    //   141: aload 25
    //   143: astore 27
    //   145: new 138	bnb$a
    //   148: dup
    //   149: invokespecial 139	bnb$a:<init>	()V
    //   152: astore 33
    //   154: aload 25
    //   156: astore 26
    //   158: aload 25
    //   160: astore 27
    //   162: aload 29
    //   164: invokevirtual 140	android/net/Uri:toString	()Ljava/lang/String;
    //   167: astore 34
    //   169: aload 25
    //   171: astore 26
    //   173: aload 25
    //   175: astore 27
    //   177: aload_1
    //   178: ldc -114
    //   180: invokevirtual 146	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   183: ifne +37 -> 220
    //   186: aload 25
    //   188: astore 26
    //   190: aload 25
    //   192: astore 27
    //   194: aload_1
    //   195: ldc -108
    //   197: invokevirtual 146	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   200: ifne +20 -> 220
    //   203: aload 25
    //   205: astore 26
    //   207: aload 25
    //   209: astore 27
    //   211: aload_1
    //   212: ldc -106
    //   214: invokevirtual 146	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   217: ifeq +496 -> 713
    //   220: aload 25
    //   222: astore 26
    //   224: aload 25
    //   226: astore 27
    //   228: aload_1
    //   229: invokestatic 153	pt:a	(Landroid/os/Bundle;)Lbnc;
    //   232: astore 24
    //   234: aload 25
    //   236: astore 26
    //   238: aload 25
    //   240: astore 27
    //   242: aload 33
    //   244: ldc -102
    //   246: aload 24
    //   248: invokevirtual 157	bnb$a:a	(Ljava/lang/String;Lbnc;)Lbnb$a;
    //   251: pop
    //   252: aload 25
    //   254: astore 26
    //   256: aload 25
    //   258: astore 27
    //   260: new 159	bmv$a
    //   263: dup
    //   264: invokespecial 160	bmv$a:<init>	()V
    //   267: astore 35
    //   269: aload 25
    //   271: astore 24
    //   273: aload 25
    //   275: astore 26
    //   277: aload 25
    //   279: astore 27
    //   281: invokestatic 163	com/snapchat/android/util/debug/ReleaseManager:h	()Z
    //   284: ifeq +34 -> 318
    //   287: aload 25
    //   289: astore 26
    //   291: aload 25
    //   293: astore 27
    //   295: invokestatic 168	bgs:c	()Ljava/lang/String;
    //   298: astore 24
    //   300: aload 24
    //   302: astore 26
    //   304: aload 24
    //   306: astore 27
    //   308: aload 35
    //   310: ldc 43
    //   312: aload 24
    //   314: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   317: pop
    //   318: iload_3
    //   319: istore 4
    //   321: iload_3
    //   322: istore 5
    //   324: aload 35
    //   326: ldc 40
    //   328: invokestatic 173	bgs:a	()Ljava/lang/String;
    //   331: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   334: pop
    //   335: iload_3
    //   336: istore 4
    //   338: iload_3
    //   339: istore 5
    //   341: aload 35
    //   343: ldc 21
    //   345: invokestatic 174	bgs:b	()Ljava/lang/String;
    //   348: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   351: pop
    //   352: iload_3
    //   353: istore 4
    //   355: iload_3
    //   356: istore 5
    //   358: aload 35
    //   360: ldc 24
    //   362: invokestatic 180	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   365: invokevirtual 181	java/util/Locale:toString	()Ljava/lang/String;
    //   368: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   371: pop
    //   372: aload 34
    //   374: ifnull +76 -> 450
    //   377: iload 7
    //   379: ifeq +71 -> 450
    //   382: iload_3
    //   383: istore 4
    //   385: iload_3
    //   386: istore 5
    //   388: aload 35
    //   390: ldc -73
    //   392: new 77	java/lang/StringBuilder
    //   395: dup
    //   396: ldc -71
    //   398: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   401: aload 32
    //   403: invokevirtual 191	mp:d	()Ljava/lang/String;
    //   406: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   409: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   412: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   415: pop
    //   416: iload_3
    //   417: istore 4
    //   419: iload_3
    //   420: istore 5
    //   422: aload 32
    //   424: invokevirtual 192	mp:b	()Ljava/lang/String;
    //   427: astore 25
    //   429: aload 25
    //   431: ifnull +19 -> 450
    //   434: iload_3
    //   435: istore 4
    //   437: iload_3
    //   438: istore 5
    //   440: aload 35
    //   442: ldc -62
    //   444: aload 25
    //   446: invokevirtual 171	bmv$a:a	(Ljava/lang/String;Ljava/lang/String;)Lbmv$a;
    //   449: pop
    //   450: iload_3
    //   451: istore 4
    //   453: iload_3
    //   454: istore 5
    //   456: aload 33
    //   458: aload 35
    //   460: invokevirtual 197	bmv$a:a	()Lbmv;
    //   463: invokevirtual 200	bnb$a:a	(Lbmv;)Lbnb$a;
    //   466: pop
    //   467: iload_3
    //   468: istore 4
    //   470: iload_3
    //   471: istore 5
    //   473: invokestatic 205	uy:a	()Luy;
    //   476: aload 33
    //   478: aload 34
    //   480: ldc -102
    //   482: new 207	uz
    //   485: dup
    //   486: invokespecial 208	uz:<init>	()V
    //   489: invokevirtual 211	uy:a	(Lbnb$a;Ljava/lang/String;Ljava/lang/String;Lug;)Luy$a;
    //   492: astore 25
    //   494: iload_3
    //   495: istore 4
    //   497: iload_3
    //   498: istore 5
    //   500: aload 25
    //   502: getfield 217	uy$a:mRequest	Lbnb;
    //   505: astore 33
    //   507: iload_3
    //   508: istore 4
    //   510: iload_3
    //   511: istore 5
    //   513: aload 25
    //   515: getfield 220	uy$a:mUrl	Ljava/lang/String;
    //   518: astore 34
    //   520: iload_3
    //   521: istore 4
    //   523: iload_3
    //   524: istore 5
    //   526: aload 25
    //   528: getfield 224	uy$a:mResponse	Lbnd;
    //   531: astore 36
    //   533: iload_3
    //   534: istore 4
    //   536: iload_3
    //   537: istore 5
    //   539: aload 25
    //   541: getfield 227	uy$a:mMigrationResult	Ljava/lang/String;
    //   544: astore 35
    //   546: iload_3
    //   547: istore 4
    //   549: iload_3
    //   550: istore 5
    //   552: aload 25
    //   554: getfield 231	uy$a:mException	Ljava/io/IOException;
    //   557: astore 25
    //   559: aload 25
    //   561: ifnull +175 -> 736
    //   564: iload_3
    //   565: istore 4
    //   567: iload_3
    //   568: istore 5
    //   570: aload 28
    //   572: ldc -23
    //   574: aload 35
    //   576: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   579: iload_3
    //   580: istore 4
    //   582: iload_3
    //   583: istore 5
    //   585: aload 25
    //   587: athrow
    //   588: astore_1
    //   589: iload 4
    //   591: istore_3
    //   592: aload 24
    //   594: astore_2
    //   595: new 77	java/lang/StringBuilder
    //   598: dup
    //   599: ldc -21
    //   601: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   604: aload 29
    //   606: invokevirtual 140	android/net/Uri:toString	()Ljava/lang/String;
    //   609: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   612: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   615: aload_2
    //   616: invokestatic 237	pt:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   619: pop
    //   620: invokestatic 107	android/os/SystemClock:elapsedRealtime	()J
    //   623: lstore 8
    //   625: invokestatic 242	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   628: lload 22
    //   630: ldc -102
    //   632: aload_0
    //   633: lload 8
    //   635: lload 20
    //   637: lsub
    //   638: aload_1
    //   639: invokevirtual 243	java/lang/Exception:toString	()Ljava/lang/String;
    //   642: invokestatic 248	abp:a	(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   645: iload_3
    //   646: istore 4
    //   648: aload_1
    //   649: instanceof 46
    //   652: ifeq +12 -> 664
    //   655: invokestatic 253	bgr:a	()Lbgr;
    //   658: invokevirtual 255	bgr:b	()V
    //   661: iload_3
    //   662: istore 4
    //   664: aload 28
    //   666: ldc_w 257
    //   669: invokevirtual 260	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   672: invokestatic 261	pt:a	(Ljava/lang/String;)Ljava/lang/String;
    //   675: pop
    //   676: aload 28
    //   678: ldc_w 263
    //   681: iload 4
    //   683: invokevirtual 267	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   686: aload 28
    //   688: ldc_w 269
    //   691: aload 30
    //   693: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   696: aload 28
    //   698: areturn
    //   699: invokestatic 253	bgr:a	()Lbgr;
    //   702: getfield 273	bgr:mProxyEndpoint	Lajz;
    //   705: getfield 278	ajz:mBaseUrl	Ljava/lang/String;
    //   708: astore 24
    //   710: goto -698 -> 12
    //   713: aload 25
    //   715: astore 26
    //   717: aload 25
    //   719: astore 27
    //   721: getstatic 284	ub:URL_ENCODED_FORM_MEDIA_TYPE	Lbmx;
    //   724: aload_1
    //   725: invokestatic 287	pt:b	(Landroid/os/Bundle;)Ljava/lang/String;
    //   728: invokestatic 292	bnc:a	(Lbmx;Ljava/lang/String;)Lbnc;
    //   731: astore 24
    //   733: goto -499 -> 234
    //   736: iload_3
    //   737: istore 4
    //   739: iload_3
    //   740: istore 5
    //   742: aload 36
    //   744: getfield 296	bnd:c	I
    //   747: istore_3
    //   748: iload_3
    //   749: sipush 499
    //   752: if_icmpne +64 -> 816
    //   755: aload 34
    //   757: ifnull +59 -> 816
    //   760: iload 7
    //   762: ifeq +54 -> 816
    //   765: iload_3
    //   766: istore 4
    //   768: iload_3
    //   769: istore 5
    //   771: aload 32
    //   773: invokevirtual 298	mp:c	()V
    //   776: iload_3
    //   777: istore 4
    //   779: iload_3
    //   780: istore 5
    //   782: new 77	java/lang/StringBuilder
    //   785: dup
    //   786: ldc_w 300
    //   789: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   792: aload 34
    //   794: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   797: invokevirtual 89	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   800: aload 24
    //   802: invokestatic 237	pt:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   805: pop
    //   806: iconst_1
    //   807: istore 4
    //   809: aload 24
    //   811: astore 25
    //   813: goto -681 -> 132
    //   816: aconst_null
    //   817: astore 27
    //   819: aconst_null
    //   820: astore 25
    //   822: iload_3
    //   823: istore 4
    //   825: aload 27
    //   827: astore 26
    //   829: iload_3
    //   830: istore 5
    //   832: new 302	ux
    //   835: dup
    //   836: aload 36
    //   838: getfield 305	bnd:f	Lbmv;
    //   841: invokespecial 308	ux:<init>	(Lbmv;)V
    //   844: astore 37
    //   846: iload_3
    //   847: istore 4
    //   849: aload 27
    //   851: astore 26
    //   853: iload_3
    //   854: istore 5
    //   856: aload 37
    //   858: ldc_w 310
    //   861: invokevirtual 313	ux:a	(Ljava/lang/String;)Ljava/util/List;
    //   864: invokeinterface 319 1 0
    //   869: astore 38
    //   871: iload_3
    //   872: istore 4
    //   874: aload 27
    //   876: astore 26
    //   878: iload_3
    //   879: istore 5
    //   881: aload 38
    //   883: invokeinterface 324 1 0
    //   888: ifeq +48 -> 936
    //   891: iload_3
    //   892: istore 4
    //   894: aload 27
    //   896: astore 26
    //   898: iload_3
    //   899: istore 5
    //   901: aload 38
    //   903: invokeinterface 328 1 0
    //   908: checkcast 71	java/lang/String
    //   911: ldc_w 330
    //   914: invokestatic 335	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   917: ifeq -46 -> 871
    //   920: iload_3
    //   921: istore 4
    //   923: aload 27
    //   925: astore 26
    //   927: iload_3
    //   928: istore 5
    //   930: invokestatic 253	bgr:a	()Lbgr;
    //   933: invokevirtual 255	bgr:b	()V
    //   936: iload_3
    //   937: istore 4
    //   939: aload 27
    //   941: astore 26
    //   943: iload_3
    //   944: istore 5
    //   946: aload 37
    //   948: ldc_w 337
    //   951: invokevirtual 313	ux:a	(Ljava/lang/String;)Ljava/util/List;
    //   954: astore 38
    //   956: iload_3
    //   957: istore 4
    //   959: aload 27
    //   961: astore 26
    //   963: iload_3
    //   964: istore 5
    //   966: aload 38
    //   968: invokeinterface 340 1 0
    //   973: ifne +26 -> 999
    //   976: iload_3
    //   977: istore 4
    //   979: aload 27
    //   981: astore 26
    //   983: iload_3
    //   984: istore 5
    //   986: aload 38
    //   988: iconst_0
    //   989: invokeinterface 344 2 0
    //   994: checkcast 71	java/lang/String
    //   997: astore 25
    //   999: iload_3
    //   1000: istore 4
    //   1002: aload 25
    //   1004: astore 26
    //   1006: iload_3
    //   1007: istore 5
    //   1009: aload 37
    //   1011: ldc_w 346
    //   1014: invokevirtual 313	ux:a	(Ljava/lang/String;)Ljava/util/List;
    //   1017: invokeinterface 340 1 0
    //   1022: istore 6
    //   1024: iload 6
    //   1026: ifne +751 -> 1777
    //   1029: iconst_1
    //   1030: istore 6
    //   1032: iload_3
    //   1033: istore 4
    //   1035: iload_3
    //   1036: istore 5
    //   1038: aload 36
    //   1040: getfield 348	bnd:d	Ljava/lang/String;
    //   1043: astore 27
    //   1045: iload_3
    //   1046: istore 4
    //   1048: iload_3
    //   1049: istore 5
    //   1051: new 6	pt$1
    //   1054: dup
    //   1055: aload 36
    //   1057: invokespecial 351	pt$1:<init>	(Lbnd;)V
    //   1060: astore 26
    //   1062: iload_3
    //   1063: istore 4
    //   1065: iload_3
    //   1066: istore 5
    //   1068: new 353	vf
    //   1071: dup
    //   1072: invokespecial 354	vf:<init>	()V
    //   1075: astore 37
    //   1077: iload_3
    //   1078: istore 4
    //   1080: iload_3
    //   1081: istore 5
    //   1083: new 356	uv
    //   1086: dup
    //   1087: aload 36
    //   1089: getfield 360	bnd:g	Lbne;
    //   1092: iconst_2
    //   1093: anewarray 362	vg
    //   1096: dup
    //   1097: iconst_0
    //   1098: aload 26
    //   1100: aastore
    //   1101: dup
    //   1102: iconst_1
    //   1103: aload 37
    //   1105: aastore
    //   1106: invokespecial 365	uv:<init>	(Lbne;[Lvg;)V
    //   1109: astore 38
    //   1111: iload_3
    //   1112: istore 4
    //   1114: iload_3
    //   1115: istore 5
    //   1117: aload 36
    //   1119: getfield 368	bnd:b	Lbna;
    //   1122: ifnonnull +532 -> 1654
    //   1125: ldc_w 370
    //   1128: astore 26
    //   1130: lconst_0
    //   1131: lstore 8
    //   1133: iload_3
    //   1134: istore 4
    //   1136: iload_3
    //   1137: istore 5
    //   1139: aload 33
    //   1141: getfield 375	bnb:d	Lbnc;
    //   1144: ifnull +627 -> 1771
    //   1147: iload_3
    //   1148: istore 4
    //   1150: iload_3
    //   1151: istore 5
    //   1153: aload 33
    //   1155: getfield 375	bnb:d	Lbnc;
    //   1158: invokevirtual 377	bnc:b	()J
    //   1161: lstore 16
    //   1163: aload_2
    //   1164: ifnonnull +509 -> 1673
    //   1167: iload_3
    //   1168: istore 4
    //   1170: iload_3
    //   1171: istore 5
    //   1173: new 379	bgl
    //   1176: dup
    //   1177: sipush 1024
    //   1180: new 381	bgl$b
    //   1183: dup
    //   1184: invokespecial 382	bgl$b:<init>	()V
    //   1187: invokespecial 385	bgl:<init>	(ILbgl$a;)V
    //   1190: astore 36
    //   1192: iload_3
    //   1193: istore 4
    //   1195: iload_3
    //   1196: istore 5
    //   1198: aload 36
    //   1200: aload 38
    //   1202: invokevirtual 390	bne:c	()Ljava/io/InputStream;
    //   1205: invokevirtual 393	bgl:a	(Ljava/io/InputStream;)I
    //   1208: i2l
    //   1209: lstore 10
    //   1211: iload_3
    //   1212: istore 4
    //   1214: iload_3
    //   1215: istore 5
    //   1217: invokestatic 107	android/os/SystemClock:elapsedRealtime	()J
    //   1220: lload 20
    //   1222: lsub
    //   1223: lstore 8
    //   1225: iload_3
    //   1226: istore 4
    //   1228: iload_3
    //   1229: istore 5
    //   1231: aload 28
    //   1233: ldc_w 257
    //   1236: new 71	java/lang/String
    //   1239: dup
    //   1240: aload 36
    //   1242: getfield 397	bgl:mBuffer	[B
    //   1245: iconst_0
    //   1246: aload 36
    //   1248: getfield 400	bgl:mSize	I
    //   1251: ldc_w 402
    //   1254: invokestatic 408	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   1257: invokespecial 411	java/lang/String:<init>	([BIILjava/nio/charset/Charset;)V
    //   1260: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1263: iload_3
    //   1264: istore 4
    //   1266: iload_3
    //   1267: istore 5
    //   1269: aload 37
    //   1271: getfield 415	vf:mIsReceived	Z
    //   1274: ifeq +509 -> 1783
    //   1277: iload_3
    //   1278: istore 4
    //   1280: iload_3
    //   1281: istore 5
    //   1283: aload 37
    //   1285: getfield 419	vf:mFirstByteReceivedElapsedRealtimeInMillis	J
    //   1288: lload 20
    //   1290: lsub
    //   1291: lstore 12
    //   1293: iload_3
    //   1294: istore 4
    //   1296: iload_3
    //   1297: istore 5
    //   1299: aload 37
    //   1301: getfield 422	vf:mFirstByteSize	J
    //   1304: lstore 18
    //   1306: lload 10
    //   1308: lstore 14
    //   1310: lload 8
    //   1312: lstore 10
    //   1314: lload 18
    //   1316: lstore 8
    //   1318: iload_3
    //   1319: istore 4
    //   1321: iload_3
    //   1322: istore 5
    //   1324: aload 28
    //   1326: ldc_w 424
    //   1329: iload 6
    //   1331: invokevirtual 428	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   1334: iload_3
    //   1335: istore 4
    //   1337: iload_3
    //   1338: istore 5
    //   1340: aload 28
    //   1342: ldc_w 430
    //   1345: lload 12
    //   1347: invokevirtual 434	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1350: iload_3
    //   1351: istore 4
    //   1353: iload_3
    //   1354: istore 5
    //   1356: aload 28
    //   1358: ldc_w 436
    //   1361: lload 10
    //   1363: invokevirtual 434	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1366: iload_3
    //   1367: istore 4
    //   1369: iload_3
    //   1370: istore 5
    //   1372: aload 28
    //   1374: ldc_w 438
    //   1377: lload 16
    //   1379: invokevirtual 434	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1382: iload_3
    //   1383: istore 4
    //   1385: iload_3
    //   1386: istore 5
    //   1388: aload 28
    //   1390: ldc_w 440
    //   1393: lload 8
    //   1395: invokevirtual 434	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1398: iload_3
    //   1399: istore 4
    //   1401: iload_3
    //   1402: istore 5
    //   1404: aload 28
    //   1406: ldc_w 442
    //   1409: lload 14
    //   1411: invokevirtual 434	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1414: iload_3
    //   1415: istore 4
    //   1417: iload_3
    //   1418: istore 5
    //   1420: aload 28
    //   1422: ldc_w 444
    //   1425: aload 26
    //   1427: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1430: iload_3
    //   1431: istore 4
    //   1433: iload_3
    //   1434: istore 5
    //   1436: aload 28
    //   1438: ldc_w 446
    //   1441: aload 33
    //   1443: invokevirtual 449	bnb:a	()Ljava/net/URL;
    //   1446: invokevirtual 454	java/net/URL:getHost	()Ljava/lang/String;
    //   1449: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1452: iload_3
    //   1453: istore 4
    //   1455: iload_3
    //   1456: istore 5
    //   1458: aload 28
    //   1460: ldc -23
    //   1462: aload 35
    //   1464: invokevirtual 125	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1467: iload_3
    //   1468: istore 4
    //   1470: iload_3
    //   1471: istore 5
    //   1473: aload 31
    //   1475: lload 14
    //   1477: lload 16
    //   1479: invokevirtual 457	tz:a	(JJ)V
    //   1482: iload_3
    //   1483: istore 4
    //   1485: iload_3
    //   1486: istore 5
    //   1488: aload 31
    //   1490: ldc -102
    //   1492: aload_0
    //   1493: aload 27
    //   1495: iload_3
    //   1496: lload 22
    //   1498: lload 10
    //   1500: invokevirtual 460	tz:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    //   1503: iload_3
    //   1504: istore 4
    //   1506: iload_3
    //   1507: istore 5
    //   1509: ldc_w 462
    //   1512: bipush 8
    //   1514: anewarray 4	java/lang/Object
    //   1517: dup
    //   1518: iconst_0
    //   1519: ldc -102
    //   1521: aastore
    //   1522: dup
    //   1523: iconst_1
    //   1524: aload 34
    //   1526: aastore
    //   1527: dup
    //   1528: iconst_2
    //   1529: lload 14
    //   1531: invokestatic 467	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1534: aastore
    //   1535: dup
    //   1536: iconst_3
    //   1537: iload_3
    //   1538: invokestatic 472	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1541: aastore
    //   1542: dup
    //   1543: iconst_4
    //   1544: aload 27
    //   1546: aastore
    //   1547: dup
    //   1548: iconst_5
    //   1549: lload 22
    //   1551: invokestatic 467	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1554: aastore
    //   1555: dup
    //   1556: bipush 6
    //   1558: lload 10
    //   1560: invokestatic 467	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1563: aastore
    //   1564: dup
    //   1565: bipush 7
    //   1567: aload 25
    //   1569: aastore
    //   1570: invokestatic 476	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1573: aload 24
    //   1575: invokestatic 237	pt:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1578: pop
    //   1579: iconst_0
    //   1580: istore 4
    //   1582: aload 24
    //   1584: astore 25
    //   1586: goto -1454 -> 132
    //   1589: astore 25
    //   1591: iload_3
    //   1592: istore 4
    //   1594: iload_3
    //   1595: istore 5
    //   1597: new 77	java/lang/StringBuilder
    //   1600: dup
    //   1601: ldc_w 478
    //   1604: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1607: aload 25
    //   1609: invokevirtual 481	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1612: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1615: ldc_w 483
    //   1618: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1621: aload 25
    //   1623: invokevirtual 487	java/lang/Exception:getCause	()Ljava/lang/Throwable;
    //   1626: invokevirtual 490	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1629: ldc_w 483
    //   1632: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1635: aload 25
    //   1637: invokevirtual 493	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   1640: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1643: pop
    //   1644: aload 26
    //   1646: astore 25
    //   1648: iconst_0
    //   1649: istore 6
    //   1651: goto -619 -> 1032
    //   1654: iload_3
    //   1655: istore 4
    //   1657: iload_3
    //   1658: istore 5
    //   1660: aload 36
    //   1662: getfield 368	bnd:b	Lbna;
    //   1665: invokevirtual 496	bna:toString	()Ljava/lang/String;
    //   1668: astore 26
    //   1670: goto -540 -> 1130
    //   1673: iload_3
    //   1674: istore 4
    //   1676: iload_3
    //   1677: istore 5
    //   1679: aload_2
    //   1680: aload 36
    //   1682: getfield 305	bnd:f	Lbmv;
    //   1685: aload 38
    //   1687: invokeinterface 499 3 0
    //   1692: iload_3
    //   1693: istore 4
    //   1695: iload_3
    //   1696: istore 5
    //   1698: invokestatic 107	android/os/SystemClock:elapsedRealtime	()J
    //   1701: lstore 10
    //   1703: lload 10
    //   1705: lload 20
    //   1707: lsub
    //   1708: lstore 10
    //   1710: lconst_0
    //   1711: lstore 14
    //   1713: lconst_0
    //   1714: lstore 12
    //   1716: goto -398 -> 1318
    //   1719: iload_3
    //   1720: istore 4
    //   1722: goto -1058 -> 664
    //   1725: astore_0
    //   1726: new 77	java/lang/StringBuilder
    //   1729: dup
    //   1730: ldc_w 501
    //   1733: invokespecial 188	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1736: aload_0
    //   1737: invokevirtual 481	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1740: invokevirtual 85	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1743: pop
    //   1744: goto -1068 -> 676
    //   1747: astore_1
    //   1748: aload 26
    //   1750: astore_2
    //   1751: goto -1156 -> 595
    //   1754: astore_1
    //   1755: aload 27
    //   1757: astore_2
    //   1758: goto -1163 -> 595
    //   1761: astore_1
    //   1762: iload 5
    //   1764: istore_3
    //   1765: aload 24
    //   1767: astore_2
    //   1768: goto -1173 -> 595
    //   1771: lconst_0
    //   1772: lstore 16
    //   1774: goto -611 -> 1163
    //   1777: iconst_0
    //   1778: istore 6
    //   1780: goto -748 -> 1032
    //   1783: lload 10
    //   1785: lstore 18
    //   1787: lload 8
    //   1789: lstore 12
    //   1791: lload 10
    //   1793: lstore 14
    //   1795: lload 8
    //   1797: lstore 10
    //   1799: lload 18
    //   1801: lstore 8
    //   1803: goto -485 -> 1318
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1806	0	paramString	String
    //   0	1806	1	paramBundle	Bundle
    //   0	1806	2	parama	pt.a
    //   120	1645	3	i	int
    //   127	1594	4	j	int
    //   322	1441	5	k	int
    //   1022	757	6	bool1	boolean
    //   29	732	7	bool2	boolean
    //   623	1179	8	l1	long
    //   1209	589	10	l2	long
    //   1291	499	12	l3	long
    //   1308	486	14	l4	long
    //   1161	612	16	l5	long
    //   1304	496	18	l6	long
    //   76	1630	20	l7	long
    //   81	1469	22	l8	long
    //   10	1756	24	localObject1	Object
    //   20	1565	25	localObject2	Object
    //   1589	47	25	localException	Exception
    //   1646	1	25	localObject3	Object
    //   139	1610	26	localObject4	Object
    //   143	1613	27	localObject5	Object
    //   62	1397	28	localBundle	Bundle
    //   53	552	29	localUri	android.net.Uri
    //   117	575	30	str1	String
    //   71	1418	31	localtz	tz
    //   124	648	32	localmp	mp
    //   152	1290	33	localObject6	Object
    //   167	1358	34	str2	String
    //   267	1196	35	localObject7	Object
    //   531	1150	36	localObject8	Object
    //   844	456	37	localObject9	Object
    //   869	817	38	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   324	335	588	java/io/IOException
    //   341	352	588	java/io/IOException
    //   358	372	588	java/io/IOException
    //   388	416	588	java/io/IOException
    //   422	429	588	java/io/IOException
    //   440	450	588	java/io/IOException
    //   456	467	588	java/io/IOException
    //   473	494	588	java/io/IOException
    //   500	507	588	java/io/IOException
    //   513	520	588	java/io/IOException
    //   526	533	588	java/io/IOException
    //   539	546	588	java/io/IOException
    //   552	559	588	java/io/IOException
    //   570	579	588	java/io/IOException
    //   585	588	588	java/io/IOException
    //   742	748	588	java/io/IOException
    //   771	776	588	java/io/IOException
    //   782	806	588	java/io/IOException
    //   832	846	588	java/io/IOException
    //   856	871	588	java/io/IOException
    //   881	891	588	java/io/IOException
    //   901	920	588	java/io/IOException
    //   930	936	588	java/io/IOException
    //   946	956	588	java/io/IOException
    //   966	976	588	java/io/IOException
    //   986	999	588	java/io/IOException
    //   1009	1024	588	java/io/IOException
    //   1038	1045	588	java/io/IOException
    //   1051	1062	588	java/io/IOException
    //   1068	1077	588	java/io/IOException
    //   1083	1111	588	java/io/IOException
    //   1117	1125	588	java/io/IOException
    //   1139	1147	588	java/io/IOException
    //   1153	1163	588	java/io/IOException
    //   1173	1192	588	java/io/IOException
    //   1198	1211	588	java/io/IOException
    //   1217	1225	588	java/io/IOException
    //   1231	1263	588	java/io/IOException
    //   1269	1277	588	java/io/IOException
    //   1283	1293	588	java/io/IOException
    //   1299	1306	588	java/io/IOException
    //   1324	1334	588	java/io/IOException
    //   1340	1350	588	java/io/IOException
    //   1356	1366	588	java/io/IOException
    //   1372	1382	588	java/io/IOException
    //   1388	1398	588	java/io/IOException
    //   1404	1414	588	java/io/IOException
    //   1420	1430	588	java/io/IOException
    //   1436	1452	588	java/io/IOException
    //   1458	1467	588	java/io/IOException
    //   1473	1482	588	java/io/IOException
    //   1488	1503	588	java/io/IOException
    //   1509	1579	588	java/io/IOException
    //   1597	1644	588	java/io/IOException
    //   1660	1670	588	java/io/IOException
    //   1679	1692	588	java/io/IOException
    //   1698	1703	588	java/io/IOException
    //   832	846	1589	java/lang/Exception
    //   856	871	1589	java/lang/Exception
    //   881	891	1589	java/lang/Exception
    //   901	920	1589	java/lang/Exception
    //   930	936	1589	java/lang/Exception
    //   946	956	1589	java/lang/Exception
    //   966	976	1589	java/lang/Exception
    //   986	999	1589	java/lang/Exception
    //   1009	1024	1589	java/lang/Exception
    //   664	676	1725	java/lang/Exception
    //   145	154	1747	java/io/IOException
    //   162	169	1747	java/io/IOException
    //   177	186	1747	java/io/IOException
    //   194	203	1747	java/io/IOException
    //   211	220	1747	java/io/IOException
    //   228	234	1747	java/io/IOException
    //   242	252	1747	java/io/IOException
    //   260	269	1747	java/io/IOException
    //   281	287	1747	java/io/IOException
    //   295	300	1747	java/io/IOException
    //   308	318	1747	java/io/IOException
    //   721	733	1747	java/io/IOException
    //   145	154	1754	java/lang/IllegalArgumentException
    //   162	169	1754	java/lang/IllegalArgumentException
    //   177	186	1754	java/lang/IllegalArgumentException
    //   194	203	1754	java/lang/IllegalArgumentException
    //   211	220	1754	java/lang/IllegalArgumentException
    //   228	234	1754	java/lang/IllegalArgumentException
    //   242	252	1754	java/lang/IllegalArgumentException
    //   260	269	1754	java/lang/IllegalArgumentException
    //   281	287	1754	java/lang/IllegalArgumentException
    //   295	300	1754	java/lang/IllegalArgumentException
    //   308	318	1754	java/lang/IllegalArgumentException
    //   721	733	1754	java/lang/IllegalArgumentException
    //   324	335	1761	java/lang/IllegalArgumentException
    //   341	352	1761	java/lang/IllegalArgumentException
    //   358	372	1761	java/lang/IllegalArgumentException
    //   388	416	1761	java/lang/IllegalArgumentException
    //   422	429	1761	java/lang/IllegalArgumentException
    //   440	450	1761	java/lang/IllegalArgumentException
    //   456	467	1761	java/lang/IllegalArgumentException
    //   473	494	1761	java/lang/IllegalArgumentException
    //   500	507	1761	java/lang/IllegalArgumentException
    //   513	520	1761	java/lang/IllegalArgumentException
    //   526	533	1761	java/lang/IllegalArgumentException
    //   539	546	1761	java/lang/IllegalArgumentException
    //   552	559	1761	java/lang/IllegalArgumentException
    //   570	579	1761	java/lang/IllegalArgumentException
    //   585	588	1761	java/lang/IllegalArgumentException
    //   742	748	1761	java/lang/IllegalArgumentException
    //   771	776	1761	java/lang/IllegalArgumentException
    //   782	806	1761	java/lang/IllegalArgumentException
    //   832	846	1761	java/lang/IllegalArgumentException
    //   856	871	1761	java/lang/IllegalArgumentException
    //   881	891	1761	java/lang/IllegalArgumentException
    //   901	920	1761	java/lang/IllegalArgumentException
    //   930	936	1761	java/lang/IllegalArgumentException
    //   946	956	1761	java/lang/IllegalArgumentException
    //   966	976	1761	java/lang/IllegalArgumentException
    //   986	999	1761	java/lang/IllegalArgumentException
    //   1009	1024	1761	java/lang/IllegalArgumentException
    //   1038	1045	1761	java/lang/IllegalArgumentException
    //   1051	1062	1761	java/lang/IllegalArgumentException
    //   1068	1077	1761	java/lang/IllegalArgumentException
    //   1083	1111	1761	java/lang/IllegalArgumentException
    //   1117	1125	1761	java/lang/IllegalArgumentException
    //   1139	1147	1761	java/lang/IllegalArgumentException
    //   1153	1163	1761	java/lang/IllegalArgumentException
    //   1173	1192	1761	java/lang/IllegalArgumentException
    //   1198	1211	1761	java/lang/IllegalArgumentException
    //   1217	1225	1761	java/lang/IllegalArgumentException
    //   1231	1263	1761	java/lang/IllegalArgumentException
    //   1269	1277	1761	java/lang/IllegalArgumentException
    //   1283	1293	1761	java/lang/IllegalArgumentException
    //   1299	1306	1761	java/lang/IllegalArgumentException
    //   1324	1334	1761	java/lang/IllegalArgumentException
    //   1340	1350	1761	java/lang/IllegalArgumentException
    //   1356	1366	1761	java/lang/IllegalArgumentException
    //   1372	1382	1761	java/lang/IllegalArgumentException
    //   1388	1398	1761	java/lang/IllegalArgumentException
    //   1404	1414	1761	java/lang/IllegalArgumentException
    //   1420	1430	1761	java/lang/IllegalArgumentException
    //   1436	1452	1761	java/lang/IllegalArgumentException
    //   1458	1467	1761	java/lang/IllegalArgumentException
    //   1473	1482	1761	java/lang/IllegalArgumentException
    //   1488	1503	1761	java/lang/IllegalArgumentException
    //   1509	1579	1761	java/lang/IllegalArgumentException
    //   1597	1644	1761	java/lang/IllegalArgumentException
    //   1660	1670	1761	java/lang/IllegalArgumentException
    //   1679	1692	1761	java/lang/IllegalArgumentException
    //   1698	1703	1761	java/lang/IllegalArgumentException
  }
  
  private static bnc a(Bundle paramBundle)
  {
    bmy localbmy = new bmy().a(bmy.e);
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (localObject == null) {
        throw new IllegalArgumentException("createMultipartBody putting null value for key " + str);
      }
      if ((str.equals("thumbnail_data")) || (str.equals("raw_thumbnail_data")) || (str.equals("data"))) {
        localbmy.a(bmv.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"; filename=\"" + str + "\"" }), bnc.a(ub.BYTE_STREAM_MEDIA_TYPE, (byte[])localObject));
      } else {
        localbmy.a(bmv.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"" }), bnc.a(ub.STRING_MEDIA_TYPE, localObject.toString()));
      }
    }
    return localbmy.a();
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = (alp)aul.a().fromJson(paramString, alp.class);
      if (paramString == null) {
        return "ERROR: could not parse server response.";
      }
    }
    catch (JsonSyntaxException paramString)
    {
      for (;;)
      {
        paramString = null;
      }
      return paramString.toString();
    }
    catch (AssertionError paramString)
    {
      for (;;) {}
    }
  }
  
  @chd
  public static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.equals(paramString2, "/loq/gae_server_list")) || (TextUtils.equals(paramString2, "/loq/ping"))) {}
    for (int i = 1; i != 0; i = 0) {
      return pj.b(paramString1);
    }
    return pj.a(paramString1);
  }
  
  private static String b(Bundle paramBundle)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (localObject != null) {
        localHashMap.put(str, localObject.toString());
      }
    }
    return ub.a(localHashMap);
  }
  
  private static String b(String paramString1, String paramString2)
  {
    if (TextUtils.isEmpty(paramString2)) {
      return paramString1;
    }
    return paramString1 + "; UUID: " + paramString2;
  }
  
  public static abstract interface a
  {
    public abstract void a(bmv parambmv, bne parambne);
  }
}

/* Location:
 * Qualified Name:     pt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */