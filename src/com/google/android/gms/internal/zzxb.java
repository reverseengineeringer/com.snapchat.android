package com.google.android.gms.internal;

public final class zzxb
{
  public static final int[] zzaHO = new int[0];
  public static final long[] zzaHP = new long[0];
  public static final float[] zzaHQ = new float[0];
  public static final double[] zzaHR = new double[0];
  public static final boolean[] zzaHS = new boolean[0];
  public static final String[] zzaHT = new String[0];
  public static final byte[][] zzaHU = new byte[0][];
  public static final byte[] zzaHV = new byte[0];
  
  static int zzD(int paramInt1, int paramInt2)
  {
    return paramInt1 << 3 | paramInt2;
  }
  
  public static boolean zzb(zzwq paramzzwq, int paramInt)
  {
    return paramzzwq.zzin(paramInt);
  }
  
  public static final int zzc(zzwq paramzzwq, int paramInt)
  {
    int i = 1;
    int j = paramzzwq.getPosition();
    paramzzwq.zzin(paramInt);
    while (paramzzwq.zzvu() == paramInt)
    {
      paramzzwq.zzin(paramInt);
      i += 1;
    }
    paramzzwq.zzir(j);
    return i;
  }
  
  static int zziH(int paramInt)
  {
    return paramInt & 0x7;
  }
  
  public static int zziI(int paramInt)
  {
    return paramInt >>> 3;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzxb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */