package com.snapchat.android.discover.model.database.table;

import com.snapchat.android.database.DataType;
import zw;

public enum ChannelViewStateTable$ChannelViewStateSchema
  implements zw
{
  ID(DataType.TEXT, "PRIMARY KEY"),  TIME_LAST_VIEWED_MILLISECONDS("time_last_viewed_milli", DataType.INTEGER);
  
  private String a;
  private DataType b;
  private String c;
  
  private ChannelViewStateTable$ChannelViewStateSchema(String paramString, DataType paramDataType)
  {
    a = paramString;
    b = paramDataType;
  }
  
  private ChannelViewStateTable$ChannelViewStateSchema(String paramString1, String paramString2)
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

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.database.table.ChannelViewStateTable.ChannelViewStateSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */