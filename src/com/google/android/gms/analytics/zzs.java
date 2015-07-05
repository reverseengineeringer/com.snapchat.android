package com.google.android.gms.analytics;

public final class zzs
{
  static String zzE(int paramInt)
  {
    return zzd("&cd", paramInt);
  }
  
  static String zzF(int paramInt)
  {
    return zzd("&cm", paramInt);
  }
  
  public static String zzG(int paramInt)
  {
    return zzd("&pr", paramInt);
  }
  
  public static String zzH(int paramInt)
  {
    return zzd("&promo", paramInt);
  }
  
  public static String zzI(int paramInt)
  {
    return zzd("pi", paramInt);
  }
  
  public static String zzJ(int paramInt)
  {
    return zzd("&il", paramInt);
  }
  
  public static String zzK(int paramInt)
  {
    return zzd("cd", paramInt);
  }
  
  public static String zzL(int paramInt)
  {
    return zzd("cm", paramInt);
  }
  
  private static String zzd(String paramString, int paramInt)
  {
    if (paramInt <= 0)
    {
      zzae.zzZ("index out of range for " + paramString + " (" + paramInt + ")");
      return "";
    }
    return paramString + paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.zzs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */