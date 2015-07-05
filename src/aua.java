import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Locale;

public final class aua
{
  private static final double DEFAULT_BUCKET_ACCURACY = 10.0D;
  private static final NumberFormat mNumberFormatter = new DecimalFormat("###,###,###");
  
  public static String a(double paramDouble, Locale paramLocale, int paramInt)
  {
    paramLocale = NumberFormat.getCurrencyInstance(paramLocale);
    paramLocale.setMinimumFractionDigits(paramInt);
    paramLocale.setGroupingUsed(true);
    return paramLocale.format(paramDouble);
  }
  
  public static String a(int paramInt)
  {
    String str;
    if (paramInt >= 0) {
      str = "";
    }
    while (paramInt < 1000)
    {
      return str + paramInt;
      str = "-";
      paramInt *= -1;
    }
    int i = (int)(Math.log(paramInt) / Math.log(1000.0D));
    float f = (float)(paramInt / Math.pow(1000.0D, i));
    if (f < 100.0F) {
      return String.format("%s%.1f%c", new Object[] { str, Float.valueOf(f), Character.valueOf("kMB".charAt(i - 1)) });
    }
    return String.format("%s%d%c", new Object[] { str, Integer.valueOf((int)f), Character.valueOf("kMB".charAt(i - 1)) });
  }
  
  @cgb
  public static String a(long paramLong)
  {
    double d2 = avf.a(paramLong);
    double d1 = Math.exp(Math.floor(Math.log(d2) * 10.0D) / 10.0D);
    d2 = Math.exp(Math.ceil(Math.log(d2) * 10.0D) / 10.0D);
    return String.format(Locale.US, "%4.3f-%4.3f s", new Object[] { Double.valueOf(d1), Double.valueOf(d2) });
  }
  
  public static String b(int paramInt)
  {
    return mNumberFormatter.format(paramInt);
  }
  
  @cgb
  public static String b(long paramLong)
  {
    double d = paramLong / 1000.0D;
    if (d > 11000.0D) {
      return String.format("%d+ s", new Object[] { Integer.valueOf(11000) });
    }
    if (d < 1000.0D) {
      return String.format("0-%d s", new Object[] { Integer.valueOf(1000) });
    }
    int i = (int)(d / 1000.0D) + 1;
    return String.format("%d-%d s", new Object[] { Integer.valueOf((i - 1) * 1000), Integer.valueOf(i * 1000) });
  }
}

/* Location:
 * Qualified Name:     aua
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */