package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

class zzbx
  implements zzat
{
  private static final String zzES = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", new Object[] { "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time" });
  private final Context mContext;
  private final String zzEW;
  private long zzEY;
  private final int zzEZ;
  private final zzb zzazq;
  private volatile zzab zzazr;
  private final zzau zzazs;
  private zzlv zzmW;
  
  zzbx(zzau paramzzau, Context paramContext)
  {
    this(paramzzau, paramContext, "gtm_urls.db", 2000);
  }
  
  zzbx(zzau paramzzau, Context paramContext, String paramString, int paramInt)
  {
    mContext = paramContext.getApplicationContext();
    zzEW = paramString;
    zzazs = paramzzau;
    zzmW = zzlx.zzkc();
    zzazq = new zzb(mContext, zzEW);
    zzazr = new zzcw(new DefaultHttpClient(), mContext, new zza());
    zzEY = 0L;
    zzEZ = paramInt;
  }
  
  private void zzH(long paramLong)
  {
    zzb(new String[] { String.valueOf(paramLong) });
  }
  
  private SQLiteDatabase zzar(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = zzazq.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac(paramString);
    }
    return null;
  }
  
  private void zzd(long paramLong1, long paramLong2)
  {
    SQLiteDatabase localSQLiteDatabase = zzar("Error opening database for getNumStoredHits.");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_first_send_time", Long.valueOf(paramLong2));
    try
    {
      localSQLiteDatabase.update("gtm_hits", localContentValues, "hit_id=?", new String[] { String.valueOf(paramLong1) });
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac("Error setting HIT_FIRST_DISPATCH_TIME for hitId: " + paramLong1);
      zzH(paramLong1);
    }
  }
  
  private void zzg(long paramLong, String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = zzar("Error opening database for putHit");
    if (localSQLiteDatabase == null) {
      return;
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("hit_time", Long.valueOf(paramLong));
    localContentValues.put("hit_url", paramString);
    localContentValues.put("hit_first_send_time", Integer.valueOf(0));
    try
    {
      localSQLiteDatabase.insert("gtm_hits", null, localContentValues);
      zzazs.zzD(false);
      return;
    }
    catch (SQLiteException paramString)
    {
      zzbf.zzac("Error storing hit");
    }
  }
  
  private void zzgy()
  {
    int i = zzgA() - zzEZ + 1;
    if (i > 0)
    {
      List localList = zzM(i);
      zzbf.zzab("Store full, deleting " + localList.size() + " hits to make room.");
      zzb((String[])localList.toArray(new String[0]));
    }
  }
  
  public void dispatch()
  {
    zzbf.zzab("GTM Dispatch running...");
    if (!zzazr.zzfk()) {}
    do
    {
      return;
      List localList = zzN(40);
      if (localList.isEmpty())
      {
        zzbf.zzab("...nothing to dispatch");
        zzazs.zzD(true);
        return;
      }
      zzazr.zzt(localList);
    } while (zztv() <= 0);
    zzct.zztR().dispatch();
  }
  
  /* Error */
  List<String> zzM(int paramInt)
  {
    // Byte code:
    //   0: new 271	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 272	java/util/ArrayList:<init>	()V
    //   7: astore 6
    //   9: iload_1
    //   10: ifgt +12 -> 22
    //   13: ldc_w 274
    //   16: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   19: aload 6
    //   21: areturn
    //   22: aload_0
    //   23: ldc_w 276
    //   26: invokespecial 142	com/google/android/gms/tagmanager/zzbx:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnonnull +6 -> 37
    //   34: aload 6
    //   36: areturn
    //   37: ldc_w 278
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 37
    //   48: aastore
    //   49: invokestatic 49	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore 4
    //   54: iload_1
    //   55: invokestatic 281	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   58: astore 5
    //   60: aload_3
    //   61: ldc 35
    //   63: iconst_1
    //   64: anewarray 45	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: ldc 37
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: aload 4
    //   78: aload 5
    //   80: invokevirtual 285	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   83: astore 4
    //   85: aload 4
    //   87: astore_3
    //   88: aload 4
    //   90: invokeinterface 290 1 0
    //   95: ifeq +40 -> 135
    //   98: aload 4
    //   100: astore_3
    //   101: aload 6
    //   103: aload 4
    //   105: iconst_0
    //   106: invokeinterface 294 2 0
    //   111: invokestatic 109	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   114: invokeinterface 298 2 0
    //   119: pop
    //   120: aload 4
    //   122: astore_3
    //   123: aload 4
    //   125: invokeinterface 301 1 0
    //   130: istore_2
    //   131: iload_2
    //   132: ifne -34 -> 98
    //   135: aload 4
    //   137: ifnull +10 -> 147
    //   140: aload 4
    //   142: invokeinterface 304 1 0
    //   147: aload 6
    //   149: areturn
    //   150: astore 5
    //   152: aconst_null
    //   153: astore 4
    //   155: aload 4
    //   157: astore_3
    //   158: new 164	java/lang/StringBuilder
    //   161: dup
    //   162: ldc_w 306
    //   165: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: aload 5
    //   170: invokevirtual 309	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   173: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   182: aload 4
    //   184: ifnull -37 -> 147
    //   187: aload 4
    //   189: invokeinterface 304 1 0
    //   194: goto -47 -> 147
    //   197: astore 4
    //   199: aconst_null
    //   200: astore_3
    //   201: aload_3
    //   202: ifnull +9 -> 211
    //   205: aload_3
    //   206: invokeinterface 304 1 0
    //   211: aload 4
    //   213: athrow
    //   214: astore 4
    //   216: goto -15 -> 201
    //   219: astore 5
    //   221: goto -66 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	224	0	this	zzbx
    //   0	224	1	paramInt	int
    //   130	2	2	bool	boolean
    //   29	177	3	localObject1	Object
    //   52	136	4	localObject2	Object
    //   197	15	4	localObject3	Object
    //   214	1	4	localObject4	Object
    //   58	21	5	str	String
    //   150	19	5	localSQLiteException1	SQLiteException
    //   219	1	5	localSQLiteException2	SQLiteException
    //   7	141	6	localArrayList	java.util.ArrayList
    // Exception table:
    //   from	to	target	type
    //   37	85	150	android/database/sqlite/SQLiteException
    //   37	85	197	finally
    //   88	98	214	finally
    //   101	120	214	finally
    //   123	131	214	finally
    //   158	182	214	finally
    //   88	98	219	android/database/sqlite/SQLiteException
    //   101	120	219	android/database/sqlite/SQLiteException
    //   123	131	219	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public List<zzap> zzN(int paramInt)
  {
    // Byte code:
    //   0: new 271	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 272	java/util/ArrayList:<init>	()V
    //   7: astore 5
    //   9: aload_0
    //   10: ldc_w 313
    //   13: invokespecial 142	com/google/android/gms/tagmanager/zzbx:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   16: astore 8
    //   18: aload 8
    //   20: ifnonnull +10 -> 30
    //   23: aload 5
    //   25: astore 6
    //   27: aload 6
    //   29: areturn
    //   30: aconst_null
    //   31: astore 4
    //   33: ldc_w 278
    //   36: iconst_1
    //   37: anewarray 4	java/lang/Object
    //   40: dup
    //   41: iconst_0
    //   42: ldc 37
    //   44: aastore
    //   45: invokestatic 49	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   48: astore 6
    //   50: iload_1
    //   51: invokestatic 281	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   54: astore 7
    //   56: aload 8
    //   58: ldc 35
    //   60: iconst_3
    //   61: anewarray 45	java/lang/String
    //   64: dup
    //   65: iconst_0
    //   66: ldc 37
    //   68: aastore
    //   69: dup
    //   70: iconst_1
    //   71: ldc 39
    //   73: aastore
    //   74: dup
    //   75: iconst_2
    //   76: ldc 43
    //   78: aastore
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: aconst_null
    //   83: aload 6
    //   85: aload 7
    //   87: invokevirtual 285	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   90: astore 6
    //   92: aload 6
    //   94: astore 4
    //   96: new 271	java/util/ArrayList
    //   99: dup
    //   100: invokespecial 272	java/util/ArrayList:<init>	()V
    //   103: astore 7
    //   105: aload 4
    //   107: invokeinterface 290 1 0
    //   112: ifeq +54 -> 166
    //   115: aload 7
    //   117: new 315	com/google/android/gms/tagmanager/zzap
    //   120: dup
    //   121: aload 4
    //   123: iconst_0
    //   124: invokeinterface 294 2 0
    //   129: aload 4
    //   131: iconst_1
    //   132: invokeinterface 294 2 0
    //   137: aload 4
    //   139: iconst_2
    //   140: invokeinterface 294 2 0
    //   145: invokespecial 318	com/google/android/gms/tagmanager/zzap:<init>	(JJJ)V
    //   148: invokeinterface 298 2 0
    //   153: pop
    //   154: aload 4
    //   156: invokeinterface 301 1 0
    //   161: istore_3
    //   162: iload_3
    //   163: ifne -48 -> 115
    //   166: aload 4
    //   168: ifnull +10 -> 178
    //   171: aload 4
    //   173: invokeinterface 304 1 0
    //   178: aload 4
    //   180: astore 5
    //   182: ldc_w 278
    //   185: iconst_1
    //   186: anewarray 4	java/lang/Object
    //   189: dup
    //   190: iconst_0
    //   191: ldc 37
    //   193: aastore
    //   194: invokestatic 49	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   197: astore 6
    //   199: aload 4
    //   201: astore 5
    //   203: iload_1
    //   204: invokestatic 281	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   207: astore 9
    //   209: aload 4
    //   211: astore 5
    //   213: aload 8
    //   215: ldc 35
    //   217: iconst_2
    //   218: anewarray 45	java/lang/String
    //   221: dup
    //   222: iconst_0
    //   223: ldc 37
    //   225: aastore
    //   226: dup
    //   227: iconst_1
    //   228: ldc 41
    //   230: aastore
    //   231: aconst_null
    //   232: aconst_null
    //   233: aconst_null
    //   234: aconst_null
    //   235: aload 6
    //   237: aload 9
    //   239: invokevirtual 285	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   242: astore 6
    //   244: aload 6
    //   246: invokeinterface 290 1 0
    //   251: ifeq +53 -> 304
    //   254: iconst_0
    //   255: istore_1
    //   256: aload 6
    //   258: checkcast 320	android/database/sqlite/SQLiteCursor
    //   261: invokevirtual 324	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   264: invokevirtual 329	android/database/CursorWindow:getNumRows	()I
    //   267: ifle +133 -> 400
    //   270: aload 7
    //   272: iload_1
    //   273: invokeinterface 333 2 0
    //   278: checkcast 315	com/google/android/gms/tagmanager/zzap
    //   281: aload 6
    //   283: iconst_1
    //   284: invokeinterface 336 2 0
    //   289: invokevirtual 339	com/google/android/gms/tagmanager/zzap:zzaq	(Ljava/lang/String;)V
    //   292: aload 6
    //   294: invokeinterface 301 1 0
    //   299: istore_3
    //   300: iload_3
    //   301: ifne +367 -> 668
    //   304: aload 6
    //   306: ifnull +10 -> 316
    //   309: aload 6
    //   311: invokeinterface 304 1 0
    //   316: aload 7
    //   318: areturn
    //   319: astore 6
    //   321: aconst_null
    //   322: astore 7
    //   324: aload 5
    //   326: astore 4
    //   328: aload 7
    //   330: astore 5
    //   332: new 164	java/lang/StringBuilder
    //   335: dup
    //   336: ldc_w 306
    //   339: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   342: aload 6
    //   344: invokevirtual 309	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   347: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   350: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   353: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   356: aload 4
    //   358: astore 6
    //   360: aload 5
    //   362: ifnull -335 -> 27
    //   365: aload 5
    //   367: invokeinterface 304 1 0
    //   372: aload 4
    //   374: areturn
    //   375: astore 6
    //   377: aload 4
    //   379: astore 5
    //   381: aload 6
    //   383: astore 4
    //   385: aload 5
    //   387: ifnull +10 -> 397
    //   390: aload 5
    //   392: invokeinterface 304 1 0
    //   397: aload 4
    //   399: athrow
    //   400: ldc_w 341
    //   403: iconst_1
    //   404: anewarray 4	java/lang/Object
    //   407: dup
    //   408: iconst_0
    //   409: aload 7
    //   411: iload_1
    //   412: invokeinterface 333 2 0
    //   417: checkcast 315	com/google/android/gms/tagmanager/zzap
    //   420: invokevirtual 345	com/google/android/gms/tagmanager/zzap:zzgs	()J
    //   423: invokestatic 150	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   426: aastore
    //   427: invokestatic 49	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   430: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   433: goto -141 -> 292
    //   436: astore 5
    //   438: aload 6
    //   440: astore 4
    //   442: aload 5
    //   444: astore 6
    //   446: aload 4
    //   448: astore 5
    //   450: new 164	java/lang/StringBuilder
    //   453: dup
    //   454: ldc_w 347
    //   457: invokespecial 168	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   460: aload 6
    //   462: invokevirtual 309	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   465: invokevirtual 227	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   468: invokevirtual 176	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   471: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   474: aload 4
    //   476: astore 5
    //   478: new 271	java/util/ArrayList
    //   481: dup
    //   482: invokespecial 272	java/util/ArrayList:<init>	()V
    //   485: astore 6
    //   487: aload 4
    //   489: astore 5
    //   491: aload 7
    //   493: invokeinterface 351 1 0
    //   498: astore 7
    //   500: iconst_0
    //   501: istore_1
    //   502: aload 4
    //   504: astore 5
    //   506: aload 7
    //   508: invokeinterface 356 1 0
    //   513: ifeq +78 -> 591
    //   516: aload 4
    //   518: astore 5
    //   520: aload 7
    //   522: invokeinterface 360 1 0
    //   527: checkcast 315	com/google/android/gms/tagmanager/zzap
    //   530: astore 8
    //   532: iload_1
    //   533: istore_2
    //   534: aload 4
    //   536: astore 5
    //   538: aload 8
    //   540: invokevirtual 363	com/google/android/gms/tagmanager/zzap:zztk	()Ljava/lang/String;
    //   543: invokestatic 368	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   546: ifeq +9 -> 555
    //   549: iload_1
    //   550: ifne +41 -> 591
    //   553: iconst_1
    //   554: istore_2
    //   555: aload 4
    //   557: astore 5
    //   559: aload 6
    //   561: aload 8
    //   563: invokeinterface 298 2 0
    //   568: pop
    //   569: iload_2
    //   570: istore_1
    //   571: goto -69 -> 502
    //   574: astore 4
    //   576: aload 5
    //   578: ifnull +10 -> 588
    //   581: aload 5
    //   583: invokeinterface 304 1 0
    //   588: aload 4
    //   590: athrow
    //   591: aload 4
    //   593: ifnull +10 -> 603
    //   596: aload 4
    //   598: invokeinterface 304 1 0
    //   603: aload 6
    //   605: areturn
    //   606: astore 4
    //   608: aload 6
    //   610: astore 5
    //   612: goto -36 -> 576
    //   615: astore 6
    //   617: goto -171 -> 446
    //   620: astore 6
    //   622: aload 4
    //   624: astore 5
    //   626: aload 6
    //   628: astore 4
    //   630: goto -245 -> 385
    //   633: astore 4
    //   635: goto -250 -> 385
    //   638: astore 6
    //   640: aload 4
    //   642: astore 7
    //   644: aload 5
    //   646: astore 4
    //   648: aload 7
    //   650: astore 5
    //   652: goto -320 -> 332
    //   655: astore 6
    //   657: aload 4
    //   659: astore 5
    //   661: aload 7
    //   663: astore 4
    //   665: goto -333 -> 332
    //   668: iload_1
    //   669: iconst_1
    //   670: iadd
    //   671: istore_1
    //   672: goto -416 -> 256
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	675	0	this	zzbx
    //   0	675	1	paramInt	int
    //   533	37	2	i	int
    //   161	140	3	bool	boolean
    //   31	525	4	localObject1	Object
    //   574	23	4	localObject2	Object
    //   606	17	4	localObject3	Object
    //   628	1	4	localObject4	Object
    //   633	8	4	localObject5	Object
    //   646	18	4	localObject6	Object
    //   7	384	5	localObject7	Object
    //   436	7	5	localSQLiteException1	SQLiteException
    //   448	212	5	localObject8	Object
    //   25	285	6	localObject9	Object
    //   319	24	6	localSQLiteException2	SQLiteException
    //   358	1	6	localObject10	Object
    //   375	64	6	localObject11	Object
    //   444	165	6	localObject12	Object
    //   615	1	6	localSQLiteException3	SQLiteException
    //   620	7	6	localObject13	Object
    //   638	1	6	localSQLiteException4	SQLiteException
    //   655	1	6	localSQLiteException5	SQLiteException
    //   54	608	7	localObject14	Object
    //   16	546	8	localObject15	Object
    //   207	31	9	str	String
    // Exception table:
    //   from	to	target	type
    //   33	92	319	android/database/sqlite/SQLiteException
    //   33	92	375	finally
    //   244	254	436	android/database/sqlite/SQLiteException
    //   256	292	436	android/database/sqlite/SQLiteException
    //   292	300	436	android/database/sqlite/SQLiteException
    //   400	433	436	android/database/sqlite/SQLiteException
    //   182	199	574	finally
    //   203	209	574	finally
    //   213	244	574	finally
    //   450	474	574	finally
    //   478	487	574	finally
    //   491	500	574	finally
    //   506	516	574	finally
    //   520	532	574	finally
    //   538	549	574	finally
    //   559	569	574	finally
    //   244	254	606	finally
    //   256	292	606	finally
    //   292	300	606	finally
    //   400	433	606	finally
    //   182	199	615	android/database/sqlite/SQLiteException
    //   203	209	615	android/database/sqlite/SQLiteException
    //   213	244	615	android/database/sqlite/SQLiteException
    //   96	105	620	finally
    //   105	115	620	finally
    //   115	162	620	finally
    //   332	356	633	finally
    //   96	105	638	android/database/sqlite/SQLiteException
    //   105	115	655	android/database/sqlite/SQLiteException
    //   115	162	655	android/database/sqlite/SQLiteException
  }
  
  void zzb(String[] paramArrayOfString)
  {
    boolean bool = true;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {}
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = zzar("Error opening database for deleteHits.");
    } while (localSQLiteDatabase == null);
    String str = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    for (;;)
    {
      try
      {
        localSQLiteDatabase.delete("gtm_hits", str, paramArrayOfString);
        paramArrayOfString = zzazs;
        if (zzgA() == 0)
        {
          paramArrayOfString.zzD(bool);
          return;
        }
      }
      catch (SQLiteException paramArrayOfString)
      {
        zzbf.zzac("Error deleting hits");
        return;
      }
      bool = false;
    }
  }
  
  public void zzf(long paramLong, String paramString)
  {
    zzgz();
    zzgy();
    zzg(paramLong, paramString);
  }
  
  int zzgA()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    Object localObject5 = zzar("Error opening database for getNumStoredHits.");
    if (localObject5 == null) {}
    for (;;)
    {
      return j;
      try
      {
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from gtm_hits", null);
        localObject1 = localObject5;
        localObject3 = localObject5;
        if (((Cursor)localObject5).moveToFirst())
        {
          localObject1 = localObject5;
          localObject3 = localObject5;
          long l = ((Cursor)localObject5).getLong(0);
          i = (int)l;
        }
        j = i;
        return i;
      }
      catch (SQLiteException localSQLiteException)
      {
        localObject4 = localObject1;
        zzbf.zzac("Error getting numStoredHits");
        return 0;
      }
      finally
      {
        Object localObject4;
        if (localObject4 != null) {
          ((Cursor)localObject4).close();
        }
      }
    }
  }
  
  int zzgz()
  {
    boolean bool = true;
    long l = zzmW.currentTimeMillis();
    if (l <= zzEY + 86400000L) {}
    do
    {
      return 0;
      zzEY = l;
      localObject = zzar("Error opening database for deleteStaleHits.");
    } while (localObject == null);
    int i = ((SQLiteDatabase)localObject).delete("gtm_hits", "HIT_TIME < ?", new String[] { Long.toString(zzmW.currentTimeMillis() - 2592000000L) });
    Object localObject = zzazs;
    if (zzgA() == 0) {}
    for (;;)
    {
      ((zzau)localObject).zzD(bool);
      return i;
      bool = false;
    }
  }
  
  /* Error */
  int zztv()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: aload_0
    //   4: ldc -116
    //   6: invokespecial 142	com/google/android/gms/tagmanager/zzbx:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore_3
    //   10: aload_3
    //   11: ifnonnull +5 -> 16
    //   14: iconst_0
    //   15: ireturn
    //   16: aload_3
    //   17: ldc 35
    //   19: iconst_2
    //   20: anewarray 45	java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc 37
    //   27: aastore
    //   28: dup
    //   29: iconst_1
    //   30: ldc 43
    //   32: aastore
    //   33: ldc_w 426
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: aconst_null
    //   40: invokevirtual 429	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore_3
    //   44: aload_3
    //   45: invokeinterface 432 1 0
    //   50: istore_2
    //   51: iload_2
    //   52: istore_1
    //   53: aload_3
    //   54: ifnull +11 -> 65
    //   57: aload_3
    //   58: invokeinterface 304 1 0
    //   63: iload_2
    //   64: istore_1
    //   65: iload_1
    //   66: ireturn
    //   67: astore_3
    //   68: aconst_null
    //   69: astore_3
    //   70: ldc_w 434
    //   73: invokestatic 135	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   76: aload_3
    //   77: ifnull +56 -> 133
    //   80: aload_3
    //   81: invokeinterface 304 1 0
    //   86: iconst_0
    //   87: istore_1
    //   88: goto -23 -> 65
    //   91: astore_3
    //   92: aload 4
    //   94: ifnull +10 -> 104
    //   97: aload 4
    //   99: invokeinterface 304 1 0
    //   104: aload_3
    //   105: athrow
    //   106: astore 5
    //   108: aload_3
    //   109: astore 4
    //   111: aload 5
    //   113: astore_3
    //   114: goto -22 -> 92
    //   117: astore 5
    //   119: aload_3
    //   120: astore 4
    //   122: aload 5
    //   124: astore_3
    //   125: goto -33 -> 92
    //   128: astore 4
    //   130: goto -60 -> 70
    //   133: iconst_0
    //   134: istore_1
    //   135: goto -70 -> 65
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	zzbx
    //   52	83	1	i	int
    //   50	14	2	j	int
    //   9	49	3	localObject1	Object
    //   67	1	3	localSQLiteException1	SQLiteException
    //   69	12	3	localObject2	Object
    //   91	18	3	localObject3	Object
    //   113	12	3	localObject4	Object
    //   1	120	4	localObject5	Object
    //   128	1	4	localSQLiteException2	SQLiteException
    //   106	6	5	localObject6	Object
    //   117	6	5	localObject7	Object
    // Exception table:
    //   from	to	target	type
    //   16	44	67	android/database/sqlite/SQLiteException
    //   16	44	91	finally
    //   44	51	106	finally
    //   70	76	117	finally
    //   44	51	128	android/database/sqlite/SQLiteException
  }
  
  class zza
    implements zzcw.zza
  {
    zza() {}
    
    public void zza(zzap paramzzap)
    {
      zzbx.zza(zzbx.this, paramzzap.zzgs());
    }
    
    public void zzb(zzap paramzzap)
    {
      zzbx.zza(zzbx.this, paramzzap.zzgs());
      zzbf.zzab("Permanent failure dispatching hitId: " + paramzzap.zzgs());
    }
    
    public void zzc(zzap paramzzap)
    {
      long l = paramzzap.zztj();
      if (l == 0L) {
        zzbx.zza(zzbx.this, paramzzap.zzgs(), zzbx.zza(zzbx.this).currentTimeMillis());
      }
      while (l + 14400000L >= zzbx.zza(zzbx.this).currentTimeMillis()) {
        return;
      }
      zzbx.zza(zzbx.this, paramzzap.zzgs());
      zzbf.zzab("Giving up on failed hitId: " + paramzzap.zzgs());
    }
  }
  
  class zzb
    extends SQLiteOpenHelper
  {
    private boolean zzFa;
    private long zzFb = 0L;
    
    zzb(Context paramContext, String paramString)
    {
      super(paramString, null, 1);
    }
    
    private void zza(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
      HashSet localHashSet = new HashSet();
      try
      {
        String[] arrayOfString = paramSQLiteDatabase.getColumnNames();
        int i = 0;
        while (i < arrayOfString.length)
        {
          localHashSet.add(arrayOfString[i]);
          i += 1;
        }
        paramSQLiteDatabase.close();
        if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_time")) || (!localHashSet.remove("hit_first_send_time"))) {
          throw new SQLiteException("Database column missing");
        }
      }
      finally
      {
        paramSQLiteDatabase.close();
      }
      if (!((Set)localObject).isEmpty()) {
        throw new SQLiteException("Database has extra columns");
      }
    }
    
    /* Error */
    private boolean zza(String paramString, SQLiteDatabase paramSQLiteDatabase)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: aload_2
      //   4: ldc 80
      //   6: iconst_1
      //   7: anewarray 82	java/lang/String
      //   10: dup
      //   11: iconst_0
      //   12: ldc 84
      //   14: aastore
      //   15: ldc 86
      //   17: iconst_1
      //   18: anewarray 82	java/lang/String
      //   21: dup
      //   22: iconst_0
      //   23: aload_1
      //   24: aastore
      //   25: aconst_null
      //   26: aconst_null
      //   27: aconst_null
      //   28: invokevirtual 90	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   31: astore_2
      //   32: aload_2
      //   33: invokeinterface 93 1 0
      //   38: istore_3
      //   39: aload_2
      //   40: ifnull +9 -> 49
      //   43: aload_2
      //   44: invokeinterface 53 1 0
      //   49: iload_3
      //   50: ireturn
      //   51: astore_2
      //   52: aconst_null
      //   53: astore_2
      //   54: new 95	java/lang/StringBuilder
      //   57: dup
      //   58: ldc 97
      //   60: invokespecial 98	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   63: aload_1
      //   64: invokevirtual 102	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   67: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   70: invokestatic 111	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
      //   73: aload_2
      //   74: ifnull +9 -> 83
      //   77: aload_2
      //   78: invokeinterface 53 1 0
      //   83: iconst_0
      //   84: ireturn
      //   85: astore_1
      //   86: aload 4
      //   88: astore_2
      //   89: aload_2
      //   90: ifnull +9 -> 99
      //   93: aload_2
      //   94: invokeinterface 53 1 0
      //   99: aload_1
      //   100: athrow
      //   101: astore_1
      //   102: goto -13 -> 89
      //   105: astore_1
      //   106: goto -17 -> 89
      //   109: astore 4
      //   111: goto -57 -> 54
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	114	0	this	zzb
      //   0	114	1	paramString	String
      //   0	114	2	paramSQLiteDatabase	SQLiteDatabase
      //   38	12	3	bool	boolean
      //   1	86	4	localObject	Object
      //   109	1	4	localSQLiteException	SQLiteException
      // Exception table:
      //   from	to	target	type
      //   3	32	51	android/database/sqlite/SQLiteException
      //   3	32	85	finally
      //   32	39	101	finally
      //   54	73	105	finally
      //   32	39	109	android/database/sqlite/SQLiteException
    }
    
    public SQLiteDatabase getWritableDatabase()
    {
      if ((zzFa) && (zzFb + 3600000L > zzbx.zza(zzbx.this).currentTimeMillis())) {
        throw new SQLiteException("Database creation failed");
      }
      Object localObject1 = null;
      zzFa = true;
      zzFb = zzbx.zza(zzbx.this).currentTimeMillis();
      try
      {
        localObject2 = super.getWritableDatabase();
        localObject1 = localObject2;
      }
      catch (SQLiteException localSQLiteException)
      {
        for (;;)
        {
          Object localObject2;
          zzbx.zzc(zzbx.this).getDatabasePath(zzbx.zzb(zzbx.this)).delete();
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = super.getWritableDatabase();
      }
      zzFa = false;
      return (SQLiteDatabase)localObject2;
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      zzak.zzam(paramSQLiteDatabase.getPath());
    }
    
    public void onOpen(SQLiteDatabase paramSQLiteDatabase)
    {
      Cursor localCursor;
      if (Build.VERSION.SDK_INT < 15) {
        localCursor = paramSQLiteDatabase.rawQuery("PRAGMA journal_mode=memory", null);
      }
      try
      {
        localCursor.moveToFirst();
        localCursor.close();
        if (!zza("gtm_hits", paramSQLiteDatabase))
        {
          paramSQLiteDatabase.execSQL(zzbx.zztw());
          return;
        }
      }
      finally
      {
        localCursor.close();
      }
      zza(paramSQLiteDatabase);
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2) {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzbx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */