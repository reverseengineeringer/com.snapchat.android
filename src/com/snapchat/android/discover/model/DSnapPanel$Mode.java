package com.snapchat.android.discover.model;

import cgb;
import java.util.Locale;

public enum DSnapPanel$Mode
{
  LOOPING,  ONCE;
  
  private DSnapPanel$Mode() {}
  
  @cgb
  public static Mode valueOfIgnoreCase(String paramString)
  {
    return valueOf(paramString.toUpperCase(Locale.ENGLISH));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.discover.model.DSnapPanel.Mode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */