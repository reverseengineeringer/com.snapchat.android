package com.snapchat.android.util;

import cgk;
import ckn;
import java.util.Arrays;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.TimeZone;

public class DateTimeZoneProvider
  implements ckn
{
  public static final Set<String> AVAILABLE_IDS;
  
  static
  {
    HashSet localHashSet = new HashSet();
    AVAILABLE_IDS = localHashSet;
    localHashSet.addAll(Arrays.asList(TimeZone.getAvailableIDs()));
  }
  
  public final cgk a(String paramString)
  {
    if (paramString == null) {
      return cgk.a;
    }
    paramString = TimeZone.getTimeZone(paramString);
    if (paramString == null) {
      return cgk.a;
    }
    int j = paramString.getRawOffset();
    int i = j;
    if (paramString.inDaylightTime(new Date())) {
      i = j + paramString.getDSTSavings();
    }
    return cgk.a(i);
  }
  
  public final Set a()
  {
    return AVAILABLE_IDS;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.DateTimeZoneProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */