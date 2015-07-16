package com.snapchat.android.discover.model.database.table;

import aau;
import aav;
import abc;
import aef;
import aef.b;
import akp;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import chc;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import com.snapchat.android.database.table.DbTable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.apache.http.util.TextUtils;

public final class DSnapViewStateTable
  extends DbTable<aef.b>
{
  public static final String[] a;
  public static final HashMap<String, String> b;
  private static final DSnapViewStateTable c = new DSnapViewStateTable();
  private final aef d;
  
  static
  {
    DSnapViewStateSchema[] arrayOfDSnapViewStateSchema = DSnapViewStateSchema.values();
    int j = arrayOfDSnapViewStateSchema.length;
    a = new String[j];
    b = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      DSnapViewStateSchema localDSnapViewStateSchema = arrayOfDSnapViewStateSchema[i];
      a[i] = arrayOfDSnapViewStateSchema[i].getColumnName();
      b.put(localDSnapViewStateSchema.getColumnName(), localDSnapViewStateSchema.getColumnName());
      i += 1;
    }
  }
  
  protected DSnapViewStateTable()
  {
    this(aef.a());
  }
  
  private DSnapViewStateTable(aef paramaef)
  {
    d = paramaef;
  }
  
  private static ContentValues a(@chc aef.b paramb)
  {
    return abcaIDa).a(DSnapViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS, b).a;
  }
  
  public static DSnapViewStateTable a()
  {
    return c;
  }
  
  private static List<aef.b> a(@chc SQLiteDatabase paramSQLiteDatabase)
  {
    ArrayList localArrayList = new ArrayList();
    paramSQLiteDatabase = paramSQLiteDatabase.query("DSnapViewState", a, null, null, null, null, null);
    if (paramSQLiteDatabase != null) {}
    try
    {
      if (paramSQLiteDatabase.moveToFirst())
      {
        boolean bool;
        do
        {
          localArrayList.add(new aef.b(paramSQLiteDatabase.getString(DSnapViewStateSchema.ID.getColumnNumber()), paramSQLiteDatabase.getLong(DSnapViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS.getColumnNumber())));
          bool = paramSQLiteDatabase.moveToNext();
        } while (bool);
      }
      return localArrayList;
    }
    finally
    {
      if (paramSQLiteDatabase != null) {
        paramSQLiteDatabase.close();
      }
    }
  }
  
  protected final Collection<aef.b> a(akp paramakp)
  {
    return null;
  }
  
  public final void a(Context paramContext)
  {
    paramContext = DatabaseHelper.a(paramContext).getWritableDatabase();
    paramContext.beginTransaction();
    try
    {
      paramContext.delete("DSnapViewState", null, null);
      Iterator localIterator = d.d.values().iterator();
      ContentValues localContentValues;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localContentValues = a((aef.b)localIterator.next());
      } while ((localContentValues == null) || (paramContext.insertWithOnConflict("DSnapViewState", null, localContentValues, 5) != -1L));
      throw new SQLiteException("Insertion in DB failed for DSnapViewState");
    }
    catch (SQLiteException localSQLiteException)
    {
      localSQLiteException.getMessage();
      return;
      paramContext.execSQL(aau.a("DSnapViewState", DSnapViewStateSchema.ID, "EditionChunk", EditionChunkTable.EditionChunkSchema.ID));
      paramContext.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramContext.endTransaction();
    }
  }
  
  public final void b(akp paramakp)
  {
    paramakp = DatabaseHelper.a(akp.y()).getReadableDatabase();
    paramakp.beginTransaction();
    try
    {
      Object localObject2 = a(paramakp);
      aef localaef = d;
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        aef.b localb = (aef.b)((Iterator)localObject2).next();
        localaef.b(a, b);
      }
    }
    finally
    {
      paramakp.endTransaction();
    }
  }
  
  public final aav[] b()
  {
    return DSnapViewStateSchema.values();
  }
  
  public final String c()
  {
    return "DSnapViewState";
  }
  
  public final void c(akp paramakp) {}
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    DSnapViewStateSchema[] arrayOfDSnapViewStateSchema = DSnapViewStateSchema.values();
    int j = arrayOfDSnapViewStateSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfDSnapViewStateSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(DSnapViewStateSchema.a((DSnapViewStateSchema)localObject) + " " + DSnapViewStateSchema.b((DSnapViewStateSchema)localObject).toString());
      localObject = ((DSnapViewStateSchema)localObject).getConstraints();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append((String)localObject);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static enum DSnapViewStateSchema
    implements aav
  {
    ID(DataType.TEXT, "PRIMARY KEY"),  TIME_LAST_VIEWED_MILLISECONDS("time_last_viewed_milli", DataType.INTEGER);
    
    private String a;
    private DataType b;
    private String c;
    
    private DSnapViewStateSchema(String paramString, DataType paramDataType)
    {
      a = paramString;
      b = paramDataType;
    }
    
    private DSnapViewStateSchema(String paramString1, String paramString2)
    {
      this(???, paramString1);
      c = paramString2;
    }
    
    public final String getColumnName()
    {
      return a;
    }
    
    public final int getColumnNumber()
    {
      return ordinal();
    }
    
    public final String getConstraints()
    {
      return c;
    }
    
    public final DataType getDataType()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.database.table.DSnapViewStateTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */