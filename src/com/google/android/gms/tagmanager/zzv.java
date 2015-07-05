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
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class zzv
  implements DataLayer.zzc
{
  private static final String zzayn = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", new Object[] { "datalayer", "ID", "key", "value", "expires" });
  private final Context mContext;
  private final Executor zzayo;
  private zza zzayp;
  private int zzayq;
  private zzlv zzmW;
  
  public zzv(Context paramContext)
  {
    this(paramContext, zzlx.zzkc(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
  }
  
  zzv(Context paramContext, zzlv paramzzlv, String paramString, int paramInt, Executor paramExecutor)
  {
    mContext = paramContext;
    zzmW = paramzzlv;
    zzayq = paramInt;
    zzayo = paramExecutor;
    zzayp = new zza(mContext, paramString);
  }
  
  private void zzG(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = zzar("Error opening database for deleteOlderThan.");
    if (localSQLiteDatabase == null) {
      return;
    }
    try
    {
      int i = localSQLiteDatabase.delete("datalayer", "expires <= ?", new String[] { Long.toString(paramLong) });
      zzbf.zzab("Deleted " + i + " expired items");
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac("Error deleting old entries.");
    }
  }
  
  private SQLiteDatabase zzar(String paramString)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = zzayp.getWritableDatabase();
      return localSQLiteDatabase;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac(paramString);
    }
    return null;
  }
  
  /* Error */
  private void zzb(List<zzb> paramList, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 78	com/google/android/gms/tagmanager/zzv:zzmW	Lcom/google/android/gms/internal/zzlv;
    //   6: invokeinterface 164 1 0
    //   11: lstore 4
    //   13: aload_0
    //   14: lload 4
    //   16: invokespecial 166	com/google/android/gms/tagmanager/zzv:zzG	(J)V
    //   19: aload_0
    //   20: aload_1
    //   21: invokeinterface 172 1 0
    //   26: invokespecial 176	com/google/android/gms/tagmanager/zzv:zzhd	(I)V
    //   29: aload_0
    //   30: aload_1
    //   31: lload 4
    //   33: lload_2
    //   34: ladd
    //   35: invokespecial 179	com/google/android/gms/tagmanager/zzv:zzc	(Ljava/util/List;J)V
    //   38: aload_0
    //   39: invokespecial 182	com/google/android/gms/tagmanager/zzv:zztb	()V
    //   42: aload_0
    //   43: monitorexit
    //   44: return
    //   45: astore_1
    //   46: aload_0
    //   47: invokespecial 182	com/google/android/gms/tagmanager/zzv:zztb	()V
    //   50: aload_1
    //   51: athrow
    //   52: astore_1
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_1
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	zzv
    //   0	57	1	paramList	List<zzb>
    //   0	57	2	paramLong	long
    //   11	21	4	l	long
    // Exception table:
    //   from	to	target	type
    //   2	38	45	finally
    //   38	42	52	finally
    //   46	52	52	finally
  }
  
  private void zzc(List<zzb> paramList, long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = zzar("Error opening database for writeEntryToDatabase.");
    if (localSQLiteDatabase == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        zzb localzzb = (zzb)paramList.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("expires", Long.valueOf(paramLong));
        localContentValues.put("key", zzqd);
        localContentValues.put("value", zzayw);
        localSQLiteDatabase.insert("datalayer", null, localContentValues);
      }
    }
  }
  
  private void zzcX(String paramString)
  {
    SQLiteDatabase localSQLiteDatabase = zzar("Error opening database for clearKeysWithPrefix.");
    if (localSQLiteDatabase == null) {
      return;
    }
    try
    {
      int i = localSQLiteDatabase.delete("datalayer", "key = ? OR key LIKE ?", new String[] { paramString, paramString + ".%" });
      zzbf.zzab("Cleared " + i + " items");
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac("Error deleting entries with key prefix: " + paramString + " (" + localSQLiteException + ").");
      return;
    }
    finally
    {
      zztb();
    }
  }
  
  private void zzg(String[] paramArrayOfString)
  {
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0)) {}
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      return;
      localSQLiteDatabase = zzar("Error opening database for deleteEntries.");
    } while (localSQLiteDatabase == null);
    String str = String.format("%s in (%s)", new Object[] { "ID", TextUtils.join(",", Collections.nCopies(paramArrayOfString.length, "?")) });
    try
    {
      localSQLiteDatabase.delete("datalayer", str, paramArrayOfString);
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      zzbf.zzac("Error deleting entries " + Arrays.toString(paramArrayOfString));
    }
  }
  
  private void zzhd(int paramInt)
  {
    paramInt = zzta() - zzayq + paramInt;
    if (paramInt > 0)
    {
      List localList = zzhe(paramInt);
      zzbf.zzaa("DataLayer store full, deleting " + localList.size() + " entries to make room.");
      zzg((String[])localList.toArray(new String[0]));
    }
  }
  
  /* Error */
  private List<String> zzhe(int paramInt)
  {
    // Byte code:
    //   0: new 301	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 302	java/util/ArrayList:<init>	()V
    //   7: astore 6
    //   9: iload_1
    //   10: ifgt +12 -> 22
    //   13: ldc_w 304
    //   16: invokestatic 140	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   19: aload 6
    //   21: areturn
    //   22: aload_0
    //   23: ldc_w 306
    //   26: invokespecial 97	com/google/android/gms/tagmanager/zzv:zzar	(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    //   29: astore_3
    //   30: aload_3
    //   31: ifnonnull +6 -> 37
    //   34: aload 6
    //   36: areturn
    //   37: ldc_w 308
    //   40: iconst_1
    //   41: anewarray 4	java/lang/Object
    //   44: dup
    //   45: iconst_0
    //   46: ldc 38
    //   48: aastore
    //   49: invokestatic 50	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   52: astore 4
    //   54: iload_1
    //   55: invokestatic 313	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   58: astore 5
    //   60: aload_3
    //   61: ldc 36
    //   63: iconst_1
    //   64: anewarray 46	java/lang/String
    //   67: dup
    //   68: iconst_0
    //   69: ldc 38
    //   71: aastore
    //   72: aconst_null
    //   73: aconst_null
    //   74: aconst_null
    //   75: aconst_null
    //   76: aload 4
    //   78: aload 5
    //   80: invokevirtual 317	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   83: astore 4
    //   85: aload 4
    //   87: astore_3
    //   88: aload 4
    //   90: invokeinterface 322 1 0
    //   95: ifeq +40 -> 135
    //   98: aload 4
    //   100: astore_3
    //   101: aload 6
    //   103: aload 4
    //   105: iconst_0
    //   106: invokeinterface 326 2 0
    //   111: invokestatic 328	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   114: invokeinterface 332 2 0
    //   119: pop
    //   120: aload 4
    //   122: astore_3
    //   123: aload 4
    //   125: invokeinterface 335 1 0
    //   130: istore_2
    //   131: iload_2
    //   132: ifne -34 -> 98
    //   135: aload 4
    //   137: ifnull +10 -> 147
    //   140: aload 4
    //   142: invokeinterface 338 1 0
    //   147: aload 6
    //   149: areturn
    //   150: astore 5
    //   152: aconst_null
    //   153: astore 4
    //   155: aload 4
    //   157: astore_3
    //   158: new 113	java/lang/StringBuilder
    //   161: dup
    //   162: ldc_w 340
    //   165: invokespecial 118	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   168: aload 5
    //   170: invokevirtual 343	android/database/sqlite/SQLiteException:getMessage	()Ljava/lang/String;
    //   173: invokevirtual 127	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   176: invokevirtual 130	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   179: invokestatic 140	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
    //   182: aload 4
    //   184: ifnull -37 -> 147
    //   187: aload 4
    //   189: invokeinterface 338 1 0
    //   194: goto -47 -> 147
    //   197: astore 4
    //   199: aconst_null
    //   200: astore_3
    //   201: aload_3
    //   202: ifnull +9 -> 211
    //   205: aload_3
    //   206: invokeinterface 338 1 0
    //   211: aload 4
    //   213: athrow
    //   214: astore 4
    //   216: goto -15 -> 201
    //   219: astore 5
    //   221: goto -66 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	224	0	this	zzv
    //   0	224	1	paramInt	int
    //   130	2	2	bool	boolean
    //   29	177	3	localObject1	Object
    //   52	136	4	localObject2	Object
    //   197	15	4	localObject3	Object
    //   214	1	4	localObject4	Object
    //   58	21	5	str	String
    //   150	19	5	localSQLiteException1	SQLiteException
    //   219	1	5	localSQLiteException2	SQLiteException
    //   7	141	6	localArrayList	ArrayList
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
  private Object zzk(byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: new 352	java/io/ByteArrayInputStream
    //   3: dup
    //   4: aload_1
    //   5: invokespecial 355	java/io/ByteArrayInputStream:<init>	([B)V
    //   8: astore_3
    //   9: new 357	java/io/ObjectInputStream
    //   12: dup
    //   13: aload_3
    //   14: invokespecial 360	java/io/ObjectInputStream:<init>	(Ljava/io/InputStream;)V
    //   17: astore_1
    //   18: aload_1
    //   19: invokevirtual 363	java/io/ObjectInputStream:readObject	()Ljava/lang/Object;
    //   22: astore_2
    //   23: aload_1
    //   24: invokevirtual 364	java/io/ObjectInputStream:close	()V
    //   27: aload_3
    //   28: invokevirtual 365	java/io/ByteArrayInputStream:close	()V
    //   31: aload_2
    //   32: areturn
    //   33: astore_1
    //   34: aconst_null
    //   35: astore_1
    //   36: aload_1
    //   37: ifnull +7 -> 44
    //   40: aload_1
    //   41: invokevirtual 364	java/io/ObjectInputStream:close	()V
    //   44: aload_3
    //   45: invokevirtual 365	java/io/ByteArrayInputStream:close	()V
    //   48: aconst_null
    //   49: areturn
    //   50: astore_1
    //   51: aconst_null
    //   52: areturn
    //   53: astore_1
    //   54: aconst_null
    //   55: astore_1
    //   56: aload_1
    //   57: ifnull +7 -> 64
    //   60: aload_1
    //   61: invokevirtual 364	java/io/ObjectInputStream:close	()V
    //   64: aload_3
    //   65: invokevirtual 365	java/io/ByteArrayInputStream:close	()V
    //   68: aconst_null
    //   69: areturn
    //   70: astore_1
    //   71: aconst_null
    //   72: areturn
    //   73: astore_2
    //   74: aconst_null
    //   75: astore_1
    //   76: aload_1
    //   77: ifnull +7 -> 84
    //   80: aload_1
    //   81: invokevirtual 364	java/io/ObjectInputStream:close	()V
    //   84: aload_3
    //   85: invokevirtual 365	java/io/ByteArrayInputStream:close	()V
    //   88: aload_2
    //   89: athrow
    //   90: astore_1
    //   91: goto -3 -> 88
    //   94: astore_2
    //   95: goto -19 -> 76
    //   98: astore_2
    //   99: goto -43 -> 56
    //   102: astore_2
    //   103: goto -67 -> 36
    //   106: astore_1
    //   107: aload_2
    //   108: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	zzv
    //   0	109	1	paramArrayOfByte	byte[]
    //   22	10	2	localObject1	Object
    //   73	16	2	localObject2	Object
    //   94	1	2	localObject3	Object
    //   98	1	2	localClassNotFoundException	ClassNotFoundException
    //   102	6	2	localIOException	java.io.IOException
    //   8	77	3	localByteArrayInputStream	java.io.ByteArrayInputStream
    // Exception table:
    //   from	to	target	type
    //   9	18	33	java/io/IOException
    //   40	44	50	java/io/IOException
    //   44	48	50	java/io/IOException
    //   9	18	53	java/lang/ClassNotFoundException
    //   60	64	70	java/io/IOException
    //   64	68	70	java/io/IOException
    //   9	18	73	finally
    //   80	84	90	java/io/IOException
    //   84	88	90	java/io/IOException
    //   18	23	94	finally
    //   18	23	98	java/lang/ClassNotFoundException
    //   18	23	102	java/io/IOException
    //   23	31	106	java/io/IOException
  }
  
  /* Error */
  private byte[] zzp(Object paramObject)
  {
    // Byte code:
    //   0: new 369	java/io/ByteArrayOutputStream
    //   3: dup
    //   4: invokespecial 370	java/io/ByteArrayOutputStream:<init>	()V
    //   7: astore_3
    //   8: new 372	java/io/ObjectOutputStream
    //   11: dup
    //   12: aload_3
    //   13: invokespecial 375	java/io/ObjectOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   16: astore_2
    //   17: aload_2
    //   18: aload_1
    //   19: invokevirtual 379	java/io/ObjectOutputStream:writeObject	(Ljava/lang/Object;)V
    //   22: aload_3
    //   23: invokevirtual 383	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   26: astore_1
    //   27: aload_2
    //   28: invokevirtual 384	java/io/ObjectOutputStream:close	()V
    //   31: aload_3
    //   32: invokevirtual 385	java/io/ByteArrayOutputStream:close	()V
    //   35: aload_1
    //   36: areturn
    //   37: astore_1
    //   38: aconst_null
    //   39: astore_2
    //   40: aload_2
    //   41: ifnull +7 -> 48
    //   44: aload_2
    //   45: invokevirtual 384	java/io/ObjectOutputStream:close	()V
    //   48: aload_3
    //   49: invokevirtual 385	java/io/ByteArrayOutputStream:close	()V
    //   52: aconst_null
    //   53: areturn
    //   54: astore_1
    //   55: aconst_null
    //   56: areturn
    //   57: astore_1
    //   58: aconst_null
    //   59: astore_2
    //   60: aload_2
    //   61: ifnull +7 -> 68
    //   64: aload_2
    //   65: invokevirtual 384	java/io/ObjectOutputStream:close	()V
    //   68: aload_3
    //   69: invokevirtual 385	java/io/ByteArrayOutputStream:close	()V
    //   72: aload_1
    //   73: athrow
    //   74: astore_2
    //   75: goto -3 -> 72
    //   78: astore_1
    //   79: goto -19 -> 60
    //   82: astore_1
    //   83: goto -43 -> 40
    //   86: astore_2
    //   87: aload_1
    //   88: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	89	0	this	zzv
    //   0	89	1	paramObject	Object
    //   16	49	2	localObjectOutputStream	java.io.ObjectOutputStream
    //   74	1	2	localIOException1	java.io.IOException
    //   86	1	2	localIOException2	java.io.IOException
    //   7	62	3	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    // Exception table:
    //   from	to	target	type
    //   8	17	37	java/io/IOException
    //   44	48	54	java/io/IOException
    //   48	52	54	java/io/IOException
    //   8	17	57	finally
    //   64	68	74	java/io/IOException
    //   68	72	74	java/io/IOException
    //   17	27	78	finally
    //   17	27	82	java/io/IOException
    //   27	35	86	java/io/IOException
  }
  
  private List<DataLayer.zza> zzr(List<zzb> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      zzb localzzb = (zzb)paramList.next();
      localArrayList.add(new DataLayer.zza(zzqd, zzk(zzayw)));
    }
    return localArrayList;
  }
  
  private List<zzb> zzs(List<DataLayer.zza> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DataLayer.zza localzza = (DataLayer.zza)paramList.next();
      localArrayList.add(new zzb(zzqd, zzp(zzzt)));
    }
    return localArrayList;
  }
  
  private List<DataLayer.zza> zzsY()
  {
    try
    {
      zzG(zzmW.currentTimeMillis());
      List localList = zzr(zzsZ());
      return localList;
    }
    finally
    {
      zztb();
    }
  }
  
  private List<zzb> zzsZ()
  {
    Object localObject = zzar("Error opening database for loadSerialized.");
    ArrayList localArrayList = new ArrayList();
    if (localObject == null) {
      return localArrayList;
    }
    localObject = ((SQLiteDatabase)localObject).query("datalayer", new String[] { "key", "value" }, null, null, null, null, "ID", null);
    try
    {
      if (((Cursor)localObject).moveToNext()) {
        localArrayList.add(new zzb(((Cursor)localObject).getString(0), ((Cursor)localObject).getBlob(1)));
      }
      return localList;
    }
    finally
    {
      ((Cursor)localObject).close();
    }
  }
  
  private int zzta()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    int i = 0;
    int j = 0;
    Object localObject5 = zzar("Error opening database for getNumStoredEntries.");
    if (localObject5 == null) {}
    for (;;)
    {
      return j;
      try
      {
        localObject5 = ((SQLiteDatabase)localObject5).rawQuery("SELECT COUNT(*) from datalayer", null);
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
        zzbf.zzac("Error getting numStoredEntries");
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
  
  private void zztb()
  {
    try
    {
      zzayp.close();
      return;
    }
    catch (SQLiteException localSQLiteException) {}
  }
  
  public void zza(final DataLayer.zzc.zza paramzza)
  {
    zzayo.execute(new Runnable()
    {
      public void run()
      {
        paramzza.zzq(zzv.zza(zzv.this));
      }
    });
  }
  
  public void zza(final List<DataLayer.zza> paramList, final long paramLong)
  {
    paramList = zzs(paramList);
    zzayo.execute(new Runnable()
    {
      public void run()
      {
        zzv.zza(zzv.this, paramList, paramLong);
      }
    });
  }
  
  public void zzcW(final String paramString)
  {
    zzayo.execute(new Runnable()
    {
      public void run()
      {
        zzv.zza(zzv.this, paramString);
      }
    });
  }
  
  class zza
    extends SQLiteOpenHelper
  {
    zza(Context paramContext, String paramString)
    {
      super(paramString, null, 1);
    }
    
    private void zza(SQLiteDatabase paramSQLiteDatabase)
    {
      paramSQLiteDatabase = paramSQLiteDatabase.rawQuery("SELECT * FROM datalayer WHERE 0", null);
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
        if ((!localHashSet.remove("key")) || (!localHashSet.remove("value")) || (!localHashSet.remove("ID")) || (!localHashSet.remove("expires"))) {
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
      //   4: ldc 73
      //   6: iconst_1
      //   7: anewarray 75	java/lang/String
      //   10: dup
      //   11: iconst_0
      //   12: ldc 77
      //   14: aastore
      //   15: ldc 79
      //   17: iconst_1
      //   18: anewarray 75	java/lang/String
      //   21: dup
      //   22: iconst_0
      //   23: aload_1
      //   24: aastore
      //   25: aconst_null
      //   26: aconst_null
      //   27: aconst_null
      //   28: invokevirtual 83	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
      //   31: astore_2
      //   32: aload_2
      //   33: invokeinterface 86 1 0
      //   38: istore_3
      //   39: aload_2
      //   40: ifnull +9 -> 49
      //   43: aload_2
      //   44: invokeinterface 46 1 0
      //   49: iload_3
      //   50: ireturn
      //   51: astore_2
      //   52: aconst_null
      //   53: astore_2
      //   54: new 88	java/lang/StringBuilder
      //   57: dup
      //   58: ldc 90
      //   60: invokespecial 91	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
      //   63: aload_1
      //   64: invokevirtual 95	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
      //   67: invokevirtual 99	java/lang/StringBuilder:toString	()Ljava/lang/String;
      //   70: invokestatic 104	com/google/android/gms/tagmanager/zzbf:zzac	(Ljava/lang/String;)V
      //   73: aload_2
      //   74: ifnull +9 -> 83
      //   77: aload_2
      //   78: invokeinterface 46 1 0
      //   83: iconst_0
      //   84: ireturn
      //   85: astore_1
      //   86: aload 4
      //   88: astore_2
      //   89: aload_2
      //   90: ifnull +9 -> 99
      //   93: aload_2
      //   94: invokeinterface 46 1 0
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
      Object localObject1 = null;
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
          zzv.zzb(zzv.this).getDatabasePath("google_tagmanager.db").delete();
        }
      }
      localObject2 = localObject1;
      if (localObject1 == null) {
        localObject2 = super.getWritableDatabase();
      }
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
        if (!zza("datalayer", paramSQLiteDatabase))
        {
          paramSQLiteDatabase.execSQL(zzv.zztc());
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
  
  static class zzb
  {
    final byte[] zzayw;
    final String zzqd;
    
    zzb(String paramString, byte[] paramArrayOfByte)
    {
      zzqd = paramString;
      zzayw = paramArrayOfByte;
    }
    
    public String toString()
    {
      return "KeyAndSerialized: key = " + zzqd + " serialized hash = " + Arrays.hashCode(zzayw);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */