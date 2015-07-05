public final class fe
{
  public static int a(long paramLong)
  {
    if ((paramLong > 2147483647L) || (paramLong < -2147483648L)) {
      throw new RuntimeException("A cast to int has gone wrong. Please contact the mp4parser discussion group (" + paramLong + ")");
    }
    return (int)paramLong;
  }
}

/* Location:
 * Qualified Name:     fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */