package com.snapchat.android.discover.model;

import chc;
import java.util.Locale;

public enum DSnapPanel$Mode
{
  LOOPING,  ONCE;
  
  private DSnapPanel$Mode() {}
  
  @chc
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