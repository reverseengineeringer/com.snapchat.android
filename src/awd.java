import java.math.BigDecimal;

public final class awd
{
  public static double a(long paramLong)
  {
    return new BigDecimal(paramLong).divide(new BigDecimal(1000), 1, 4).doubleValue();
  }
}

/* Location:
 * Qualified Name:     awd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */