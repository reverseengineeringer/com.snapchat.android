package com.snapchat.android.database;

public enum DatabaseHelper$TableType
{
  TABLE("table"),  VIEW("view");
  
  private final String a;
  
  private DatabaseHelper$TableType(String paramString)
  {
    a = paramString;
  }
  
  public final String getType()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.DatabaseHelper.TableType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */