package com.snapchat.android.discover.model.database.table;

import aad;
import adf;
import adf.a;
import adj;
import ajv;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import cgb;
import com.snapchat.android.Timber;
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
import zv;
import zw;

public final class ChannelViewStateTable
  extends DbTable<adf.a>
{
  public static final String[] a;
  public static final HashMap<String, String> b;
  private static final ChannelViewStateTable c = new ChannelViewStateTable();
  private final adf d;
  
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
    this(adf.a());
  }
  
  private ChannelViewStateTable(adf paramadf)
  {
    d = paramadf;
  }
  
  private static ContentValues a(@cgb adf.a parama)
  {
    return aadaIDa).a(ChannelViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS, b).a;
  }
  
  public static ChannelViewStateTable a()
  {
    return c;
  }
  
  private static List<adf.a> a(@cgb SQLiteDatabase paramSQLiteDatabase)
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
          localArrayList.add(new adf.a(paramSQLiteDatabase.getString(ChannelViewStateSchema.ID.getColumnNumber()), paramSQLiteDatabase.getLong(ChannelViewStateSchema.TIME_LAST_VIEWED_MILLISECONDS.getColumnNumber())));
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
  
  protected final Collection<adf.a> a(ajv paramajv)
  {
    return null;
  }
  
  public final void a(Context paramContext)
  {
    paramContext = DatabaseHelper.a(paramContext).getWritableDatabase();
    Timber.c("ChannelViewStateTable", "safeUpdate - beginTransaction", new Object[0]);
    paramContext.beginTransaction();
    try
    {
      Timber.c("ChannelViewStateTable", "Delete the table for ChannelViewState", new Object[0]);
      paramContext.delete("ChannelViewState", null, null);
      Iterator localIterator = d.c.values().iterator();
      ContentValues localContentValues;
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        localContentValues = a((adf.a)localIterator.next());
      } while ((localContentValues == null) || (paramContext.insertWithOnConflict("ChannelViewState", null, localContentValues, 5) != -1L));
      throw new SQLiteException("Insertion in DB failed for ChannelViewState");
    }
    catch (SQLiteException localSQLiteException)
    {
      Timber.f("ChannelViewState", "Error while writing to database: %s", new Object[] { localSQLiteException.getMessage() });
      return;
      Timber.c("ChannelViewStateTable", "Remove redundant entries in ChannelViewState", new Object[0]);
      paramContext.execSQL(zv.a("ChannelViewState", ChannelViewStateSchema.ID, "PublisherChannel", PublisherChannelTable.PublisherChannelSchema.NAME));
      paramContext.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramContext.endTransaction();
      Timber.c("ChannelViewStateTable", "safeUpdate - endTransaction", new Object[0]);
    }
  }
  
  public final void b(ajv paramajv)
  {
    paramajv = DatabaseHelper.a(ajv.y()).getReadableDatabase();
    Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - beginTransaction", new Object[0]);
    paramajv.beginTransaction();
    try
    {
      Object localObject2 = a(paramajv);
      adf localadf = d;
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        adf.a locala = (adf.a)((Iterator)localObject2).next();
        localadf.a(a, b);
      }
      a.b();
    }
    finally
    {
      paramajv.endTransaction();
      Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
    }
    paramajv.endTransaction();
    Timber.c("ChannelViewStateTable", "populateUserObjectFromTable - endTransaction", new Object[0]);
  }
  
  public final zw[] b()
  {
    return ChannelViewStateSchema.values();
  }
  
  public final String c()
  {
    return "ChannelViewState";
  }
  
  public final void c(ajv paramajv) {}
  
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
    implements zw
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