import java.util.Arrays;

public final class en
{
  public final int a;
  public final String b;
  private final er.a c;
  
  en(int paramInt, String paramString, er.a parama)
  {
    if (paramInt < 0) {
      throw new IllegalArgumentException("Start index must be >= 0.");
    }
    if (paramString == null) {
      throw new NullPointerException();
    }
    a = paramInt;
    b = paramString;
    c = parama;
  }
  
  public final int a()
  {
    return a + b.length();
  }
  
  public final boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof en)) {
        return false;
      }
      paramObject = (en)paramObject;
    } while ((b.equals(b)) && (a == a) && (c.equals(c)));
    return false;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Object[] { Integer.valueOf(a), b, c });
  }
  
  public final String toString()
  {
    int i = a;
    int j = a();
    String str = String.valueOf(String.valueOf(b));
    return str.length() + 43 + "PhoneNumberMatch [" + i + "," + j + ") " + str;
  }
}

/* Location:
 * Qualified Name:     en
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */