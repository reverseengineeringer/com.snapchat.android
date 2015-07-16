package com.snapchat.android.discover.model.database.table;

import aav;
import com.snapchat.android.database.DataType;

public enum EditionViewStateTable$EditionViewStateSchema
  implements aav
{
  ID(DataType.TEXT, "PRIMARY KEY"),  LAST_INDEX_VIEWED("last_index_viewed", DataType.INTEGER),  VIEWED_ALL_DSNAPS("viewed_all_dsnaps", DataType.BOOLEAN);
  
  private String a;
  private DataType b;
  private String c;
  
  private EditionViewStateTable$EditionViewStateSchema(String paramString, DataType paramDataType)
  {
    a = paramString;
    b = paramDataType;
  }
  
  private EditionViewStateTable$EditionViewStateSchema(String paramString1, String paramString2)
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
 * Qualified Name:     com.snapchat.android.discover.model.database.table.EditionViewStateTable.EditionViewStateSchema
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */