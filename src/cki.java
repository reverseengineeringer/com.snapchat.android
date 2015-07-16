public final class cki
{
  public static int a(long paramLong)
  {
    if ((-2147483648L <= paramLong) && (paramLong <= 2147483647L)) {
      return (int)paramLong;
    }
    throw new ArithmeticException("Value cannot fit in an int: " + paramLong);
  }
  
  public static long a(long paramLong1, long paramLong2)
  {
    long l = paramLong1 + paramLong2;
    if (((paramLong1 ^ l) < 0L) && ((paramLong1 ^ paramLong2) >= 0L)) {
      throw new ArithmeticException("The calculation caused an overflow: " + paramLong1 + " + " + paramLong2);
    }
    return l;
  }
  
  public static void a(chi paramchi, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < paramInt2) || (paramInt1 > paramInt3)) {
      throw new chp(paramchi.a(), Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3));
    }
  }
  
  public static void a(chj paramchj, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt1 < paramInt2) || (paramInt1 > paramInt3)) {
      throw new chp(paramchj, Integer.valueOf(paramInt1), Integer.valueOf(paramInt2), Integer.valueOf(paramInt3));
    }
  }
  
  public static boolean a(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == paramObject2) {
      return true;
    }
    if ((paramObject1 == null) || (paramObject2 == null)) {
      return false;
    }
    return paramObject1.equals(paramObject2);
  }
  
  public static long b(long paramLong1, long paramLong2)
  {
    long l = paramLong1 - paramLong2;
    if (((paramLong1 ^ l) < 0L) && ((paramLong1 ^ paramLong2) < 0L)) {
      throw new ArithmeticException("The calculation caused an overflow: " + paramLong1 + " - " + paramLong2);
    }
    return l;
  }
}

/* Location:
 * Qualified Name:     cki
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */