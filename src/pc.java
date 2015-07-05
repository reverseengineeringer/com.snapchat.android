import android.os.Bundle;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.snapchat.android.Timber;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@Deprecated
public final class pc
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
  public static Bundle a(String paramString, Bundle paramBundle, pc.a parama)
  {
    // Byte code:
    //   0: invokestatic 54	com/snapchat/android/util/debug/ReleaseManager:f	()Z
    //   3: ifeq +645 -> 648
    //   6: aload_0
    //   7: invokestatic 60	azm:b	(Ljava/lang/String;)Ljava/lang/String;
    //   10: astore 26
    //   12: invokestatic 65	bft:a	()Lbft;
    //   15: aload 26
    //   17: invokevirtual 67	bft:a	(Ljava/lang/String;)Ljava/lang/String;
    //   20: astore 27
    //   22: aload 27
    //   24: aload 26
    //   26: invokevirtual 73	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: istore 7
    //   31: new 75	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 79	java/lang/StringBuilder:<init>	()V
    //   38: aload 27
    //   40: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   43: aload_0
    //   44: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   50: invokestatic 93	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   53: astore 31
    //   55: new 95	android/os/Bundle
    //   58: dup
    //   59: invokespecial 96	android/os/Bundle:<init>	()V
    //   62: astore 30
    //   64: new 98	tj
    //   67: dup
    //   68: invokespecial 99	tj:<init>	()V
    //   71: astore 33
    //   73: invokestatic 105	android/os/SystemClock:elapsedRealtime	()J
    //   76: lstore 22
    //   78: invokestatic 110	java/lang/System:currentTimeMillis	()J
    //   81: lstore 24
    //   83: lload 24
    //   85: invokestatic 114	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   88: astore 26
    //   90: aload 26
    //   92: aload_0
    //   93: invokestatic 117	pc:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   96: astore 27
    //   98: aload_1
    //   99: ldc 119
    //   101: aload 26
    //   103: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   106: aload_1
    //   107: ldc 125
    //   109: aload 27
    //   111: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: invokestatic 129	bfp:b	()Ljava/lang/String;
    //   117: astore 32
    //   119: invokestatic 134	lx:a	()Llx;
    //   122: astore 34
    //   124: iconst_1
    //   125: istore 4
    //   127: iconst_m1
    //   128: istore_3
    //   129: aconst_null
    //   130: astore 27
    //   132: iload 4
    //   134: ifeq +1311 -> 1445
    //   137: aload 27
    //   139: astore 28
    //   141: aload 27
    //   143: astore 29
    //   145: new 136	bma$a
    //   148: dup
    //   149: invokespecial 137	bma$a:<init>	()V
    //   152: astore 35
    //   154: aload 27
    //   156: astore 28
    //   158: aload 27
    //   160: astore 29
    //   162: aload 31
    //   164: invokevirtual 138	android/net/Uri:toString	()Ljava/lang/String;
    //   167: astore 36
    //   169: aload 27
    //   171: astore 28
    //   173: aload 27
    //   175: astore 29
    //   177: aload_1
    //   178: ldc -116
    //   180: invokevirtual 144	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   183: ifne +37 -> 220
    //   186: aload 27
    //   188: astore 28
    //   190: aload 27
    //   192: astore 29
    //   194: aload_1
    //   195: ldc -110
    //   197: invokevirtual 144	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   200: ifne +20 -> 220
    //   203: aload 27
    //   205: astore 28
    //   207: aload 27
    //   209: astore 29
    //   211: aload_1
    //   212: ldc -108
    //   214: invokevirtual 144	android/os/Bundle:containsKey	(Ljava/lang/String;)Z
    //   217: ifeq +445 -> 662
    //   220: aload 27
    //   222: astore 28
    //   224: aload 27
    //   226: astore 29
    //   228: aload_1
    //   229: invokestatic 151	pc:a	(Landroid/os/Bundle;)Lbmb;
    //   232: astore 26
    //   234: aload 27
    //   236: astore 28
    //   238: aload 27
    //   240: astore 29
    //   242: aload 35
    //   244: ldc -104
    //   246: aload 26
    //   248: invokevirtual 155	bma$a:a	(Ljava/lang/String;Lbmb;)Lbma$a;
    //   251: pop
    //   252: aload 27
    //   254: astore 28
    //   256: aload 27
    //   258: astore 29
    //   260: new 157	blu$a
    //   263: dup
    //   264: invokespecial 158	blu$a:<init>	()V
    //   267: astore 37
    //   269: aload 27
    //   271: astore 26
    //   273: aload 27
    //   275: astore 28
    //   277: aload 27
    //   279: astore 29
    //   281: invokestatic 161	com/snapchat/android/util/debug/ReleaseManager:h	()Z
    //   284: ifeq +34 -> 318
    //   287: aload 27
    //   289: astore 28
    //   291: aload 27
    //   293: astore 29
    //   295: invokestatic 166	bfs:c	()Ljava/lang/String;
    //   298: astore 26
    //   300: aload 26
    //   302: astore 28
    //   304: aload 26
    //   306: astore 29
    //   308: aload 37
    //   310: ldc 41
    //   312: aload 26
    //   314: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   317: pop
    //   318: aload 37
    //   320: ldc 38
    //   322: invokestatic 171	bfs:a	()Ljava/lang/String;
    //   325: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   328: pop
    //   329: aload 37
    //   331: ldc 19
    //   333: invokestatic 172	bfs:b	()Ljava/lang/String;
    //   336: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   339: pop
    //   340: aload 37
    //   342: ldc 22
    //   344: invokestatic 178	java/util/Locale:getDefault	()Ljava/util/Locale;
    //   347: invokevirtual 179	java/util/Locale:toString	()Ljava/lang/String;
    //   350: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   353: pop
    //   354: aload 36
    //   356: ifnull +58 -> 414
    //   359: iload 7
    //   361: ifeq +53 -> 414
    //   364: aload 37
    //   366: ldc -75
    //   368: new 75	java/lang/StringBuilder
    //   371: dup
    //   372: ldc -73
    //   374: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   377: aload 34
    //   379: invokevirtual 189	lx:d	()Ljava/lang/String;
    //   382: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   385: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   388: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   391: pop
    //   392: aload 34
    //   394: invokevirtual 190	lx:b	()Ljava/lang/String;
    //   397: astore 27
    //   399: aload 27
    //   401: ifnull +13 -> 414
    //   404: aload 37
    //   406: ldc -64
    //   408: aload 27
    //   410: invokevirtual 169	blu$a:a	(Ljava/lang/String;Ljava/lang/String;)Lblu$a;
    //   413: pop
    //   414: aload 35
    //   416: aload 37
    //   418: invokevirtual 195	blu$a:a	()Lblu;
    //   421: invokevirtual 198	bma$a:a	(Lblu;)Lbma$a;
    //   424: pop
    //   425: invokestatic 203	uh:a	()Luh;
    //   428: aload 35
    //   430: aload 36
    //   432: ldc -104
    //   434: new 205	ui
    //   437: dup
    //   438: invokespecial 206	ui:<init>	()V
    //   441: ldc 35
    //   443: invokevirtual 209	uh:a	(Lbma$a;Ljava/lang/String;Ljava/lang/String;Ltq;Ljava/lang/String;)Luh$a;
    //   446: astore 27
    //   448: aload 27
    //   450: getfield 215	uh$a:mRequest	Lbma;
    //   453: astore 35
    //   455: aload 27
    //   457: getfield 218	uh$a:mUrl	Ljava/lang/String;
    //   460: astore 36
    //   462: aload 27
    //   464: getfield 222	uh$a:mResponse	Lbmc;
    //   467: astore 38
    //   469: aload 27
    //   471: getfield 225	uh$a:mMigrationResult	Ljava/lang/String;
    //   474: astore 37
    //   476: aload 27
    //   478: getfield 229	uh$a:mException	Ljava/io/IOException;
    //   481: astore 27
    //   483: aload 27
    //   485: ifnull +200 -> 685
    //   488: aload 30
    //   490: ldc -25
    //   492: aload 37
    //   494: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   497: aload 27
    //   499: athrow
    //   500: astore_1
    //   501: aload 26
    //   503: astore_2
    //   504: ldc 35
    //   506: new 75	java/lang/StringBuilder
    //   509: dup
    //   510: ldc -23
    //   512: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   515: aload 31
    //   517: invokevirtual 138	android/net/Uri:toString	()Ljava/lang/String;
    //   520: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   523: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   526: aload_2
    //   527: invokestatic 235	pc:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   530: iconst_0
    //   531: anewarray 4	java/lang/Object
    //   534: invokestatic 240	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   537: ldc 35
    //   539: aload_1
    //   540: invokestatic 243	com/snapchat/android/Timber:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   543: invokestatic 105	android/os/SystemClock:elapsedRealtime	()J
    //   546: lstore 8
    //   548: invokestatic 248	com/snapchat/android/SnapchatApplication:b	()Lcom/snapchat/android/SnapchatApplication;
    //   551: lload 24
    //   553: ldc -104
    //   555: aload_0
    //   556: lload 8
    //   558: lload 22
    //   560: lsub
    //   561: aload_1
    //   562: invokevirtual 249	java/lang/Exception:toString	()Ljava/lang/String;
    //   565: invokestatic 254	aaq:a	(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    //   568: iload_3
    //   569: istore 4
    //   571: aload_1
    //   572: instanceof 44
    //   575: ifeq +12 -> 587
    //   578: invokestatic 259	bfr:a	()Lbfr;
    //   581: invokevirtual 261	bfr:b	()V
    //   584: iload_3
    //   585: istore 4
    //   587: aload 30
    //   589: ldc_w 263
    //   592: invokevirtual 266	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   595: invokestatic 267	pc:a	(Ljava/lang/String;)Ljava/lang/String;
    //   598: astore_0
    //   599: ldc 35
    //   601: new 75	java/lang/StringBuilder
    //   604: dup
    //   605: ldc_w 269
    //   608: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   611: aload_0
    //   612: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   615: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   618: iconst_0
    //   619: anewarray 4	java/lang/Object
    //   622: invokestatic 271	com/snapchat/android/Timber:d	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   625: aload 30
    //   627: ldc_w 273
    //   630: iload 4
    //   632: invokevirtual 277	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   635: aload 30
    //   637: ldc_w 279
    //   640: aload 32
    //   642: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   645: aload 30
    //   647: areturn
    //   648: invokestatic 259	bfr:a	()Lbfr;
    //   651: getfield 283	bfr:mProxyEndpoint	Lajd;
    //   654: getfield 288	ajd:mBaseUrl	Ljava/lang/String;
    //   657: astore 26
    //   659: goto -647 -> 12
    //   662: aload 27
    //   664: astore 28
    //   666: aload 27
    //   668: astore 29
    //   670: getstatic 294	tl:URL_ENCODED_FORM_MEDIA_TYPE	Lblw;
    //   673: aload_1
    //   674: invokestatic 297	pc:b	(Landroid/os/Bundle;)Ljava/lang/String;
    //   677: invokestatic 302	bmb:a	(Lblw;Ljava/lang/String;)Lbmb;
    //   680: astore 26
    //   682: goto -448 -> 234
    //   685: aload 38
    //   687: getfield 306	bmc:c	I
    //   690: istore 4
    //   692: iload 4
    //   694: sipush 499
    //   697: if_icmpne +67 -> 764
    //   700: aload 36
    //   702: ifnull +62 -> 764
    //   705: iload 7
    //   707: ifeq +57 -> 764
    //   710: aload 34
    //   712: invokevirtual 308	lx:c	()V
    //   715: ldc 35
    //   717: new 75	java/lang/StringBuilder
    //   720: dup
    //   721: ldc_w 310
    //   724: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   727: aload 36
    //   729: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   732: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   735: aload 26
    //   737: invokestatic 235	pc:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   740: iconst_0
    //   741: anewarray 4	java/lang/Object
    //   744: invokestatic 312	com/snapchat/android/Timber:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   747: iconst_1
    //   748: istore 5
    //   750: iload 4
    //   752: istore_3
    //   753: iload 5
    //   755: istore 4
    //   757: aload 26
    //   759: astore 27
    //   761: goto -629 -> 132
    //   764: aconst_null
    //   765: astore 29
    //   767: aconst_null
    //   768: astore 27
    //   770: aload 29
    //   772: astore 28
    //   774: new 314	ug
    //   777: dup
    //   778: aload 38
    //   780: getfield 317	bmc:f	Lblu;
    //   783: invokespecial 320	ug:<init>	(Lblu;)V
    //   786: astore 39
    //   788: aload 29
    //   790: astore 28
    //   792: aload 39
    //   794: ldc_w 322
    //   797: invokevirtual 325	ug:a	(Ljava/lang/String;)Ljava/util/List;
    //   800: invokeinterface 331 1 0
    //   805: astore 40
    //   807: aload 29
    //   809: astore 28
    //   811: aload 40
    //   813: invokeinterface 336 1 0
    //   818: ifeq +36 -> 854
    //   821: aload 29
    //   823: astore 28
    //   825: aload 40
    //   827: invokeinterface 340 1 0
    //   832: checkcast 69	java/lang/String
    //   835: ldc_w 342
    //   838: invokestatic 347	android/text/TextUtils:equals	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    //   841: ifeq -34 -> 807
    //   844: aload 29
    //   846: astore 28
    //   848: invokestatic 259	bfr:a	()Lbfr;
    //   851: invokevirtual 261	bfr:b	()V
    //   854: aload 29
    //   856: astore 28
    //   858: aload 39
    //   860: ldc_w 349
    //   863: invokevirtual 325	ug:a	(Ljava/lang/String;)Ljava/util/List;
    //   866: astore 40
    //   868: aload 29
    //   870: astore 28
    //   872: aload 40
    //   874: invokeinterface 352 1 0
    //   879: ifne +20 -> 899
    //   882: aload 29
    //   884: astore 28
    //   886: aload 40
    //   888: iconst_0
    //   889: invokeinterface 356 2 0
    //   894: checkcast 69	java/lang/String
    //   897: astore 27
    //   899: aload 27
    //   901: astore 28
    //   903: aload 39
    //   905: ldc_w 358
    //   908: invokevirtual 325	ug:a	(Ljava/lang/String;)Ljava/util/List;
    //   911: invokeinterface 352 1 0
    //   916: istore 6
    //   918: iload 6
    //   920: ifne +611 -> 1531
    //   923: iconst_1
    //   924: istore 6
    //   926: aload 38
    //   928: getfield 360	bmc:d	Ljava/lang/String;
    //   931: astore 29
    //   933: aload 38
    //   935: getfield 364	bmc:g	Lbmd;
    //   938: astore 39
    //   940: aload 38
    //   942: getfield 367	bmc:b	Lblz;
    //   945: ifnonnull +456 -> 1401
    //   948: ldc_w 369
    //   951: astore 28
    //   953: lconst_0
    //   954: lstore 10
    //   956: lconst_0
    //   957: lstore 8
    //   959: aload 35
    //   961: getfield 374	bma:d	Lbmb;
    //   964: ifnull +561 -> 1525
    //   967: aload 35
    //   969: getfield 374	bma:d	Lbmb;
    //   972: invokevirtual 376	bmb:b	()J
    //   975: lstore 16
    //   977: aload 39
    //   979: ifnull +448 -> 1427
    //   982: aload_2
    //   983: ifnonnull +431 -> 1414
    //   986: new 378	bfl
    //   989: dup
    //   990: sipush 1024
    //   993: new 380	bfl$b
    //   996: dup
    //   997: invokespecial 381	bfl$b:<init>	()V
    //   1000: invokespecial 384	bfl:<init>	(ILbfl$a;)V
    //   1003: astore 38
    //   1005: new 386	uo
    //   1008: dup
    //   1009: invokespecial 387	uo:<init>	()V
    //   1012: astore 40
    //   1014: aload 38
    //   1016: aload 39
    //   1018: invokevirtual 392	bmd:c	()Ljava/io/InputStream;
    //   1021: aload 40
    //   1023: invokevirtual 395	bfl:a	(Ljava/io/InputStream;Lbfk$a;)I
    //   1026: i2l
    //   1027: lstore 8
    //   1029: invokestatic 105	android/os/SystemClock:elapsedRealtime	()J
    //   1032: lload 22
    //   1034: lsub
    //   1035: lstore 10
    //   1037: aload 30
    //   1039: ldc_w 263
    //   1042: new 69	java/lang/String
    //   1045: dup
    //   1046: aload 38
    //   1048: getfield 399	bfl:mBuffer	[B
    //   1051: iconst_0
    //   1052: aload 38
    //   1054: getfield 402	bfl:mSize	I
    //   1057: ldc_w 404
    //   1060: invokestatic 410	java/nio/charset/Charset:forName	(Ljava/lang/String;)Ljava/nio/charset/Charset;
    //   1063: invokespecial 413	java/lang/String:<init>	([BIILjava/nio/charset/Charset;)V
    //   1066: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1069: aload 40
    //   1071: getfield 417	uo:mIsReceived	Z
    //   1074: ifeq +463 -> 1537
    //   1077: aload 40
    //   1079: getfield 421	uo:mFirstByteReceivedElapsedRealtimeInMillis	J
    //   1082: lstore 12
    //   1084: aload 40
    //   1086: getfield 424	uo:mFirstByteSize	I
    //   1089: i2l
    //   1090: lstore 18
    //   1092: lload 12
    //   1094: lload 22
    //   1096: lsub
    //   1097: lstore 20
    //   1099: lload 8
    //   1101: lstore 14
    //   1103: lload 10
    //   1105: lstore 12
    //   1107: lload 20
    //   1109: lstore 10
    //   1111: lload 18
    //   1113: lstore 8
    //   1115: aload 30
    //   1117: ldc_w 426
    //   1120: iload 6
    //   1122: invokevirtual 430	android/os/Bundle:putBoolean	(Ljava/lang/String;Z)V
    //   1125: aload 30
    //   1127: ldc_w 432
    //   1130: lload 10
    //   1132: invokevirtual 436	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1135: aload 30
    //   1137: ldc_w 438
    //   1140: lload 12
    //   1142: invokevirtual 436	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1145: aload 30
    //   1147: ldc_w 440
    //   1150: lload 16
    //   1152: invokevirtual 436	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1155: aload 30
    //   1157: ldc_w 442
    //   1160: lload 8
    //   1162: invokevirtual 436	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1165: aload 30
    //   1167: ldc_w 444
    //   1170: lload 14
    //   1172: invokevirtual 436	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   1175: aload 30
    //   1177: ldc_w 446
    //   1180: aload 28
    //   1182: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1185: aload 30
    //   1187: ldc_w 448
    //   1190: aload 35
    //   1192: invokevirtual 451	bma:a	()Ljava/net/URL;
    //   1195: invokevirtual 456	java/net/URL:getHost	()Ljava/lang/String;
    //   1198: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1201: aload 30
    //   1203: ldc -25
    //   1205: aload 37
    //   1207: invokevirtual 123	android/os/Bundle:putString	(Ljava/lang/String;Ljava/lang/String;)V
    //   1210: aload 33
    //   1212: lload 14
    //   1214: lload 16
    //   1216: invokevirtual 459	tj:a	(JJ)V
    //   1219: aload 33
    //   1221: ldc -104
    //   1223: aload_0
    //   1224: aload 29
    //   1226: iload 4
    //   1228: lload 24
    //   1230: lload 12
    //   1232: invokevirtual 462	tj:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJJ)V
    //   1235: ldc 35
    //   1237: ldc_w 464
    //   1240: bipush 8
    //   1242: anewarray 4	java/lang/Object
    //   1245: dup
    //   1246: iconst_0
    //   1247: ldc -104
    //   1249: aastore
    //   1250: dup
    //   1251: iconst_1
    //   1252: aload 36
    //   1254: aastore
    //   1255: dup
    //   1256: iconst_2
    //   1257: lload 14
    //   1259: invokestatic 469	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1262: aastore
    //   1263: dup
    //   1264: iconst_3
    //   1265: iload 4
    //   1267: invokestatic 474	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1270: aastore
    //   1271: dup
    //   1272: iconst_4
    //   1273: aload 29
    //   1275: aastore
    //   1276: dup
    //   1277: iconst_5
    //   1278: lload 24
    //   1280: invokestatic 469	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1283: aastore
    //   1284: dup
    //   1285: bipush 6
    //   1287: lload 12
    //   1289: invokestatic 469	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   1292: aastore
    //   1293: dup
    //   1294: bipush 7
    //   1296: aload 27
    //   1298: aastore
    //   1299: invokestatic 478	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   1302: aload 26
    //   1304: invokestatic 235	pc:b	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   1307: iconst_0
    //   1308: anewarray 4	java/lang/Object
    //   1311: invokestatic 312	com/snapchat/android/Timber:b	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1314: iconst_0
    //   1315: istore 5
    //   1317: iload 4
    //   1319: istore_3
    //   1320: iload 5
    //   1322: istore 4
    //   1324: aload 26
    //   1326: astore 27
    //   1328: goto -1196 -> 132
    //   1331: astore 27
    //   1333: ldc 35
    //   1335: new 75	java/lang/StringBuilder
    //   1338: dup
    //   1339: ldc_w 480
    //   1342: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1345: aload 27
    //   1347: invokevirtual 483	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1350: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1353: ldc_w 485
    //   1356: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1359: aload 27
    //   1361: invokevirtual 489	java/lang/Exception:getCause	()Ljava/lang/Throwable;
    //   1364: invokevirtual 492	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1367: ldc_w 485
    //   1370: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1373: aload 27
    //   1375: invokevirtual 495	java/lang/Exception:getLocalizedMessage	()Ljava/lang/String;
    //   1378: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1381: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1384: iconst_0
    //   1385: anewarray 4	java/lang/Object
    //   1388: invokestatic 240	com/snapchat/android/Timber:f	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1391: aload 28
    //   1393: astore 27
    //   1395: iconst_0
    //   1396: istore 6
    //   1398: goto -472 -> 926
    //   1401: aload 38
    //   1403: getfield 367	bmc:b	Lblz;
    //   1406: invokevirtual 498	blz:toString	()Ljava/lang/String;
    //   1409: astore 28
    //   1411: goto -458 -> 953
    //   1414: aload_2
    //   1415: aload 38
    //   1417: getfield 317	bmc:f	Lblu;
    //   1420: aload 39
    //   1422: invokeinterface 501 3 0
    //   1427: invokestatic 105	android/os/SystemClock:elapsedRealtime	()J
    //   1430: lstore 12
    //   1432: lconst_0
    //   1433: lstore 14
    //   1435: lload 12
    //   1437: lload 22
    //   1439: lsub
    //   1440: lstore 12
    //   1442: goto -327 -> 1115
    //   1445: iload_3
    //   1446: istore 4
    //   1448: goto -861 -> 587
    //   1451: astore_0
    //   1452: ldc 35
    //   1454: new 75	java/lang/StringBuilder
    //   1457: dup
    //   1458: ldc_w 503
    //   1461: invokespecial 186	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   1464: aload_0
    //   1465: invokevirtual 483	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   1468: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1471: invokevirtual 87	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1474: iconst_0
    //   1475: anewarray 4	java/lang/Object
    //   1478: invokestatic 505	com/snapchat/android/Timber:c	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    //   1481: goto -856 -> 625
    //   1484: astore_1
    //   1485: aload 28
    //   1487: astore_2
    //   1488: goto -984 -> 504
    //   1491: astore_1
    //   1492: iload 4
    //   1494: istore_3
    //   1495: aload 26
    //   1497: astore_2
    //   1498: goto -994 -> 504
    //   1501: astore_1
    //   1502: aload 29
    //   1504: astore_2
    //   1505: goto -1001 -> 504
    //   1508: astore_1
    //   1509: aload 26
    //   1511: astore_2
    //   1512: goto -1008 -> 504
    //   1515: astore_1
    //   1516: iload 4
    //   1518: istore_3
    //   1519: aload 26
    //   1521: astore_2
    //   1522: goto -1018 -> 504
    //   1525: lconst_0
    //   1526: lstore 16
    //   1528: goto -551 -> 977
    //   1531: iconst_0
    //   1532: istore 6
    //   1534: goto -608 -> 926
    //   1537: lload 8
    //   1539: lstore 18
    //   1541: lload 10
    //   1543: lstore 12
    //   1545: lload 8
    //   1547: lstore 14
    //   1549: lload 18
    //   1551: lstore 8
    //   1553: goto -438 -> 1115
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1556	0	paramString	String
    //   0	1556	1	paramBundle	Bundle
    //   0	1556	2	parama	pc.a
    //   128	1391	3	i	int
    //   125	1392	4	j	int
    //   748	573	5	k	int
    //   916	617	6	bool1	boolean
    //   29	677	7	bool2	boolean
    //   546	1006	8	l1	long
    //   954	588	10	l2	long
    //   1082	462	12	l3	long
    //   1101	447	14	l4	long
    //   975	552	16	l5	long
    //   1090	460	18	l6	long
    //   1097	11	20	l7	long
    //   76	1362	22	l8	long
    //   81	1198	24	l9	long
    //   10	1510	26	localObject1	Object
    //   20	1307	27	localObject2	Object
    //   1331	43	27	localException	Exception
    //   1393	1	27	localObject3	Object
    //   139	1347	28	localObject4	Object
    //   143	1360	29	localObject5	Object
    //   62	1140	30	localBundle	Bundle
    //   53	463	31	localUri	android.net.Uri
    //   117	524	32	str1	String
    //   71	1149	33	localtj	tj
    //   122	589	34	locallx	lx
    //   152	1039	35	localObject6	Object
    //   167	1086	36	str2	String
    //   267	939	37	localObject7	Object
    //   467	949	38	localObject8	Object
    //   786	635	39	localObject9	Object
    //   805	280	40	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   318	354	500	java/io/IOException
    //   364	399	500	java/io/IOException
    //   404	414	500	java/io/IOException
    //   414	483	500	java/io/IOException
    //   488	500	500	java/io/IOException
    //   685	692	500	java/io/IOException
    //   774	788	1331	java/lang/Exception
    //   792	807	1331	java/lang/Exception
    //   811	821	1331	java/lang/Exception
    //   825	844	1331	java/lang/Exception
    //   848	854	1331	java/lang/Exception
    //   858	868	1331	java/lang/Exception
    //   872	882	1331	java/lang/Exception
    //   886	899	1331	java/lang/Exception
    //   903	918	1331	java/lang/Exception
    //   587	625	1451	java/lang/Exception
    //   145	154	1484	java/io/IOException
    //   162	169	1484	java/io/IOException
    //   177	186	1484	java/io/IOException
    //   194	203	1484	java/io/IOException
    //   211	220	1484	java/io/IOException
    //   228	234	1484	java/io/IOException
    //   242	252	1484	java/io/IOException
    //   260	269	1484	java/io/IOException
    //   281	287	1484	java/io/IOException
    //   295	300	1484	java/io/IOException
    //   308	318	1484	java/io/IOException
    //   670	682	1484	java/io/IOException
    //   710	747	1491	java/io/IOException
    //   774	788	1491	java/io/IOException
    //   792	807	1491	java/io/IOException
    //   811	821	1491	java/io/IOException
    //   825	844	1491	java/io/IOException
    //   848	854	1491	java/io/IOException
    //   858	868	1491	java/io/IOException
    //   872	882	1491	java/io/IOException
    //   886	899	1491	java/io/IOException
    //   903	918	1491	java/io/IOException
    //   926	948	1491	java/io/IOException
    //   959	977	1491	java/io/IOException
    //   986	1092	1491	java/io/IOException
    //   1115	1314	1491	java/io/IOException
    //   1333	1391	1491	java/io/IOException
    //   1401	1411	1491	java/io/IOException
    //   1414	1427	1491	java/io/IOException
    //   1427	1432	1491	java/io/IOException
    //   145	154	1501	java/lang/IllegalArgumentException
    //   162	169	1501	java/lang/IllegalArgumentException
    //   177	186	1501	java/lang/IllegalArgumentException
    //   194	203	1501	java/lang/IllegalArgumentException
    //   211	220	1501	java/lang/IllegalArgumentException
    //   228	234	1501	java/lang/IllegalArgumentException
    //   242	252	1501	java/lang/IllegalArgumentException
    //   260	269	1501	java/lang/IllegalArgumentException
    //   281	287	1501	java/lang/IllegalArgumentException
    //   295	300	1501	java/lang/IllegalArgumentException
    //   308	318	1501	java/lang/IllegalArgumentException
    //   670	682	1501	java/lang/IllegalArgumentException
    //   318	354	1508	java/lang/IllegalArgumentException
    //   364	399	1508	java/lang/IllegalArgumentException
    //   404	414	1508	java/lang/IllegalArgumentException
    //   414	483	1508	java/lang/IllegalArgumentException
    //   488	500	1508	java/lang/IllegalArgumentException
    //   685	692	1508	java/lang/IllegalArgumentException
    //   710	747	1515	java/lang/IllegalArgumentException
    //   774	788	1515	java/lang/IllegalArgumentException
    //   792	807	1515	java/lang/IllegalArgumentException
    //   811	821	1515	java/lang/IllegalArgumentException
    //   825	844	1515	java/lang/IllegalArgumentException
    //   848	854	1515	java/lang/IllegalArgumentException
    //   858	868	1515	java/lang/IllegalArgumentException
    //   872	882	1515	java/lang/IllegalArgumentException
    //   886	899	1515	java/lang/IllegalArgumentException
    //   903	918	1515	java/lang/IllegalArgumentException
    //   926	948	1515	java/lang/IllegalArgumentException
    //   959	977	1515	java/lang/IllegalArgumentException
    //   986	1092	1515	java/lang/IllegalArgumentException
    //   1115	1314	1515	java/lang/IllegalArgumentException
    //   1333	1391	1515	java/lang/IllegalArgumentException
    //   1401	1411	1515	java/lang/IllegalArgumentException
    //   1414	1427	1515	java/lang/IllegalArgumentException
    //   1427	1432	1515	java/lang/IllegalArgumentException
  }
  
  private static bmb a(Bundle paramBundle)
  {
    blx localblx = new blx().a(blx.e);
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if (localObject == null) {
        throw new IllegalArgumentException("createMultipartBody putting null value for key " + str);
      }
      if ((str.equals("thumbnail_data")) || (str.equals("raw_thumbnail_data")) || (str.equals("data"))) {
        localblx.a(blu.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"; filename=\"" + str + "\"" }), bmb.a(tl.BYTE_STREAM_MEDIA_TYPE, (byte[])localObject));
      } else {
        localblx.a(blu.a(new String[] { "Content-Disposition", "form-data; name=\"" + str + "\"" }), bmb.a(tl.STRING_MEDIA_TYPE, localObject.toString()));
      }
    }
    return localblx.a();
  }
  
  private static String a(String paramString)
  {
    try
    {
      paramString = (aku)atn.a().fromJson(paramString, aku.class);
      if (paramString == null) {
        return "ERROR: could not parse server response.";
      }
    }
    catch (JsonSyntaxException paramString)
    {
      for (;;)
      {
        Timber.a("SnapchatServer", paramString);
        paramString = null;
      }
      return paramString.toString();
    }
    catch (AssertionError paramString)
    {
      for (;;) {}
    }
  }
  
  @cgc
  public static String a(String paramString1, String paramString2)
  {
    if ((TextUtils.equals(paramString2, "/loq/gae_server_list")) || (TextUtils.equals(paramString2, "/loq/ping"))) {}
    for (int i = 1; i != 0; i = 0) {
      return os.b(paramString1);
    }
    return os.a(paramString1);
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
    return tl.a(localHashMap);
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
    public abstract void a(blu paramblu, bmd parambmd);
  }
}

/* Location:
 * Qualified Name:     pc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */