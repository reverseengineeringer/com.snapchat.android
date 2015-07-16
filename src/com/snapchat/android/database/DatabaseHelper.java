package com.snapchat.android.database;

import akr;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import chc;
import com.snapchat.android.database.table.DbTable;
import com.snapchat.android.database.table.DbTable.DatabaseTable;
import com.snapchat.android.database.vtable.DbVirtualTable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class DatabaseHelper
  extends SQLiteOpenHelper
{
  private static DatabaseHelper a;
  private final akr b;
  
  private DatabaseHelper(Context paramContext, akr paramakr)
  {
    super(paramContext, "tcspahn.db", null, 206);
    b = paramakr;
  }
  
  public static DatabaseHelper a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new DatabaseHelper(paramContext, akr.a());
      }
      paramContext = a;
      return paramContext;
    }
    finally {}
  }
  
  private void a(SQLiteDatabase paramSQLiteDatabase)
  {
    a(paramSQLiteDatabase, TableType.TABLE);
    a(paramSQLiteDatabase, TableType.VIEW);
    onCreate(paramSQLiteDatabase);
    akr.aB();
  }
  
  private static void a(@chc SQLiteDatabase paramSQLiteDatabase, @chc TableType paramTableType)
  {
    Object localObject1 = new ArrayList();
    Object localObject2 = paramTableType.getType();
    localObject2 = paramSQLiteDatabase.query("sqlite_master", new String[] { "name" }, "type=? AND name NOT LIKE ? AND name NOT LIKE ?", new String[] { localObject2, "sqlite_%", "android_metadata" }, null, null, null);
    if ((localObject2 != null) && (((Cursor)localObject2).moveToFirst())) {
      do
      {
        String str = ((Cursor)localObject2).getString(0);
        if (!TextUtils.isEmpty(str)) {
          ((ArrayList)localObject1).add(str);
        }
      } while (((Cursor)localObject2).moveToNext());
    }
    localObject1 = ((List)localObject1).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (String)((Iterator)localObject1).next();
      if (paramTableType == TableType.TABLE) {
        DbTable.b(paramSQLiteDatabase, (String)localObject2);
      } else if (paramTableType == TableType.VIEW) {
        paramSQLiteDatabase.execSQL("DROP VIEW IF EXISTS " + (String)localObject2);
      }
    }
  }
  
  public final void close()
  {
    super.close();
  }
  
  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
    int j = arrayOfDatabaseTable.length;
    int i = 0;
    while (i < j)
    {
      DbTable localDbTable = arrayOfDatabaseTable[i].getTable();
      paramSQLiteDatabase.execSQL("CREATE TABLE " + localDbTable.c() + " (" + localDbTable.d() + ");");
      i += 1;
    }
    DbVirtualTable.a(paramSQLiteDatabase);
  }
  
  public final void onDowngrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    a(paramSQLiteDatabase);
  }
  
  public static enum TableType
  {
    TABLE("table"),  VIEW("view");
    
    private final String a;
    
    private TableType(String paramString)
    {
      a = paramString;
    }
    
    public final String getType()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.DatabaseHelper
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */