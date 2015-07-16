package com.snapchat.android.database.table;

import aav;
import akp;
import akr;
import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import bhp;
import chc;
import com.snapchat.android.database.DataType;
import com.snapchat.android.database.DatabaseHelper;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.locks.Lock;

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
  
  public static void a(akp paramakp, Map<String, Long> paramMap)
  {
    if ((paramakp == null) || (!akr.m())) {
      return;
    }
    paramakp = DatabaseHelper.a(akp.y()).getWritableDatabase();
    paramakp.beginTransaction();
    try
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        ContentValues localContentValues = new ContentValues();
        localContentValues.put(NumberToTimestampSchema.HASHED_NUMBER.getColumnName(), (String)localEntry.getKey());
        localContentValues.put(NumberToTimestampSchema.REQUEST_TIMESTAMP.getColumnName(), (Long)localEntry.getValue());
        new StringBuilder("Save hashed phone number:").append((String)localEntry.getKey()).append("requested at timestamp:").append(localEntry.getValue());
        paramakp.insertWithOnConflict("FindFriendRequestCacheTable", null, localContentValues, 5);
      }
    }
    finally
    {
      paramakp.endTransaction();
    }
    paramakp.endTransaction();
  }
  
  public static void a(akp paramakp, Set<String> paramSet)
  {
    
    if ((paramakp == null) || (!akr.m())) {
      return;
    }
    paramakp = DatabaseHelper.a(akp.y()).getWritableDatabase();
    paramakp.beginTransaction();
    try
    {
      paramSet = paramSet.iterator();
      while (paramSet.hasNext())
      {
        String str = (String)paramSet.next();
        bhp.b();
        paramakp.delete("FindFriendRequestCacheTable", NumberToTimestampSchema.HASHED_NUMBER.getColumnName() + "=?", new String[] { str });
      }
    }
    finally
    {
      paramakp.endTransaction();
    }
    paramakp.endTransaction();
  }
  
  @chc
  public static Map<String, Long> e(akp paramakp)
  {
    HashMap localHashMap = new HashMap();
    if ((paramakp == null) || (!akr.m())) {
      return localHashMap;
    }
    i().lock();
    paramakp = DatabaseHelper.a(akp.y()).getReadableDatabase().query("FindFriendRequestCacheTable", null, null, null, null, null, null);
    if (paramakp != null) {}
    try
    {
      if (paramakp.moveToFirst())
      {
        boolean bool;
        do
        {
          localHashMap.put(paramakp.getString(NumberToTimestampSchema.HASHED_NUMBER.getColumnNumber()), Long.valueOf(paramakp.getLong(NumberToTimestampSchema.REQUEST_TIMESTAMP.getColumnNumber())));
          bool = paramakp.moveToNext();
        } while (bool);
      }
      return localHashMap;
    }
    finally
    {
      if (paramakp != null) {
        paramakp.close();
      }
      i().unlock();
    }
  }
  
  protected final Collection<Map.Entry<String, Long>> a(akp paramakp)
  {
    return null;
  }
  
  public final aav[] b()
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
    implements aav
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