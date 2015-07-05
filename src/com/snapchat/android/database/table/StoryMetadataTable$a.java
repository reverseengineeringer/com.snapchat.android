package com.snapchat.android.database.table;

import bjr;
import cgb;
import cgc;
import ck;

public final class StoryMetadataTable$a
{
  public final String a;
  public final bjr b;
  public final int c;
  
  public StoryMetadataTable$a(@cgb String paramString, @cgc bjr parambjr, int paramInt)
  {
    a = ((String)ck.a(paramString));
    b = parambjr;
    c = paramInt;
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