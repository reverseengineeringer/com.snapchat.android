package com.snapchat.android.database.table;

import ajv;
import ajx;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import bgp;
import cgb;
import com.snapchat.android.Timber;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import zw;

public final class FindFriendRequestCacheTable
  extends DbTable<Map.Entry<String, Long>>
{
  private static FindFriendRequestCacheTable a;
  
  public static FindFriendRequestCacheTable a()
  {
    try
    {
      if (a == null) {
        a = new FindFriendRequestCacheTable();
      }
      FindFriendRequestCacheTable localFindFriendRequestCacheTable = a;
      return localFindFriendRequestCacheTable;
    }
    finally {}
  }
  
  public static void a(ajv paramajv, Map<String, Long> paramMap)
  {
    if ((paramajv == null) || (!ajx.m())) {
      return;
    }
    paramajv = DatabaseHelper.a(ajv.y()).getWritableDatabase();
    Timber.c("FindFriendRequestCacheTable", "saveEntriesToDatabase - beginTransaction", new Object[0]);
    paramajv.beginTransaction();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put(NumberToTimestampSchema.HASHED_NUMBER.getColumnName(), (String)localEntry.getKey());
        localContentValues.put(NumberToTimestampSchema.REQUEST_TIMESTAMP.getColumnName(), (Long)localEntry.getValue());
        Timber.c("FindFriendRequestCacheTable", "Save hashed phone number:" + (String)localEntry.getKey() + "requested at timestamp:" + localEntry.getValue(), new Object[0]);
        paramajv.insertWithOnConflict("FindFriendRequestCacheTable", null, localContentValues, 5);
      }
      paramajv.setTransactionSuccessful();
    }
    finally
    {
      paramajv.endTransaction();
      Timber.c("FindFriendRequestCacheTable", "saveEntriesToDatabase - endTransaction", new Object[0]);
    }
    Timber.c("FindFriendRequestCacheTable", "saveEntriesToDatabase - TransactionSuccessful", new Object[0]);
    paramajv.endTransaction();
    Timber.c("FindFriendRequestCacheTable", "saveEntriesToDatabase - endTransaction", new Object[0]);
  }
  
  public static void a(ajv paramajv, Set<String> paramSet)
  {
    
    if ((paramajv == null) || (!ajx.m())) {
      return;
    }
    paramajv = DatabaseHelper.a(ajv.y()).getWritableDatabase();
    Timber.c("FindFriendRequestCacheTable", "removeEntriesFromDatabase - beginTransaction", new Object[0]);
    paramajv.beginTransaction();
    try
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        bgp.b();
        Timber.c("FindFriendRequestCacheTable", "delete entry for hashed phone number:" + str, new Object[0]);
        paramajv.delete("FindFriendRequestCacheTable", NumberToTimestampSchema.HASHED_NUMBER.getColumnName() + "=?", new String[] { str });
      }
      paramajv.setTransactionSuccessful();
    }
    finally
    {
      paramajv.endTransaction();
      Timber.c("FindFriendRequestCacheTable", "removeEntriesFromDatabase - endTransaction", new Object[0]);
    }
    Timber.c("FindFriendRequestCacheTable", "removeEntriesFromDatabase - TransactionSuccessful", new Object[0]);
    paramajv.endTransaction();
    Timber.c("FindFriendRequestCacheTable", "removeEntriesFromDatabase - endTransaction", new Object[0]);
  }
  
  @cgb
  public static Map<String, Long> e(ajv paramajv)
  {
    HashMap localHashMap = new HashMap();
    if ((paramajv == null) || (!ajx.m())) {
      return localHashMap;
    }
    i().lock();
    paramajv = DatabaseHelper.a(ajv.y()).getReadableDatabase().query("FindFriendRequestCacheTable", null, null, null, null, null, null);
    try
    {
      Timber.c("FindFriendRequestCacheTable", "Querying [%s] database table", new Object[] { "FindFriendRequestCacheTable" });
      if ((paramajv != null) && (paramajv.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashMap.put(paramajv.getString(NumberToTimestampSchema.HASHED_NUMBER.getColumnNumber()), Long.valueOf(paramajv.getLong(NumberToTimestampSchema.REQUEST_TIMESTAMP.getColumnNumber())));
          bool = paramajv.moveToNext();
        } while (bool);
      }
      return localHashMap;
    }
    finally
    {
      if (paramajv != null) {
        paramajv.close();
      }
      i().unlock();
    }
  }
  
  protected final Collection<Map.Entry<String, Long>> a(ajv paramajv)
  {
    return null;
  }
  
  public final zw[] b()
  {
    return NumberToTimestampSchema.values();
  }
  
  public final String c()
  {
    return "FindFriendRequestCacheTable";
  }
  
  public final String d()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    NumberToTimestampSchema[] arrayOfNumberToTimestampSchema = NumberToTimestampSchema.values();
    int j = arrayOfNumberToTimestampSchema.length;
    int i = 0;
    while (i < j)
    {
      Object localObject = arrayOfNumberToTimestampSchema[i];
      if (i > 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append(NumberToTimestampSchema.a((NumberToTimestampSchema)localObject) + " " + NumberToTimestampSchema.b((NumberToTimestampSchema)localObject).toString());
      localObject = ((NumberToTimestampSchema)localObject).getConstraints();
      if (!TextUtils.isEmpty((CharSequence)localObject))
      {
        localStringBuilder.append(" ");
        localStringBuilder.append((String)localObject);
      }
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public static enum NumberToTimestampSchema
    implements zw
  {
    HASHED_NUMBER(DataType.TEXT, "PRIMARY KEY"),  REQUEST_TIMESTAMP(DataType.LONG);
    
    private int a;
    private String b;
    private DataType c;
    private String d;
    
    private NumberToTimestampSchema(int paramInt)
    {
      a = 1;
      String str;
      b = str;
      c = paramInt;
    }
    
    private NumberToTimestampSchema(int paramInt, String paramString)
    {
      a = 0;
      b = ???;
      c = paramInt;
      d = paramString;
    }
    
    public final String getColumnName()
    {
      return b;
    }
    
    public final int getColumnNumber()
    {
      return a;
    }
    
    public final String getConstraints()
    {
      return d;
    }
    
    public final DataType getDataType()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.FindFriendRequestCacheTable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */