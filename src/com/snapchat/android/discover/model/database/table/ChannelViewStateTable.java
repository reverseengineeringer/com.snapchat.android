package com.snapchat.android.discover.model.database.table;

import aau;
import aav;
import abc;
import aef;
import aef.a;
import aej;
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

public final class ChannelViewStateTable
  extends DbTable<aef.a>
{
  public static final String[] a;
  public static final HashMap<String, String> b;
  private static final ChannelViewStateTable c = new ChannelViewStateTable();
  private final aef d;
  
  static
  {
    ChannelViewStateSchema[] arrayOfChannelViewStateSchema = ChannelViewStateSchema.values();
    int j = arrayOfChannelViewStateSchema.length;
    a = new String[j];
    b = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      ChannelViewStateSchema localChannelViewStateSchema = arrayOfChannelViewStateSchema[i];
      a[i] = arrayOfChannelViewStateSchema[i].getColumnName();
      b.put(localChannelViewStateSchema.getColumnName(), localChannelViewStateSchema.getColumnName());
      i += 1;
    }
  }
  
  protected ChannelViewStateTable()
  {
    this(aef.a());
  }
  
  private ChannelViewStateTable(aef paramaef)
  {
    d = paramaef;
  }
  
  private static ContentValues a(@chc aef.a parama)
  {
    return abcaIDa).a(ChannelViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS, b).a;
  }
  
  public static ChannelViewStateTable a()
  {
    return c;
  }
  
  private static List<aef.a> a(@chc SQLiteDatabase paramSQLiteDatabase)
  {
    ArrayList localArrayList = new ArrayList();
    paramSQLiteDatabase = paramSQLiteDatabase.query("ChannelViewState", a, null, null, null, null, null);
    if (paramSQLiteDatabase != null) {}
    try
    {
      if (paramSQLiteDatabase.moveToFirst())
      {
        boolean bool;
        do
        {
          localArrayList.add(new aef.a(paramSQLiteDatabase.getString(ChannelViewStateSchema.ID.getColumnNumber()), paramSQLiteDatabase.getLong(ChannelViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS.getColumnNumber())));
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
  
  protected final Collection<aef.a> a(akp paramakp)
  {
    return null;
  }
  
  public final void a(Context paramContext)
  {
    paramContext = DatabaseHelper.a(paramContext).getWritableDatabase();
    paramContext.beginTransaction();
    try
    {
      paramContext.delete("ChannelViewState", null, null);
      Iterator localIterator = d.c.values().iterator();
      ContentValues localContentValues;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localContentValues = a((aef.a)localIterator.next());
      } while ((localContentValues == null) || (paramContext.insertWithOnConflict("ChannelViewState", null, localContentValues, 5) != -1L));
      throw new SQLiteException("Insertion in DB failed for ChannelViewState");
    }
    catch (SQLiteException localSQLiteException)
    {
      localSQLiteException.getMessage();
      return;
      paramContext.execSQL(aau.a("ChannelViewState", ChannelViewStateSchema.ID, "PublisherChannel", PublisherChannelTable.PublisherChannelSchema.NAME));
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
        aef.a locala = (aef.a)((Iterator)localObject2).next();
        localaef.a(a, b);
      }
      a.c();
    }
    finally
    {
      paramakp.endTransaction();
    }
    paramakp.endTransaction();
  }
  
  public final aav[] b()
  {
    return ChannelViewStateSchema.values();
  }
  
  public final String c()
  {
    return "ChannelViewState";
  }
  
  public final void c(akp paramakp) {}
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    ChannelViewStateSchema[] arrayOfChannelViewStateSchema = ChannelViewStateSchema.values();
    int j = arrayOfChannelViewStateSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfChannelViewStateSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(ChannelViewStateSchema.a((ChannelViewStateSchema)localObject) + " " + ChannelViewStateSchema.b((ChannelViewStateSchema)localObject).toString());
      localObject = ((ChannelViewStateSchema)localObject).getConstraints();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append((String)localObject);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static enum ChannelViewStateSchema
    implements aav
  {
    ID(DataType.TEXT, "PRIMARY KEY"),  TIME_LAST_VIEWED_MILLISECONDS("time_last_viewed_milli", DataType.INTEGER);
    
    private String a;
    private DataType b;
    private String c;
    
    private ChannelViewStateSchema(String paramString, DataType paramDataType)
    {
      a = paramString;
      b = paramDataType;
    }
    
    private ChannelViewStateSchema(String paramString1, String paramString2)
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
 * Qualified Name:     com.snapchat.android.discover.model.database.table.ChannelViewStateTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */