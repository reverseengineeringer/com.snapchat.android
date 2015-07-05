package com.snapchat.android.database;

import ajx;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import cgb;
import com.snapchat.android.Timber;
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
  private final ajx b;
  
  private DatabaseHelper(Context paramContext, ajx paramajx)
  {
    super(paramContext, "tcspahn.db", null, 199);
    b = paramajx;
  }
  
  public static DatabaseHelper a(Context paramContext)
  {
    try
    {
      if (a == null) {
        a = new DatabaseHelper(paramContext, ajx.a());
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
    ajx.aC();
  }
  
  private static void a(@cgb SQLiteDatabase paramSQLiteDatabase, @cgb TableType paramTableType)
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
      if (paramTableType == TableType.TABLE)
      {
        DbTable.b(paramSQLiteDatabase, (String)localObject2);
      }
      else if (paramTableType == TableType.VIEW)
      {
        Timber.c("DbVirtualTable", "Drop virtual table " + (String)localObject2, new Object[0]);
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
    int i = 0;
    Timber.c("DatabaseHelper", "Creating Database", new Object[0]);
    DbTable.DatabaseTable[] arrayOfDatabaseTable = DbTable.DatabaseTable.values();
    int j = arrayOfDatabaseTable.length;
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
    Timber.e("DatabaseHelper", "Downgrading database from version %d to %d, which will destroy all old data", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
    a(paramSQLiteDatabase);
  }
  
  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    Timber.e("DatabaseHelper", "Upgrading database from version %d to %d, which will destroy all old data", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) });
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