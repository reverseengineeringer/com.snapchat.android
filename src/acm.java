import com.snapchat.android.SnapchatApplication;
import java.io.ByteArrayOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public final class acm
{
  @Inject
  protected aum a;
  private afv b = new afv();
  
  public acm()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  private static Map<String, byte[]> a(ZipInputStream paramZipInputStream)
  {
    HashMap localHashMap = new HashMap();
    for (;;)
    {
      ZipEntry localZipEntry = paramZipInputStream.getNextEntry();
      if (localZipEntry == null) {
        break;
      }
      Object localObject = new ByteArrayOutputStream();
      byte[] arrayOfByte = new byte['Ѐ'];
      for (;;)
      {
        int i = paramZipInputStream.read(arrayOfByte);
        if (i == -1) {
          break;
        }
        ((ByteArrayOutputStream)localObject).write(arrayOfByte, 0, i);
      }
      localObject = ((ByteArrayOutputStream)localObject).toByteArray();
      localHashMap.put(localZipEntry.getName().split("[,~.]")[0], localObject);
    }
    return localHashMap;
  }
  
  /* Error */
  @cbr
  @chd
  public final aji a(@chc android.content.Context paramContext, @chc String paramString, @chc byte[] paramArrayOfByte, aza paramaza)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: getstatic 95	axo:DISCOVER_SHARE	Laxn;
    //   6: checkcast 97	com/snapchat/android/util/cache/DiscoverShareCache
    //   9: astore 9
    //   11: aconst_null
    //   12: astore 8
    //   14: new 99	java/io/ByteArrayInputStream
    //   17: dup
    //   18: aload_3
    //   19: invokespecial 102	java/io/ByteArrayInputStream:<init>	([B)V
    //   22: astore_3
    //   23: new 40	java/util/zip/ZipInputStream
    //   26: dup
    //   27: new 104	java/io/BufferedInputStream
    //   30: dup
    //   31: aload_3
    //   32: invokespecial 107	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   35: invokespecial 108	java/util/zip/ZipInputStream:<init>	(Ljava/io/InputStream;)V
    //   38: astore 7
    //   40: aload 7
    //   42: invokestatic 110	acm:a	(Ljava/util/zip/ZipInputStream;)Ljava/util/Map;
    //   45: astore 11
    //   47: aload 11
    //   49: ldc 112
    //   51: invokeinterface 116 2 0
    //   56: ifne +56 -> 112
    //   59: new 118	java/lang/IllegalArgumentException
    //   62: dup
    //   63: ldc 120
    //   65: invokespecial 123	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   68: athrow
    //   69: astore_1
    //   70: aload 7
    //   72: astore 4
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_3
    //   77: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   80: aload 4
    //   82: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   85: iconst_0
    //   86: istore 5
    //   88: aload_1
    //   89: astore 8
    //   91: iload 5
    //   93: ifeq +683 -> 776
    //   96: aload 8
    //   98: ifnull +12 -> 110
    //   101: aload 9
    //   103: ifnull +7 -> 110
    //   106: aload_2
    //   107: ifnonnull +352 -> 459
    //   110: aconst_null
    //   111: areturn
    //   112: aload 11
    //   114: ldc 112
    //   116: invokeinterface 132 2 0
    //   121: checkcast 134	[B
    //   124: astore 10
    //   126: aload_0
    //   127: getfield 136	acm:a	Laum;
    //   130: new 69	java/lang/String
    //   133: dup
    //   134: aload 10
    //   136: invokespecial 137	java/lang/String:<init>	([B)V
    //   139: ldc -117
    //   141: invokevirtual 144	aum:a	(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    //   144: checkcast 139	aco
    //   147: astore 8
    //   149: aload 8
    //   151: ifnonnull +18 -> 169
    //   154: iconst_0
    //   155: istore 5
    //   157: aload_3
    //   158: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   161: aload 7
    //   163: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   166: goto -75 -> 91
    //   169: aload 9
    //   171: aload_2
    //   172: aload 10
    //   174: getstatic 150	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:METADATA	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   177: invokevirtual 153	com/snapchat/android/util/cache/DiscoverShareCache:a	(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    //   180: pop
    //   181: aload 8
    //   183: getfield 156	aco:a	I
    //   186: ifne +69 -> 255
    //   189: aload 11
    //   191: aload 8
    //   193: getfield 160	aco:h	Ljava/lang/String;
    //   196: invokeinterface 132 2 0
    //   201: checkcast 134	[B
    //   204: astore 10
    //   206: aload 10
    //   208: ifnonnull +9 -> 217
    //   211: iconst_0
    //   212: istore 5
    //   214: goto -57 -> 157
    //   217: aload_1
    //   218: aload 10
    //   220: invokestatic 165	avp:a	(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    //   223: astore_1
    //   224: aload_1
    //   225: ifnonnull +9 -> 234
    //   228: iconst_0
    //   229: istore 5
    //   231: goto -74 -> 157
    //   234: aload 9
    //   236: aload_2
    //   237: aload_1
    //   238: getstatic 171	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   241: getstatic 174	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:IMAGE	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   244: aload 4
    //   246: invokevirtual 177	com/snapchat/android/util/cache/DiscoverShareCache:a	(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V
    //   249: iconst_1
    //   250: istore 5
    //   252: goto -95 -> 157
    //   255: aload 8
    //   257: getfield 180	aco:j	Ljava/lang/String;
    //   260: ifnonnull +9 -> 269
    //   263: iconst_0
    //   264: istore 5
    //   266: goto -109 -> 157
    //   269: aload 11
    //   271: aload 8
    //   273: getfield 160	aco:h	Ljava/lang/String;
    //   276: invokeinterface 132 2 0
    //   281: checkcast 134	[B
    //   284: astore 10
    //   286: aload 10
    //   288: ifnonnull +9 -> 297
    //   291: iconst_0
    //   292: istore 5
    //   294: goto -137 -> 157
    //   297: aload 9
    //   299: aload_2
    //   300: aload_1
    //   301: aload 11
    //   303: aload 8
    //   305: getfield 180	aco:j	Ljava/lang/String;
    //   308: invokeinterface 132 2 0
    //   313: checkcast 134	[B
    //   316: invokestatic 165	avp:a	(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    //   319: getstatic 183	android/graphics/Bitmap$CompressFormat:JPEG	Landroid/graphics/Bitmap$CompressFormat;
    //   322: getstatic 186	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO_THUMBNAIL	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   325: aload 4
    //   327: invokevirtual 177	com/snapchat/android/util/cache/DiscoverShareCache:a	(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V
    //   330: aload 8
    //   332: getfield 189	aco:i	Ljava/lang/String;
    //   335: ifnull +75 -> 410
    //   338: aload 11
    //   340: aload 8
    //   342: getfield 189	aco:i	Ljava/lang/String;
    //   345: invokeinterface 132 2 0
    //   350: checkcast 134	[B
    //   353: astore 11
    //   355: aload 11
    //   357: ifnonnull +15 -> 372
    //   360: aload 9
    //   362: aload_2
    //   363: invokevirtual 191	com/snapchat/android/util/cache/DiscoverShareCache:c	(Ljava/lang/String;)V
    //   366: iconst_0
    //   367: istore 5
    //   369: goto -212 -> 157
    //   372: aload_1
    //   373: aload 11
    //   375: invokestatic 165	avp:a	(Landroid/content/Context;[B)Landroid/graphics/Bitmap;
    //   378: astore_1
    //   379: aload_1
    //   380: ifnonnull +15 -> 395
    //   383: aload 9
    //   385: aload_2
    //   386: invokevirtual 191	com/snapchat/android/util/cache/DiscoverShareCache:c	(Ljava/lang/String;)V
    //   389: iconst_0
    //   390: istore 5
    //   392: goto -235 -> 157
    //   395: aload 9
    //   397: aload_2
    //   398: aload_1
    //   399: getstatic 171	android/graphics/Bitmap$CompressFormat:PNG	Landroid/graphics/Bitmap$CompressFormat;
    //   402: getstatic 194	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO_OVERLAY	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   405: aload 4
    //   407: invokevirtual 177	com/snapchat/android/util/cache/DiscoverShareCache:a	(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;Laza;)V
    //   410: aload 9
    //   412: aload_2
    //   413: aload 10
    //   415: getstatic 197	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   418: invokevirtual 153	com/snapchat/android/util/cache/DiscoverShareCache:a	(Ljava/lang/String;[BLcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    //   421: ifnonnull +15 -> 436
    //   424: aload 9
    //   426: aload_2
    //   427: invokevirtual 191	com/snapchat/android/util/cache/DiscoverShareCache:c	(Ljava/lang/String;)V
    //   430: iconst_0
    //   431: istore 5
    //   433: goto -276 -> 157
    //   436: iconst_1
    //   437: istore 5
    //   439: goto -282 -> 157
    //   442: astore_1
    //   443: aconst_null
    //   444: astore 7
    //   446: aconst_null
    //   447: astore_3
    //   448: aload_3
    //   449: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   452: aload 7
    //   454: invokestatic 128	bgo:a	(Ljava/io/Closeable;)V
    //   457: aload_1
    //   458: athrow
    //   459: aload 8
    //   461: getfield 156	aco:a	I
    //   464: ifne +207 -> 671
    //   467: new 199	akf$a
    //   470: dup
    //   471: invokespecial 200	akf$a:<init>	()V
    //   474: astore_1
    //   475: aload_1
    //   476: getstatic 206	com/snapchat/android/model/Mediabryo$SnapType:DISCOVER	Lcom/snapchat/android/model/Mediabryo$SnapType;
    //   479: putfield 211	com/snapchat/android/model/Mediabryo$a:mSnapType	Lcom/snapchat/android/model/Mediabryo$SnapType;
    //   482: aload_1
    //   483: checkcast 213	aji$a
    //   486: astore_1
    //   487: aload_1
    //   488: iconst_0
    //   489: putfield 217	com/snapchat/android/model/Mediabryo$a:mShouldEnableVisualFilters	Z
    //   492: aload_1
    //   493: checkcast 213	aji$a
    //   496: astore_1
    //   497: new 219	aeb
    //   500: dup
    //   501: invokespecial 220	aeb:<init>	()V
    //   504: astore_2
    //   505: aload_2
    //   506: aload 8
    //   508: getfield 222	aco:b	Ljava/lang/String;
    //   511: putfield 224	aeb:a	Ljava/lang/String;
    //   514: aload_2
    //   515: aload 8
    //   517: getfield 226	aco:c	Ljava/lang/String;
    //   520: putfield 227	aeb:b	Ljava/lang/String;
    //   523: aload_2
    //   524: aload 8
    //   526: getfield 230	aco:d	Ljava/lang/String;
    //   529: putfield 231	aeb:c	Ljava/lang/String;
    //   532: aload_2
    //   533: aload 8
    //   535: getfield 234	aco:e	Ljava/lang/String;
    //   538: putfield 235	aeb:d	Ljava/lang/String;
    //   541: aload_2
    //   542: aload 8
    //   544: getfield 238	aco:f	Ljava/lang/String;
    //   547: putfield 239	aeb:e	Ljava/lang/String;
    //   550: aload_2
    //   551: aload 8
    //   553: getfield 242	aco:g	Ljava/lang/String;
    //   556: putfield 245	aeb:x	Ljava/lang/String;
    //   559: aload_2
    //   560: aload 8
    //   562: getfield 249	aco:m	F
    //   565: putfield 251	aeb:h	F
    //   568: aload_2
    //   569: aload 8
    //   571: getfield 254	aco:n	F
    //   574: putfield 256	aeb:i	F
    //   577: aload_2
    //   578: aload 8
    //   580: getfield 259	aco:k	F
    //   583: putfield 261	aeb:f	F
    //   586: aload_2
    //   587: aload 8
    //   589: getfield 264	aco:l	F
    //   592: putfield 266	aeb:g	F
    //   595: aload_2
    //   596: aload 8
    //   598: getfield 269	aco:o	F
    //   601: putfield 271	aeb:j	F
    //   604: aload_2
    //   605: aload 8
    //   607: getfield 274	aco:p	F
    //   610: putfield 275	aeb:k	F
    //   613: aload_2
    //   614: aload 8
    //   616: getfield 278	aco:r	I
    //   619: putfield 281	aeb:q	I
    //   622: aload_2
    //   623: aload 8
    //   625: getfield 284	aco:s	I
    //   628: putfield 285	aeb:r	I
    //   631: aload_2
    //   632: aload 8
    //   634: getfield 288	aco:t	Ljava/lang/String;
    //   637: putfield 290	aeb:s	Ljava/lang/String;
    //   640: aload_2
    //   641: aload 8
    //   643: getfield 293	aco:u	Ljava/lang/String;
    //   646: putfield 294	aeb:t	Ljava/lang/String;
    //   649: aload_2
    //   650: aload 8
    //   652: getfield 296	aco:q	Z
    //   655: putfield 298	aeb:n	Z
    //   658: aload_1
    //   659: aload_2
    //   660: putfield 302	com/snapchat/android/model/Mediabryo$a:mMediaExtras	Lajv;
    //   663: aload_1
    //   664: checkcast 213	aji$a
    //   667: invokevirtual 305	aji$a:b	()Laji;
    //   670: areturn
    //   671: aload 8
    //   673: getfield 156	aco:a	I
    //   676: iconst_1
    //   677: if_icmpeq +12 -> 689
    //   680: aload 8
    //   682: getfield 156	aco:a	I
    //   685: iconst_2
    //   686: if_icmpne +79 -> 765
    //   689: new 307	aku$a
    //   692: dup
    //   693: invokespecial 308	aku$a:<init>	()V
    //   696: astore_1
    //   697: aload 8
    //   699: getfield 189	aco:i	Ljava/lang/String;
    //   702: ifnull +16 -> 718
    //   705: aload_1
    //   706: aload 9
    //   708: aload_2
    //   709: getstatic 194	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO_OVERLAY	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   712: invokevirtual 311	com/snapchat/android/util/cache/DiscoverShareCache:b	(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    //   715: putfield 314	com/snapchat/android/model/Mediabryo$a:mOverlayPath	Ljava/lang/String;
    //   718: aload 8
    //   720: getfield 156	aco:a	I
    //   723: iconst_2
    //   724: if_icmpne +35 -> 759
    //   727: iconst_1
    //   728: istore 6
    //   730: aload_1
    //   731: iload 6
    //   733: putfield 317	com/snapchat/android/model/Mediabryo$a:mMuted	Z
    //   736: aload 9
    //   738: aload_2
    //   739: getstatic 197	com/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType:VIDEO	Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;
    //   742: invokevirtual 311	com/snapchat/android/util/cache/DiscoverShareCache:b	(Ljava/lang/String;Lcom/snapchat/android/util/cache/DiscoverShareCache$DiscoverShareFileType;)Ljava/lang/String;
    //   745: astore_2
    //   746: aload_2
    //   747: ifnull +9 -> 756
    //   750: aload_1
    //   751: aload_2
    //   752: invokevirtual 320	aji$a:b	(Ljava/lang/String;)Lcom/snapchat/android/model/Mediabryo$a;
    //   755: pop
    //   756: goto -281 -> 475
    //   759: iconst_0
    //   760: istore 6
    //   762: goto -32 -> 730
    //   765: new 118	java/lang/IllegalArgumentException
    //   768: dup
    //   769: ldc_w 322
    //   772: invokespecial 123	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;)V
    //   775: athrow
    //   776: aconst_null
    //   777: areturn
    //   778: astore_1
    //   779: aconst_null
    //   780: astore 7
    //   782: goto -334 -> 448
    //   785: astore_1
    //   786: goto -338 -> 448
    //   789: astore_1
    //   790: aconst_null
    //   791: astore_1
    //   792: aload 8
    //   794: astore 4
    //   796: aload 7
    //   798: astore_3
    //   799: goto -723 -> 76
    //   802: astore_1
    //   803: aconst_null
    //   804: astore_1
    //   805: aload 8
    //   807: astore 4
    //   809: goto -733 -> 76
    //   812: astore_1
    //   813: aload 7
    //   815: astore 4
    //   817: aload 8
    //   819: astore_1
    //   820: goto -744 -> 76
    //   823: astore_1
    //   824: aconst_null
    //   825: astore_1
    //   826: aload 8
    //   828: astore 4
    //   830: aload 7
    //   832: astore_3
    //   833: goto -757 -> 76
    //   836: astore_1
    //   837: aconst_null
    //   838: astore_1
    //   839: aload 8
    //   841: astore 4
    //   843: goto -767 -> 76
    //   846: astore_1
    //   847: aload 7
    //   849: astore 4
    //   851: aconst_null
    //   852: astore_1
    //   853: goto -777 -> 76
    //   856: astore_1
    //   857: aload 7
    //   859: astore 4
    //   861: aload 8
    //   863: astore_1
    //   864: goto -788 -> 76
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	867	0	this	acm
    //   0	867	1	paramContext	android.content.Context
    //   0	867	2	paramString	String
    //   0	867	3	paramArrayOfByte	byte[]
    //   0	867	4	paramaza	aza
    //   86	352	5	i	int
    //   728	33	6	bool	boolean
    //   1	857	7	localZipInputStream	ZipInputStream
    //   12	850	8	localObject1	Object
    //   9	728	9	localDiscoverShareCache	com.snapchat.android.util.cache.DiscoverShareCache
    //   124	290	10	arrayOfByte	byte[]
    //   45	329	11	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   40	69	69	java/io/IOException
    //   112	149	69	java/io/IOException
    //   14	23	442	finally
    //   23	40	778	finally
    //   40	69	785	finally
    //   112	149	785	finally
    //   169	206	785	finally
    //   217	224	785	finally
    //   234	249	785	finally
    //   255	263	785	finally
    //   269	286	785	finally
    //   297	355	785	finally
    //   360	366	785	finally
    //   372	379	785	finally
    //   383	389	785	finally
    //   395	410	785	finally
    //   410	430	785	finally
    //   14	23	789	java/io/IOException
    //   23	40	802	java/io/IOException
    //   169	206	812	java/io/IOException
    //   217	224	812	java/io/IOException
    //   234	249	812	java/io/IOException
    //   255	263	812	java/io/IOException
    //   269	286	812	java/io/IOException
    //   297	355	812	java/io/IOException
    //   360	366	812	java/io/IOException
    //   372	379	812	java/io/IOException
    //   383	389	812	java/io/IOException
    //   395	410	812	java/io/IOException
    //   410	430	812	java/io/IOException
    //   14	23	823	axq
    //   23	40	836	axq
    //   40	69	846	axq
    //   112	149	846	axq
    //   169	206	856	axq
    //   217	224	856	axq
    //   234	249	856	axq
    //   255	263	856	axq
    //   269	286	856	axq
    //   297	355	856	axq
    //   360	366	856	axq
    //   372	379	856	axq
    //   383	389	856	axq
    //   395	410	856	axq
    //   410	430	856	axq
  }
}

/* Location:
 * Qualified Name:     acm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */