package com.google.android.gms.tagmanager;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build.VERSION;
import java.io.File;
import java.util.HashSet;
import java.util.Set;

class zzv$zza
  extends SQLiteOpenHelper
{
  zzv$zza(zzv paramzzv, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 1);
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
        zzv.zzb(zzayt).getDatabasePath("google_tagmanager.db").delete();
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

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzv.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */