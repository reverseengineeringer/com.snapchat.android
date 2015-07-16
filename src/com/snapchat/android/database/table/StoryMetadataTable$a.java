package com.snapchat.android.database.table;

import bkn;
import bks;
import chc;
import chd;
import co;

public final class StoryMetadataTable$a
{
  public final String a;
  public final bks b;
  public final bkn c;
  public final int d;
  
  public StoryMetadataTable$a(@chc String paramString, @chd bks parambks, @chd bkn parambkn, int paramInt)
  {
    a = ((String)co.a(paramString));
    b = parambks;
    c = parambkn;
    d = paramInt;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (a)paramObject;
    } while (a.equals(a));
    return false;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.database.table.StoryMetadataTable.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */