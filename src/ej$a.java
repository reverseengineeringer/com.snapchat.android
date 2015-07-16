import java.math.RoundingMode;
import java.util.Arrays;

final class ej$a
  extends ch
{
  final char[] q;
  final int r;
  final int s;
  final int t;
  final int u;
  private final String v;
  private final byte[] w;
  private final boolean[] x;
  
  ej$a(String paramString, char[] paramArrayOfChar)
  {
    v = ((String)co.a(paramString));
    q = ((char[])co.a(paramArrayOfChar));
    for (;;)
    {
      try
      {
        s = em.a(paramArrayOfChar.length, RoundingMode.UNNECESSARY);
        i = Math.min(8, Integer.lowestOneBit(s));
        t = (8 / i);
        u = (s / i);
        r = (paramArrayOfChar.length - 1);
        paramString = new byte[''];
        Arrays.fill(paramString, (byte)-1);
        i = 0;
        if (i >= paramArrayOfChar.length) {
          break;
        }
        char c = paramArrayOfChar[i];
        co.a(ch.b.a(c), "Non-ASCII character: %s", new Object[] { Character.valueOf(c) });
        boolean bool;
        if (paramString[c] == -1)
        {
          bool = true;
          co.a(bool, "Duplicate character: %s", new Object[] { Character.valueOf(c) });
          paramString[c] = ((byte)i);
          i += 1;
        }
        else
        {
          bool = false;
        }
      }
      catch (ArithmeticException paramString)
      {
        i = paramArrayOfChar.length;
        throw new IllegalArgumentException(35 + "Illegal alphabet length " + i, paramString);
      }
    }
    w = paramString;
    paramString = new boolean[t];
    int i = j;
    while (i < u)
    {
      paramString[em.a(i * 8, s, RoundingMode.CEILING)] = 1;
      i += 1;
    }
    x = paramString;
  }
  
  public final boolean a(char paramChar)
  {
    return (ch.b.a(paramChar)) && (w[paramChar] != -1);
  }
  
  public final String toString()
  {
    return v;
  }
}

/* Location:
 * Qualified Name:     ej.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */