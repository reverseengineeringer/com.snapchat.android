package com.google.android.gms.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import android.text.TextUtils;
import com.google.android.gms.internal.zzik;
import com.google.android.gms.internal.zzlv;
import com.google.android.gms.internal.zzlx;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

class zzag
  implements zzd
{
  private static final String zzES = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", new Object[] { "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id" });
  private static final String zzET = String.format("SELECT COUNT(*), MIN(%s), MAX(%s) FROM %s WHERE 1;", new Object[] { "hit_time", "hit_time", "hits2" });
  private final Context mContext;
  private zzo zzBr;
  private volatile boolean zzBs = true;
  private final zze zzCb;
  private final zza zzEU;
  private volatile zzr zzEV;
  private final String zzEW;
  private zzaf zzEX;
  private long zzEY;
  private final int zzEZ;
  private zzlv zzmW;
  
  zzag(zze paramzze, Context paramContext, zzo paramzzo)
  {
    this(paramzze, paramContext, "google_analytics_v4.db", 2000, paramzzo);
  }
  
  zzag(zze paramzze, Context paramContext, String paramString, int paramInt, zzo paramzzo)
  {
    mContext = paramContext.getApplicationContext();
    zzBr = paramzzo;
    zzEW = paramString;
    zzCb = paramzze;
    zzmW = zzlx.zzkc();
    zzEU = new zza(mContext, zzEW);
    zzEV = new zzh(new DefaultHttpClient(), mContext, zzBr);
    zzEY = 0L;
    zzEZ = paramInt;
  }
  
  static String zzD(Map<String, String> paramMap)
  {
    ArrayList localArrayList = new ArrayList(paramMap.size());
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      localArrayList.add(zzac.encode((String)localEntry.getKey()) + "=" + zzac.encode((String)localEntry.getValue()));
    }
    return TextUtils.join("&", localArrayList);
  }
  
  private void zza(Map<String, String> paramMap, long paramLong, String paramString)
  {
    for (;;)
    {
      SQLiteDatabase localSQLiteDatabase;
      try
      {
        localSQLiteDatabase = zzar("Error opening database for putHit");
        if (localSQLiteDatabase != null) {
          continue;
        }
      }
      finally
      {
        try
        {
          boolean bool;
          paramLong = Long.parseLong((String)paramMap.get("AppUID"));
          localContentValues.put("hit_app_id", Long.valueOf(paramLong));
          paramMap = paramString;
          if (paramString == null) {
            paramMap = "http://www.google-analytics.com/collect";
          }
          if (paramMap.length() != 0) {
            break label127;
          }
          zzae.zzac("Empty path: not sending hit");
        }
        catch (NumberFormatException paramMap) {}
        paramMap = finally;
      }
      return;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("hit_string", zzD(paramMap));
      localContentValues.put("hit_time", Long.valueOf(paramLong));
      bool = paramMap.containsKey("AppUID");
      if (bool) {}
      paramLong = 0L;
      continue;
      label127:
      localContentValues.put("hit_url", paramMap);
      try
      {
        localSQLiteDatabase.insert("hits2", null, localContentValues);
        zzCb.zzD(false);
      }
      catch (SQLiteException paramMap)
      {
        zzae.zzac("Error storing hit");
      }
    }
  }
  
  private void zza(Map<String, String> paramMap, Collection<zzik> paramCollection)
  {
    String str = "&_v".substring(1);
    if (paramCollection != null)
    {
      paramCollection = paramCollection.iterator();
      while (paramCollection.hasNext())
      {
        zzik localzzik = (zzik)paramCollection.next();
        if ("appendVersion".equals(localzzik.getId())) {
          paramMap.put(str, localzzik.getValue());
        }
      }
    }
  }
  
  private SQLiteDatabase zzar(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = zzEU.getWritableDatabase();
      paramString = localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        zzae.zzac(paramString);
        paramString = null;
      }
    }
    finally {}
    return paramString;
  }
  
  private void zzgy()
  {
    int i = zzgA() - zzEZ + 1;
    if (i > 0)
    {
      List localList = zzM(i);
      zzae.zzab("Store full, deleting " + localList.size() + " hits to make room.");
      zzb((String[])localList.toArray(new String[0]));
    }
  }
  
  public void dispatch()
  {
    boolean bool = true;
    zzae.zzab("Dispatch running...");
    if (!zzEV.zzfk()) {
      return;
    }
    List localList = zzN(20);
    if (localList.isEmpty())
    {
      zzae.zzab("...nothing to dispatch");
      zzCb.zzD(true);
      return;
    }
    if (zzEX == null) {
      zzEX = new zzaf("_t=dispatch&_v=ma4.0.6", false);
    }
    if (zzgA() <= localList.size()) {}
    for (;;)
    {
      int i = zzEV.zza(localList, zzEX, bool);
      zzae.zzab("sent " + i + " of " + localList.size() + " hits");
      zzb(localList.subList(0, Math.min(i, localList.size())));
      if ((i != localList.size()) || (zzgA() <= 0)) {
        break;
      }
      GoogleAnalytics.getInstance(mContext).dispatchLocalHits();
      return;
      bool = false;
    }
    zzEX = null;
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    zzBs = paramBoolean;
    if (zzEV != null) {
      zzEV.setDryRun(paramBoolean);
    }
  }
  
  /* Error */
  List<String> zzM(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 118	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 385	java/util/ArrayList:<init>	()V
    //   9: astore 6
    //   11: iload_1
    //   12: ifgt +14 -> 26
    //   15: ldc_w 387
    //   18: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   21: aload_0
    //   22: monitorexit
    //   23: aload 6
    //   25: areturn
    //   26: aload_0
    //   27: ldc_w 389
    //   30: invokespecial 202	com/google/android/gms/analytics/zzag:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   33: astore_3
    //   34: aload_3
    //   35: ifnonnull +6 -> 41
    //   38: goto -17 -> 21
    //   41: ldc_w 391
    //   44: iconst_1
    //   45: anewarray 4	java/lang/Object
    //   48: dup
    //   49: iconst_0
    //   50: ldc 41
    //   52: aastore
    //   53: invokestatic 55	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   56: astore 4
    //   58: iload_1
    //   59: invokestatic 395	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   62: astore 5
    //   64: aload_3
    //   65: ldc 39
    //   67: iconst_1
    //   68: anewarray 51	java/lang/String
    //   71: dup
    //   72: iconst_0
    //   73: ldc 41
    //   75: aastore
    //   76: aconst_null
    //   77: aconst_null
    //   78: aconst_null
    //   79: aconst_null
    //   80: aload 4
    //   82: aload 5
    //   84: invokevirtual 399	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   87: astore 4
    //   89: aload 4
    //   91: astore_3
    //   92: aload 4
    //   94: invokeinterface 404 1 0
    //   99: ifeq +40 -> 139
    //   102: aload 4
    //   104: astore_3
    //   105: aload 6
    //   107: aload 4
    //   109: iconst_0
    //   110: invokeinterface 408 2 0
    //   115: invokestatic 411	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   118: invokeinterface 180 2 0
    //   123: pop
    //   124: aload 4
    //   126: astore_3
    //   127: aload 4
    //   129: invokeinterface 414 1 0
    //   134: istore_2
    //   135: iload_2
    //   136: ifne -34 -> 102
    //   139: aload 4
    //   141: ifnull +10 -> 151
    //   144: aload 4
    //   146: invokeinterface 417 1 0
    //   151: goto -130 -> 21
    //   154: astore 5
    //   156: aconst_null
    //   157: astore 4
    //   159: aload 4
    //   161: astore_3
    //   162: new 151	java/lang/StringBuilder
    //   165: dup
    //   166: ldc_w 419
    //   169: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   172: aload 5
    //   174: invokevirtual 422	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   177: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   180: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   183: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   186: aload 4
    //   188: ifnull -37 -> 151
    //   191: aload 4
    //   193: invokeinterface 417 1 0
    //   198: goto -47 -> 151
    //   201: astore_3
    //   202: aload_0
    //   203: monitorexit
    //   204: aload_3
    //   205: athrow
    //   206: astore 4
    //   208: aconst_null
    //   209: astore_3
    //   210: aload_3
    //   211: ifnull +9 -> 220
    //   214: aload_3
    //   215: invokeinterface 417 1 0
    //   220: aload 4
    //   222: athrow
    //   223: astore 4
    //   225: goto -15 -> 210
    //   228: astore 5
    //   230: goto -71 -> 159
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	233	0	this	zzag
    //   0	233	1	paramInt	int
    //   134	2	2	bool	boolean
    //   33	129	3	localObject1	Object
    //   201	4	3	localObject2	Object
    //   209	6	3	localObject3	Object
    //   56	136	4	localObject4	Object
    //   206	15	4	localObject5	Object
    //   223	1	4	localObject6	Object
    //   62	21	5	str	String
    //   154	19	5	localSQLiteException1	SQLiteException
    //   228	1	5	localSQLiteException2	SQLiteException
    //   9	97	6	localArrayList	ArrayList
    // Exception table:
    //   from	to	target	type
    //   41	89	154	android/database/sqlite/SQLiteException
    //   2	11	201	finally
    //   15	21	201	finally
    //   26	34	201	finally
    //   144	151	201	finally
    //   191	198	201	finally
    //   214	220	201	finally
    //   220	223	201	finally
    //   41	89	206	finally
    //   92	102	223	finally
    //   105	124	223	finally
    //   127	135	223	finally
    //   162	186	223	finally
    //   92	102	228	android/database/sqlite/SQLiteException
    //   105	124	228	android/database/sqlite/SQLiteException
    //   127	135	228	android/database/sqlite/SQLiteException
  }
  
  /* Error */
  public List<zzab> zzN(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 118	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 385	java/util/ArrayList:<init>	()V
    //   9: astore 5
    //   11: aload_0
    //   12: ldc_w 425
    //   15: invokespecial 202	com/google/android/gms/analytics/zzag:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   18: astore 7
    //   20: aload 7
    //   22: ifnonnull +12 -> 34
    //   25: aload 5
    //   27: astore 6
    //   29: aload_0
    //   30: monitorexit
    //   31: aload 6
    //   33: areturn
    //   34: aconst_null
    //   35: astore 4
    //   37: ldc_w 391
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 41
    //   48: aastore
    //   49: invokestatic 55	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore 6
    //   54: iload_1
    //   55: invokestatic 395	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   58: astore 8
    //   60: aload 7
    //   62: ldc 39
    //   64: iconst_2
    //   65: anewarray 51	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: ldc 41
    //   72: aastore
    //   73: dup
    //   74: iconst_1
    //   75: ldc 43
    //   77: aastore
    //   78: aconst_null
    //   79: aconst_null
    //   80: aconst_null
    //   81: aconst_null
    //   82: aload 6
    //   84: aload 8
    //   86: invokevirtual 399	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   89: astore 6
    //   91: aload 6
    //   93: astore 4
    //   95: new 118	java/util/ArrayList
    //   98: dup
    //   99: invokespecial 385	java/util/ArrayList:<init>	()V
    //   102: astore 6
    //   104: aload 4
    //   106: invokeinterface 404 1 0
    //   111: ifeq +50 -> 161
    //   114: aload 6
    //   116: new 427	com/google/android/gms/analytics/zzab
    //   119: dup
    //   120: aconst_null
    //   121: aload 4
    //   123: iconst_0
    //   124: invokeinterface 408 2 0
    //   129: aload 4
    //   131: iconst_1
    //   132: invokeinterface 408 2 0
    //   137: ldc_w 429
    //   140: invokespecial 432	com/google/android/gms/analytics/zzab:<init>	(Ljava/lang/String;JJLjava/lang/String;)V
    //   143: invokeinterface 180 2 0
    //   148: pop
    //   149: aload 4
    //   151: invokeinterface 414 1 0
    //   156: istore_3
    //   157: iload_3
    //   158: ifne -44 -> 114
    //   161: aload 4
    //   163: ifnull +10 -> 173
    //   166: aload 4
    //   168: invokeinterface 417 1 0
    //   173: aload 4
    //   175: astore 5
    //   177: ldc_w 391
    //   180: iconst_1
    //   181: anewarray 4	java/lang/Object
    //   184: dup
    //   185: iconst_0
    //   186: ldc 41
    //   188: aastore
    //   189: invokestatic 55	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   192: astore 8
    //   194: aload 4
    //   196: astore 5
    //   198: iload_1
    //   199: invokestatic 395	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   202: astore 9
    //   204: aload 4
    //   206: astore 5
    //   208: aload 7
    //   210: ldc 39
    //   212: iconst_3
    //   213: anewarray 51	java/lang/String
    //   216: dup
    //   217: iconst_0
    //   218: ldc 41
    //   220: aastore
    //   221: dup
    //   222: iconst_1
    //   223: ldc 47
    //   225: aastore
    //   226: dup
    //   227: iconst_2
    //   228: ldc 45
    //   230: aastore
    //   231: aconst_null
    //   232: aconst_null
    //   233: aconst_null
    //   234: aconst_null
    //   235: aload 8
    //   237: aload 9
    //   239: invokevirtual 399	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   242: astore 7
    //   244: aload 7
    //   246: invokeinterface 404 1 0
    //   251: ifeq +75 -> 326
    //   254: iconst_0
    //   255: istore_1
    //   256: aload 7
    //   258: checkcast 434	android/database/sqlite/SQLiteCursor
    //   261: invokevirtual 438	android/database/sqlite/SQLiteCursor:getWindow	()Landroid/database/CursorWindow;
    //   264: invokevirtual 443	android/database/CursorWindow:getNumRows	()I
    //   267: ifle +166 -> 433
    //   270: aload 6
    //   272: iload_1
    //   273: invokeinterface 446 2 0
    //   278: checkcast 427	com/google/android/gms/analytics/zzab
    //   281: aload 7
    //   283: iconst_1
    //   284: invokeinterface 449 2 0
    //   289: invokevirtual 452	com/google/android/gms/analytics/zzab:zzap	(Ljava/lang/String;)V
    //   292: aload 6
    //   294: iload_1
    //   295: invokeinterface 446 2 0
    //   300: checkcast 427	com/google/android/gms/analytics/zzab
    //   303: aload 7
    //   305: iconst_2
    //   306: invokeinterface 449 2 0
    //   311: invokevirtual 455	com/google/android/gms/analytics/zzab:zzaq	(Ljava/lang/String;)V
    //   314: aload 7
    //   316: invokeinterface 414 1 0
    //   321: istore_3
    //   322: iload_3
    //   323: ifne +390 -> 713
    //   326: aload 7
    //   328: ifnull +10 -> 338
    //   331: aload 7
    //   333: invokeinterface 417 1 0
    //   338: goto -309 -> 29
    //   341: astore 6
    //   343: aconst_null
    //   344: astore 7
    //   346: aload 5
    //   348: astore 4
    //   350: aload 7
    //   352: astore 5
    //   354: new 151	java/lang/StringBuilder
    //   357: dup
    //   358: ldc_w 419
    //   361: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   364: aload 6
    //   366: invokevirtual 422	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   369: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   378: aload 4
    //   380: astore 6
    //   382: aload 5
    //   384: ifnull -355 -> 29
    //   387: aload 5
    //   389: invokeinterface 417 1 0
    //   394: aload 4
    //   396: astore 6
    //   398: goto -369 -> 29
    //   401: astore 4
    //   403: aload_0
    //   404: monitorexit
    //   405: aload 4
    //   407: athrow
    //   408: astore 6
    //   410: aload 4
    //   412: astore 5
    //   414: aload 6
    //   416: astore 4
    //   418: aload 5
    //   420: ifnull +10 -> 430
    //   423: aload 5
    //   425: invokeinterface 417 1 0
    //   430: aload 4
    //   432: athrow
    //   433: ldc_w 457
    //   436: iconst_1
    //   437: anewarray 4	java/lang/Object
    //   440: dup
    //   441: iconst_0
    //   442: aload 6
    //   444: iload_1
    //   445: invokeinterface 446 2 0
    //   450: checkcast 427	com/google/android/gms/analytics/zzab
    //   453: invokevirtual 461	com/google/android/gms/analytics/zzab:zzgs	()J
    //   456: invokestatic 217	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   459: aastore
    //   460: invokestatic 55	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   463: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   466: goto -152 -> 314
    //   469: astore 5
    //   471: aload 7
    //   473: astore 4
    //   475: aload 5
    //   477: astore 7
    //   479: aload 4
    //   481: astore 5
    //   483: new 151	java/lang/StringBuilder
    //   486: dup
    //   487: ldc_w 463
    //   490: invokespecial 307	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   493: aload 7
    //   495: invokevirtual 422	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   498: invokevirtual 165	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   501: invokevirtual 174	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   504: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   507: aload 4
    //   509: astore 5
    //   511: new 118	java/util/ArrayList
    //   514: dup
    //   515: invokespecial 385	java/util/ArrayList:<init>	()V
    //   518: astore 7
    //   520: aload 4
    //   522: astore 5
    //   524: aload 6
    //   526: invokeinterface 464 1 0
    //   531: astore 6
    //   533: iconst_0
    //   534: istore_1
    //   535: aload 4
    //   537: astore 5
    //   539: aload 6
    //   541: invokeinterface 143 1 0
    //   546: ifeq +78 -> 624
    //   549: aload 4
    //   551: astore 5
    //   553: aload 6
    //   555: invokeinterface 147 1 0
    //   560: checkcast 427	com/google/android/gms/analytics/zzab
    //   563: astore 8
    //   565: iload_1
    //   566: istore_2
    //   567: aload 4
    //   569: astore 5
    //   571: aload 8
    //   573: invokevirtual 467	com/google/android/gms/analytics/zzab:zzgr	()Ljava/lang/String;
    //   576: invokestatic 470	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   579: ifeq +9 -> 588
    //   582: iload_1
    //   583: ifne +41 -> 624
    //   586: iconst_1
    //   587: istore_2
    //   588: aload 4
    //   590: astore 5
    //   592: aload 7
    //   594: aload 8
    //   596: invokeinterface 180 2 0
    //   601: pop
    //   602: iload_2
    //   603: istore_1
    //   604: goto -69 -> 535
    //   607: astore 4
    //   609: aload 5
    //   611: ifnull +10 -> 621
    //   614: aload 5
    //   616: invokeinterface 417 1 0
    //   621: aload 4
    //   623: athrow
    //   624: aload 4
    //   626: ifnull +10 -> 636
    //   629: aload 4
    //   631: invokeinterface 417 1 0
    //   636: aload 7
    //   638: astore 6
    //   640: goto -611 -> 29
    //   643: astore 4
    //   645: aload 7
    //   647: astore 5
    //   649: goto -40 -> 609
    //   652: astore 7
    //   654: goto -175 -> 479
    //   657: astore 6
    //   659: aload 4
    //   661: astore 5
    //   663: aload 6
    //   665: astore 4
    //   667: goto -249 -> 418
    //   670: astore 4
    //   672: goto -254 -> 418
    //   675: astore 6
    //   677: aload 4
    //   679: astore 7
    //   681: aload 5
    //   683: astore 4
    //   685: aload 7
    //   687: astore 5
    //   689: goto -335 -> 354
    //   692: astore 5
    //   694: aload 4
    //   696: astore 7
    //   698: aload 6
    //   700: astore 4
    //   702: aload 5
    //   704: astore 6
    //   706: aload 7
    //   708: astore 5
    //   710: goto -356 -> 354
    //   713: iload_1
    //   714: iconst_1
    //   715: iadd
    //   716: istore_1
    //   717: goto -461 -> 256
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	720	0	this	zzag
    //   0	720	1	paramInt	int
    //   566	37	2	i	int
    //   156	167	3	bool	boolean
    //   35	360	4	localObject1	Object
    //   401	10	4	localObject2	Object
    //   416	173	4	localObject3	Object
    //   607	23	4	localObject4	Object
    //   643	17	4	localObject5	Object
    //   665	1	4	localObject6	Object
    //   670	8	4	localObject7	Object
    //   683	18	4	localObject8	Object
    //   9	415	5	localObject9	Object
    //   469	7	5	localSQLiteException1	SQLiteException
    //   481	207	5	localObject10	Object
    //   692	11	5	localSQLiteException2	SQLiteException
    //   708	1	5	localObject11	Object
    //   27	266	6	localObject12	Object
    //   341	24	6	localSQLiteException3	SQLiteException
    //   380	17	6	localObject13	Object
    //   408	117	6	localObject14	Object
    //   531	108	6	localObject15	Object
    //   657	7	6	localObject16	Object
    //   675	24	6	localSQLiteException4	SQLiteException
    //   704	1	6	localSQLiteException5	SQLiteException
    //   18	628	7	localObject17	Object
    //   652	1	7	localSQLiteException6	SQLiteException
    //   679	28	7	localObject18	Object
    //   58	537	8	localObject19	Object
    //   202	36	9	str	String
    // Exception table:
    //   from	to	target	type
    //   37	91	341	android/database/sqlite/SQLiteException
    //   2	20	401	finally
    //   166	173	401	finally
    //   331	338	401	finally
    //   387	394	401	finally
    //   423	430	401	finally
    //   430	433	401	finally
    //   614	621	401	finally
    //   621	624	401	finally
    //   629	636	401	finally
    //   37	91	408	finally
    //   244	254	469	android/database/sqlite/SQLiteException
    //   256	314	469	android/database/sqlite/SQLiteException
    //   314	322	469	android/database/sqlite/SQLiteException
    //   433	466	469	android/database/sqlite/SQLiteException
    //   177	194	607	finally
    //   198	204	607	finally
    //   208	244	607	finally
    //   483	507	607	finally
    //   511	520	607	finally
    //   524	533	607	finally
    //   539	549	607	finally
    //   553	565	607	finally
    //   571	582	607	finally
    //   592	602	607	finally
    //   244	254	643	finally
    //   256	314	643	finally
    //   314	322	643	finally
    //   433	466	643	finally
    //   177	194	652	android/database/sqlite/SQLiteException
    //   198	204	652	android/database/sqlite/SQLiteException
    //   208	244	652	android/database/sqlite/SQLiteException
    //   95	104	657	finally
    //   104	114	657	finally
    //   114	157	657	finally
    //   354	378	670	finally
    //   95	104	675	android/database/sqlite/SQLiteException
    //   104	114	692	android/database/sqlite/SQLiteException
    //   114	157	692	android/database/sqlite/SQLiteException
  }
  
  public void zza(Map<String, String> paramMap, long paramLong, String paramString, Collection<zzik> paramCollection)
  {
    zzgz();
    zzgy();
    zza(paramMap, paramCollection);
    zza(paramMap, paramLong, paramString);
  }
  
  @Deprecated
  void zzb(Collection<zzab> paramCollection)
  {
    if ((paramCollection == null) || (paramCollection.isEmpty()))
    {
      zzae.zzac("Empty/Null collection passed to deleteHits.");
      return;
    }
    String[] arrayOfString = new String[paramCollection.size()];
    paramCollection = paramCollection.iterator();
    int i = 0;
    while (paramCollection.hasNext())
    {
      arrayOfString[i] = String.valueOf(((zzab)paramCollection.next()).zzgs());
      i += 1;
    }
    zzb(arrayOfString);
  }
  
  void zzb(String[] paramArrayOfString)
  {
    boolean bool = true;
    if (paramArrayOfString != null) {}
    label130:
    for (;;)
    {
      try
      {
        if (paramArrayOfString.length == 0)
        {
          zzae.zzac("Empty hitIds passed to deleteHits.");
          return;
        }
        Object localObject = zzar("Error opening database for deleteHits.");
        if (localObject != null)
        {
          String str = String.format("HIT_ID in (%s)", new Object[] { TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
          try
          {
            ((SQLiteDatabase)localObject).delete("hits2", str, paramArrayOfString);
            localObject = zzCb;
            if (zzgA() != 0) {
              break label130;
            }
            ((zze)localObject).zzD(bool);
          }
          catch (SQLiteException localSQLiteException)
          {
            zzae.zzac("Error deleting hits " + TextUtils.join(",", paramArrayOfString));
          }
          continue;
          bool = false;
        }
      }
      finally {}
    }
  }
  
  public zzr zzff()
  {
    return zzEV;
  }
  
  /* Error */
  public android.util.Pair<Long, Long> zzfg()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aconst_null
    //   3: astore_1
    //   4: aload_0
    //   5: monitorenter
    //   6: ldc_w 520
    //   9: invokestatic 525	com/google/android/gms/common/internal/zzx:zzbe	(Ljava/lang/String;)V
    //   12: lconst_0
    //   13: invokestatic 217	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   16: lconst_0
    //   17: invokestatic 217	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   20: invokestatic 531	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   23: astore 4
    //   25: aload_0
    //   26: ldc_w 533
    //   29: invokespecial 202	com/google/android/gms/analytics/zzag:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   32: astore_3
    //   33: aload_3
    //   34: ifnonnull +10 -> 44
    //   37: aload 4
    //   39: astore_2
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_2
    //   43: areturn
    //   44: aload_3
    //   45: getstatic 61	com/google/android/gms/analytics/zzag:zzET	Ljava/lang/String;
    //   48: aconst_null
    //   49: invokevirtual 537	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore 5
    //   54: aload 4
    //   56: astore_3
    //   57: aload 5
    //   59: astore_1
    //   60: aload 5
    //   62: astore_2
    //   63: aload 5
    //   65: invokeinterface 404 1 0
    //   70: ifeq +35 -> 105
    //   73: aload 5
    //   75: astore_1
    //   76: aload 5
    //   78: astore_2
    //   79: aload 5
    //   81: iconst_1
    //   82: invokeinterface 408 2 0
    //   87: invokestatic 217	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   90: aload 5
    //   92: iconst_2
    //   93: invokeinterface 408 2 0
    //   98: invokestatic 217	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   101: invokestatic 531	android/util/Pair:create	(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
    //   104: astore_3
    //   105: aload_3
    //   106: astore_2
    //   107: aload 5
    //   109: ifnull -69 -> 40
    //   112: aload 5
    //   114: invokeinterface 417 1 0
    //   119: aload_3
    //   120: astore_2
    //   121: goto -81 -> 40
    //   124: astore_1
    //   125: aload_0
    //   126: monitorexit
    //   127: aload_1
    //   128: athrow
    //   129: astore_2
    //   130: aload_1
    //   131: astore_2
    //   132: ldc_w 539
    //   135: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   138: aload 4
    //   140: astore_2
    //   141: aload_1
    //   142: ifnull -102 -> 40
    //   145: aload_1
    //   146: invokeinterface 417 1 0
    //   151: aload 4
    //   153: astore_2
    //   154: goto -114 -> 40
    //   157: astore_1
    //   158: aload_2
    //   159: ifnull +9 -> 168
    //   162: aload_2
    //   163: invokeinterface 417 1 0
    //   168: aload_1
    //   169: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	170	0	this	zzag
    //   3	73	1	localObject1	Object
    //   124	22	1	localObject2	Object
    //   157	12	1	localObject3	Object
    //   1	120	2	localObject4	Object
    //   129	1	2	localSQLiteException	SQLiteException
    //   131	32	2	localObject5	Object
    //   32	88	3	localObject6	Object
    //   23	129	4	localPair	android.util.Pair
    //   52	61	5	localCursor	Cursor
    // Exception table:
    //   from	to	target	type
    //   6	33	124	finally
    //   112	119	124	finally
    //   145	151	124	finally
    //   162	168	124	finally
    //   168	170	124	finally
    //   44	54	129	android/database/sqlite/SQLiteException
    //   63	73	129	android/database/sqlite/SQLiteException
    //   79	105	129	android/database/sqlite/SQLiteException
    //   44	54	157	finally
    //   63	73	157	finally
    //   79	105	157	finally
    //   132	138	157	finally
  }
  
  /* Error */
  int zzgA()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 6
    //   6: iconst_0
    //   7: istore_1
    //   8: iconst_0
    //   9: istore_3
    //   10: aload_0
    //   11: monitorenter
    //   12: aload_0
    //   13: ldc_w 542
    //   16: invokespecial 202	com/google/android/gms/analytics/zzag:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore 8
    //   21: aload 8
    //   23: ifnonnull +9 -> 32
    //   26: iload_3
    //   27: istore_2
    //   28: aload_0
    //   29: monitorexit
    //   30: iload_2
    //   31: ireturn
    //   32: aload 8
    //   34: ldc_w 544
    //   37: aconst_null
    //   38: invokevirtual 537	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   41: astore 8
    //   43: aload 8
    //   45: astore 6
    //   47: aload 8
    //   49: astore 7
    //   51: aload 8
    //   53: invokeinterface 404 1 0
    //   58: ifeq +25 -> 83
    //   61: aload 8
    //   63: astore 6
    //   65: aload 8
    //   67: astore 7
    //   69: aload 8
    //   71: iconst_0
    //   72: invokeinterface 408 2 0
    //   77: lstore 4
    //   79: lload 4
    //   81: l2i
    //   82: istore_1
    //   83: iload_1
    //   84: istore_2
    //   85: aload 8
    //   87: ifnull -59 -> 28
    //   90: aload 8
    //   92: invokeinterface 417 1 0
    //   97: iload_1
    //   98: istore_2
    //   99: goto -71 -> 28
    //   102: astore 6
    //   104: aload_0
    //   105: monitorexit
    //   106: aload 6
    //   108: athrow
    //   109: astore 7
    //   111: aload 6
    //   113: astore 7
    //   115: ldc_w 546
    //   118: invokestatic 246	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
    //   121: iload_3
    //   122: istore_2
    //   123: aload 6
    //   125: ifnull -97 -> 28
    //   128: aload 6
    //   130: invokeinterface 417 1 0
    //   135: iload_3
    //   136: istore_2
    //   137: goto -109 -> 28
    //   140: astore 6
    //   142: aload 7
    //   144: ifnull +10 -> 154
    //   147: aload 7
    //   149: invokeinterface 417 1 0
    //   154: aload 6
    //   156: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	157	0	this	zzag
    //   7	91	1	i	int
    //   27	110	2	j	int
    //   9	127	3	k	int
    //   77	3	4	l	long
    //   4	60	6	localObject1	Object
    //   102	27	6	localObject2	Object
    //   140	15	6	localObject3	Object
    //   1	67	7	localObject4	Object
    //   109	1	7	localSQLiteException	SQLiteException
    //   113	35	7	localObject5	Object
    //   19	72	8	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   12	21	102	finally
    //   90	97	102	finally
    //   128	135	102	finally
    //   147	154	102	finally
    //   154	157	102	finally
    //   32	43	109	android/database/sqlite/SQLiteException
    //   51	61	109	android/database/sqlite/SQLiteException
    //   69	79	109	android/database/sqlite/SQLiteException
    //   32	43	140	finally
    //   51	61	140	finally
    //   69	79	140	finally
    //   115	121	140	finally
  }
  
  /* Error */
  int zzgz()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: iconst_0
    //   4: istore_1
    //   5: aload_0
    //   6: monitorenter
    //   7: aload_0
    //   8: getfield 95	com/google/android/gms/analytics/zzag:zzmW	Lcom/google/android/gms/internal/zzlv;
    //   11: invokeinterface 551 1 0
    //   16: lstore_2
    //   17: aload_0
    //   18: getfield 112	com/google/android/gms/analytics/zzag:zzEY	J
    //   21: lstore 4
    //   23: lload_2
    //   24: lload 4
    //   26: ldc2_w 552
    //   29: ladd
    //   30: lcmp
    //   31: ifgt +7 -> 38
    //   34: aload_0
    //   35: monitorexit
    //   36: iload_1
    //   37: ireturn
    //   38: aload_0
    //   39: lload_2
    //   40: putfield 112	com/google/android/gms/analytics/zzag:zzEY	J
    //   43: aload_0
    //   44: ldc_w 555
    //   47: invokespecial 202	com/google/android/gms/analytics/zzag:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   50: astore 7
    //   52: aload 7
    //   54: ifnull -20 -> 34
    //   57: aload 7
    //   59: ldc 39
    //   61: ldc_w 557
    //   64: iconst_1
    //   65: anewarray 51	java/lang/String
    //   68: dup
    //   69: iconst_0
    //   70: aload_0
    //   71: getfield 95	com/google/android/gms/analytics/zzag:zzmW	Lcom/google/android/gms/internal/zzlv;
    //   74: invokeinterface 551 1 0
    //   79: ldc2_w 558
    //   82: lsub
    //   83: invokestatic 561	java/lang/Long:toString	(J)Ljava/lang/String;
    //   86: aastore
    //   87: invokevirtual 509	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   90: istore_1
    //   91: aload_0
    //   92: getfield 87	com/google/android/gms/analytics/zzag:zzCb	Lcom/google/android/gms/analytics/zze;
    //   95: astore 7
    //   97: aload_0
    //   98: invokevirtual 299	com/google/android/gms/analytics/zzag:zzgA	()I
    //   101: ifne +6 -> 107
    //   104: iconst_1
    //   105: istore 6
    //   107: aload 7
    //   109: iload 6
    //   111: invokeinterface 257 2 0
    //   116: goto -82 -> 34
    //   119: astore 7
    //   121: aload_0
    //   122: monitorexit
    //   123: aload 7
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	zzag
    //   4	87	1	i	int
    //   16	24	2	l1	long
    //   21	4	4	l2	long
    //   1	109	6	bool	boolean
    //   50	58	7	localObject1	Object
    //   119	5	7	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   7	23	119	finally
    //   38	52	119	finally
    //   57	97	119	finally
    //   97	104	119	finally
    //   107	116	119	finally
  }
  
  public void zzl(long paramLong)
  {
    boolean bool = true;
    label93:
    for (;;)
    {
      try
      {
        Object localObject1 = zzar("Error opening database for clearHits");
        if (localObject1 != null)
        {
          if (paramLong == 0L)
          {
            ((SQLiteDatabase)localObject1).delete("hits2", null, null);
            localObject1 = zzCb;
            if (zzgA() != 0) {
              break label93;
            }
            ((zze)localObject1).zzD(bool);
          }
        }
        else {
          return;
        }
        ((SQLiteDatabase)localObject1).delete("hits2", "hit_app_id = ?", new String[] { Long.valueOf(paramLong).toString() });
        continue;
        bool = false;
      }
      finally {}
    }
  }
  
  class zza
    extends SQLiteOpenHelper
  {
    private boolean zzFa;
    private long zzFb = 0L;
    
    zza(Context paramContext, String paramString)
    {
      super(paramString, null, 1);
    }
    
    private void zza(SQLiteDatabase paramSQLiteDatabase)
    {
      int j = 0;
      Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", null);
      HashSet localHashSet = new HashSet();
      try
      {
        String[] arrayOfString = localCursor.getColumnNames();
        i = 0;
        while (i < arrayOfString.length)
        {
          localHashSet.add(arrayOfString[i]);
          i += 1;
        }
        localCursor.close();
        if ((!localHashSet.remove("hit_id")) || (!localHashSet.remove("hit_url")) || (!localHashSet.remove("hit_string")) || (!localHashSet.remove("hit_time"))) {
          throw new SQLiteException("Database column missing");
        }
      }
      finally
      {
        localCursor.close();
      }
      int i = j;
      if (!localHashSet.remove("hit_app_id")) {
        i = 1;
      }
      if (!localHashSet.isEmpty()) {
        throw new SQLiteException("Database has extra columns");
      }
      if (i != 0) {
        paramSQLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
      }
    }
    
    /* Error */
    private boolean zza(String paramString, SQLiteDatabase paramSQLiteDatabase)
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore 4
      //   3: aload_2
      //   4: ldc 86
      //   6: iconst_1
      //   7: anewarray 88	java/lang/String
      //   10: dup
      //   11: iconst_0
      //   12: ldc 90
      //   14: aastore
      //   15: ldc 92
      //   17: iconst_1
      //   18: anewarray 88	java/lang/String
      //   21: dup
      //   22: iconst_0
      //   23: aload_1
      //   24: aastore
      //   25: aconst_null
      //   26: aconst_null
      //   27: aconst_null
      //   28: invokevirtual 96	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   31: astore_2
      //   32: aload_2
      //   33: invokeinterface 99 1 0
      //   38: istore_3
      //   39: aload_2
      //   40: ifnull +9 -> 49
      //   43: aload_2
      //   44: invokeinterface 52 1 0
      //   49: iload_3
      //   50: ireturn
      //   51: astore_2
      //   52: aconst_null
      //   53: astore_2
      //   54: new 101	java/lang/StringBuilder
      //   57: dup
      //   58: ldc 103
      //   60: invokespecial 104	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   63: aload_1
      //   64: invokevirtual 108	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   67: invokevirtual 112	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   70: invokestatic 117	com/google/android/gms/analytics/zzae:zzac	(Ljava/lang/String;)V
      //   73: aload_2
      //   74: ifnull +9 -> 83
      //   77: aload_2
      //   78: invokeinterface 52 1 0
      //   83: iconst_0
      //   84: ireturn
      //   85: astore_1
      //   86: aload 4
      //   88: astore_2
      //   89: aload_2
      //   90: ifnull +9 -> 99
      //   93: aload_2
      //   94: invokeinterface 52 1 0
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
      //   0	114	0	this	zza
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
      if ((zzFa) && (zzFb + 3600000L > zzag.zza(zzag.this).currentTimeMillis())) {
        throw new SQLiteException("Database creation failed");
      }
      Object localObject1 = null;
      zzFa = true;
      zzFb = zzag.zza(zzag.this).currentTimeMillis();
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
          zzag.zzc(zzag.this).getDatabasePath(zzag.zzb(zzag.this)).delete();
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
      zzt.zzam(paramSQLiteDatabase.getPath());
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
        if (!zza("hits2", paramSQLiteDatabase))
        {
          paramSQLiteDatabase.execSQL(zzag.zzgB());
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
 * Qualified Name:     com.google.android.gms.analytics.zzag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */