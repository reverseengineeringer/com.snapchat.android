package com.snapchat.android.database.table;

import aav;
import com.snapchat.android.database.DataType;

public enum FindFriendRequestCacheTable$NumberToTimestampSchema
  implements aav
{
  HASHED_NUMBER(DataType.TEXT, "PRIMARY KEY"),  REQUEST_TIMESTAMP(DataType.LONG);
  
  private int a;
  private String b;
  private DataType c;
  private String d;
  
  private FindFriendRequestCacheTable$NumberToTimestampSchema(int paramInt)
  {
    a = 1;
    String str;
    b = str;
    c = paramInt;
  }
  
  private FindFriendRequestCacheTable$NumberToTimestampSchema(int paramInt, String paramString)
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

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.FindFriendRequestCacheTable.NumberToTimestampSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */