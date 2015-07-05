package com.google.android.gms.tagmanager;

class zzdd
  extends Number
  implements Comparable<zzdd>
{
  private double zzaBi;
  private long zzaBj;
  private boolean zzaBk;
  
  private zzdd(double paramDouble)
  {
    zzaBi = paramDouble;
    zzaBk = false;
  }
  
  private zzdd(long paramLong)
  {
    zzaBj = paramLong;
    zzaBk = true;
  }
  
  public static zzdd zzI(long paramLong)
  {
    return new zzdd(paramLong);
  }
  
  public static zzdd zza(Double paramDouble)
  {
    return new zzdd(paramDouble.doubleValue());
  }
  
  public static zzdd zzdn(String paramString)
  {
    try
    {
      zzdd localzzdd1 = new zzdd(Long.parseLong(paramString));
      return localzzdd1;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        zzdd localzzdd2 = new zzdd(Double.parseDouble(paramString));
        return localzzdd2;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        throw new NumberFormatException(paramString + " is not a valid TypedNumber");
      }
    }
  }
  
  public byte byteValue()
  {
    return (byte)(int)longValue();
  }
  
  public double doubleValue()
  {
    if (zztV()) {
      return zzaBj;
    }
    return zzaBi;
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof zzdd)) && (zza((zzdd)paramObject) == 0);
  }
  
  public float floatValue()
  {
    return (float)doubleValue();
  }
  
  public int hashCode()
  {
    return new Long(longValue()).hashCode();
  }
  
  public int intValue()
  {
    return zztX();
  }
  
  public long longValue()
  {
    return zztW();
  }
  
  public short shortValue()
  {
    return zztY();
  }
  
  public String toString()
  {
    if (zztV()) {
      return Long.toString(zzaBj);
    }
    return Double.toString(zzaBi);
  }
  
  public int zza(zzdd paramzzdd)
  {
    if ((zztV()) && (paramzzdd.zztV())) {
      return new Long(zzaBj).compareTo(Long.valueOf(zzaBj));
    }
    return Double.compare(doubleValue(), paramzzdd.doubleValue());
  }
  
  public boolean zztU()
  {
    return !zztV();
  }
  
  public boolean zztV()
  {
    return zzaBk;
  }
  
  public long zztW()
  {
    if (zztV()) {
      return zzaBj;
    }
    return zzaBi;
  }
  
  public int zztX()
  {
    return (int)longValue();
  }
  
  public short zztY()
  {
    return (short)(int)longValue();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.zzdd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */