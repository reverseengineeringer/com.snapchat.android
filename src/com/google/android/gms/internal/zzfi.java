package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;

@zzgi
public class zzfi
{
  private static final Object zznh = new Object();
  private static final String zzvs = String.format("CREATE TABLE IF NOT EXISTS %s ( %s INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, %s TEXT NOT NULL, %s TEXT NOT NULL, %s INTEGER)", new Object[] { "InAppPurchase", "purchase_id", "product_id", "developer_payload", "record_time" });
  private static zzfi zzvu;
  private final zza zzvt;
  
  zzfi(Context paramContext)
  {
    zzvt = new zza(paramContext, "google_inapp_purchase.db");
  }
  
  public static zzfi zzm(Context paramContext)
  {
    synchronized (zznh)
    {
      if (zzvu == null) {
        zzvu = new zzfi(paramContext);
      }
      paramContext = zzvu;
      return paramContext;
    }
  }
  
  public int getRecordCount()
  {
    localObject4 = null;
    Object localObject1 = null;
    Object localObject5;
    synchronized (zznh)
    {
      localObject5 = getWritableDatabase();
      if (localObject5 == null) {
        return 0;
      }
    }
    try
    {
      localObject5 = ((SQLiteDatabase)localObject5).rawQuery("select count(*) from InAppPurchase", null);
      localObject1 = localObject5;
      localObject4 = localObject5;
      if (((Cursor)localObject5).moveToFirst())
      {
        localObject1 = localObject5;
        localObject4 = localObject5;
        int i = ((Cursor)localObject5).getInt(0);
        if (localObject5 != null) {
          ((Cursor)localObject5).close();
        }
        return i;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        localObject4 = localObject2;
        zzhx.zzac("Error getting record count" + localSQLiteException.getMessage());
        if (localObject2 != null) {
          ((Cursor)localObject2).close();
        }
      }
    }
    finally
    {
      if (localObject4 == null) {
        break label160;
      }
      ((Cursor)localObject4).close();
    }
    return 0;
  }
  
  public SQLiteDatabase getWritableDatabase()
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = zzvt.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzhx.zzac("Error opening writable conversion tracking database");
    }
    return null;
  }
  
  public zzfg zza(Cursor paramCursor)
  {
    if (paramCursor == null) {
      return null;
    }
    return new zzfg(paramCursor.getLong(0), paramCursor.getString(1), paramCursor.getString(2));
  }
  
  public void zza(zzfg paramzzfg)
  {
    if (paramzzfg == null) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase;
    synchronized (zznh)
    {
      localSQLiteDatabase = getWritableDatabase();
      if (localSQLiteDatabase == null) {
        return;
      }
    }
    localSQLiteDatabase.delete("InAppPurchase", String.format("%s = %d", new Object[] { "purchase_id", Long.valueOf(zzvm) }), null);
  }
  
  public void zzb(zzfg paramzzfg)
  {
    if (paramzzfg == null) {
      return;
    }
    SQLiteDatabase localSQLiteDatabase;
    synchronized (zznh)
    {
      localSQLiteDatabase = getWritableDatabase();
      if (localSQLiteDatabase == null) {
        return;
      }
    }
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("product_id", zzvo);
    localContentValues.put("developer_payload", zzvn);
    localContentValues.put("record_time", Long.valueOf(SystemClock.elapsedRealtime()));
    zzvm = localSQLiteDatabase.insert("InAppPurchase", null, localContentValues);
    if (getRecordCount() > 20000L) {
      zzdz();
    }
  }
  
  /* Error */
  public void zzdz()
  {
    // Byte code:
    //   0: getstatic 43	com/google/android/gms/internal/zzfi:zznh	Ljava/lang/Object;
    //   3: astore 4
    //   5: aload 4
    //   7: monitorenter
    //   8: aload_0
    //   9: invokevirtual 68	com/google/android/gms/internal/zzfi:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   12: astore_1
    //   13: aload_1
    //   14: ifnonnull +7 -> 21
    //   17: aload 4
    //   19: monitorexit
    //   20: return
    //   21: aload_1
    //   22: ldc 22
    //   24: aconst_null
    //   25: aconst_null
    //   26: aconst_null
    //   27: aconst_null
    //   28: aconst_null
    //   29: ldc -75
    //   31: ldc -73
    //   33: invokevirtual 187	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   36: astore_2
    //   37: aload_2
    //   38: ifnull +25 -> 63
    //   41: aload_2
    //   42: astore_1
    //   43: aload_2
    //   44: invokeinterface 82 1 0
    //   49: ifeq +14 -> 63
    //   52: aload_2
    //   53: astore_1
    //   54: aload_0
    //   55: aload_0
    //   56: aload_2
    //   57: invokevirtual 189	com/google/android/gms/internal/zzfi:zza	(Landroid/database/Cursor;)Lcom/google/android/gms/internal/zzfg;
    //   60: invokevirtual 191	com/google/android/gms/internal/zzfi:zza	(Lcom/google/android/gms/internal/zzfg;)V
    //   63: aload_2
    //   64: ifnull +9 -> 73
    //   67: aload_2
    //   68: invokeinterface 89 1 0
    //   73: aload 4
    //   75: monitorexit
    //   76: return
    //   77: astore_1
    //   78: aload 4
    //   80: monitorexit
    //   81: aload_1
    //   82: athrow
    //   83: astore_3
    //   84: aconst_null
    //   85: astore_2
    //   86: aload_2
    //   87: astore_1
    //   88: new 91	java/lang/StringBuilder
    //   91: dup
    //   92: ldc -63
    //   94: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   97: aload_3
    //   98: invokevirtual 99	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   101: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   107: invokestatic 111	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   110: aload_2
    //   111: ifnull -38 -> 73
    //   114: aload_2
    //   115: invokeinterface 89 1 0
    //   120: goto -47 -> 73
    //   123: aload_1
    //   124: ifnull +9 -> 133
    //   127: aload_1
    //   128: invokeinterface 89 1 0
    //   133: aload_2
    //   134: athrow
    //   135: astore_2
    //   136: goto -13 -> 123
    //   139: astore_3
    //   140: goto -54 -> 86
    //   143: astore_2
    //   144: aconst_null
    //   145: astore_1
    //   146: goto -23 -> 123
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	zzfi
    //   12	42	1	localObject1	Object
    //   77	5	1	localObject2	Object
    //   87	59	1	localObject3	Object
    //   36	98	2	localCursor	Cursor
    //   135	1	2	localObject4	Object
    //   143	1	2	localObject5	Object
    //   83	15	3	localSQLiteException1	SQLiteException
    //   139	1	3	localSQLiteException2	SQLiteException
    //   3	76	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   8	13	77	finally
    //   17	20	77	finally
    //   67	73	77	finally
    //   73	76	77	finally
    //   78	81	77	finally
    //   114	120	77	finally
    //   127	133	77	finally
    //   133	135	77	finally
    //   21	37	83	android/database/sqlite/SQLiteException
    //   43	52	135	finally
    //   54	63	135	finally
    //   88	110	135	finally
    //   43	52	139	android/database/sqlite/SQLiteException
    //   54	63	139	android/database/sqlite/SQLiteException
    //   21	37	143	finally
  }
  
  /* Error */
  public java.util.List<zzfg> zze(long paramLong)
  {
    // Byte code:
    //   0: getstatic 43	com/google/android/gms/internal/zzfi:zznh	Ljava/lang/Object;
    //   3: astore 7
    //   5: aload 7
    //   7: monitorenter
    //   8: new 197	java/util/LinkedList
    //   11: dup
    //   12: invokespecial 198	java/util/LinkedList:<init>	()V
    //   15: astore 8
    //   17: lload_1
    //   18: lconst_0
    //   19: lcmp
    //   20: ifgt +9 -> 29
    //   23: aload 7
    //   25: monitorexit
    //   26: aload 8
    //   28: areturn
    //   29: aload_0
    //   30: invokevirtual 68	com/google/android/gms/internal/zzfi:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   33: astore 4
    //   35: aload 4
    //   37: ifnonnull +9 -> 46
    //   40: aload 7
    //   42: monitorexit
    //   43: aload 8
    //   45: areturn
    //   46: aload 4
    //   48: ldc 22
    //   50: aconst_null
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: aconst_null
    //   55: ldc -75
    //   57: lload_1
    //   58: invokestatic 201	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   61: invokevirtual 187	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   64: astore 5
    //   66: aload 5
    //   68: astore 4
    //   70: aload 5
    //   72: invokeinterface 82 1 0
    //   77: ifeq +37 -> 114
    //   80: aload 5
    //   82: astore 4
    //   84: aload 8
    //   86: aload_0
    //   87: aload 5
    //   89: invokevirtual 189	com/google/android/gms/internal/zzfi:zza	(Landroid/database/Cursor;)Lcom/google/android/gms/internal/zzfg;
    //   92: invokeinterface 207 2 0
    //   97: pop
    //   98: aload 5
    //   100: astore 4
    //   102: aload 5
    //   104: invokeinterface 210 1 0
    //   109: istore_3
    //   110: iload_3
    //   111: ifne -31 -> 80
    //   114: aload 5
    //   116: ifnull +10 -> 126
    //   119: aload 5
    //   121: invokeinterface 89 1 0
    //   126: aload 7
    //   128: monitorexit
    //   129: aload 8
    //   131: areturn
    //   132: astore 6
    //   134: aconst_null
    //   135: astore 5
    //   137: aload 5
    //   139: astore 4
    //   141: new 91	java/lang/StringBuilder
    //   144: dup
    //   145: ldc -44
    //   147: invokespecial 96	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   150: aload 6
    //   152: invokevirtual 99	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   155: invokevirtual 103	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   158: invokevirtual 106	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   161: invokestatic 111	com/google/android/gms/internal/zzhx:zzac	(Ljava/lang/String;)V
    //   164: aload 5
    //   166: ifnull -40 -> 126
    //   169: aload 5
    //   171: invokeinterface 89 1 0
    //   176: goto -50 -> 126
    //   179: astore 4
    //   181: aload 7
    //   183: monitorexit
    //   184: aload 4
    //   186: athrow
    //   187: astore 5
    //   189: aconst_null
    //   190: astore 4
    //   192: aload 4
    //   194: ifnull +10 -> 204
    //   197: aload 4
    //   199: invokeinterface 89 1 0
    //   204: aload 5
    //   206: athrow
    //   207: astore 5
    //   209: goto -17 -> 192
    //   212: astore 6
    //   214: goto -77 -> 137
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	217	0	this	zzfi
    //   0	217	1	paramLong	long
    //   109	2	3	bool	boolean
    //   33	107	4	localObject1	Object
    //   179	6	4	localObject2	Object
    //   190	8	4	localObject3	Object
    //   64	106	5	localCursor	Cursor
    //   187	18	5	localObject4	Object
    //   207	1	5	localObject5	Object
    //   132	19	6	localSQLiteException1	SQLiteException
    //   212	1	6	localSQLiteException2	SQLiteException
    //   3	179	7	localObject6	Object
    //   15	115	8	localLinkedList	java.util.LinkedList
    // Exception table:
    //   from	to	target	type
    //   46	66	132	android/database/sqlite/SQLiteException
    //   8	17	179	finally
    //   23	26	179	finally
    //   29	35	179	finally
    //   40	43	179	finally
    //   119	126	179	finally
    //   126	129	179	finally
    //   169	176	179	finally
    //   181	184	179	finally
    //   197	204	179	finally
    //   204	207	179	finally
    //   46	66	187	finally
    //   70	80	207	finally
    //   84	98	207	finally
    //   102	110	207	finally
    //   141	164	207	finally
    //   70	80	212	android/database/sqlite/SQLiteException
    //   84	98	212	android/database/sqlite/SQLiteException
    //   102	110	212	android/database/sqlite/SQLiteException
  }
  
  public class zza
    extends SQLiteOpenHelper
  {
    public zza(Context paramContext, String paramString)
    {
      super(paramString, null, 4);
    }
    
    public void onCreate(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase.execSQL(zzfi.zzdA());
    }
    
    public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
    {
      zzhx.zzaa("Database updated from version " + paramInt1 + " to version " + paramInt2);
      paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS InAppPurchase");
      onCreate(paramSQLiteDatabase);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */