package com.google.android.gms.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class zzfi$zza
  extends SQLiteOpenHelper
{
  public zzfi$zza(zzfi paramzzfi, Context paramContext, String paramString)
  {
    super(paramContext, paramString, null, 4);
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

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfi.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */