package com.facebook.crypto.util;

public class Assertions
{
  public static void checkState(boolean paramBoolean, String paramString)
  {
    if (!paramBoolean) {
      throw new IllegalStateException(String.valueOf(paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.crypto.util.Assertions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */