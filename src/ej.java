import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.Nullable;

@cc
@cd
public abstract class ej
{
  private static final ej a = new ej.b("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", Character.valueOf('='));
  private static final ej b = new ej.b("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", Character.valueOf('='));
  private static final ej c = new ej.b("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", Character.valueOf('='));
  private static final ej d = new ej.b("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", Character.valueOf('='));
  private static final ej e = new ej.b("base16()", "0123456789ABCDEF", null);
  
  public static ej a()
  {
    return e;
  }
  
  private String a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    co.a(paramArrayOfByte);
    co.a(0, paramInt + 0, paramArrayOfByte.length);
    el.1 local1 = new el.1(new StringBuilder(a(paramInt)));
    el.a locala = a(local1);
    for (;;)
    {
      if (i < paramInt) {}
      try
      {
        locala.a(paramArrayOfByte[(i + 0)]);
        i += 1;
      }
      catch (IOException paramArrayOfByte)
      {
        throw new AssertionError("impossible");
      }
    }
    locala.a();
    return local1.toString();
  }
  
  abstract int a(int paramInt);
  
  abstract el.a a(el.b paramb);
  
  public final String a(byte[] paramArrayOfByte)
  {
    return a((byte[])co.a(paramArrayOfByte), paramArrayOfByte.length);
  }
  
  static final class a
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
    
    a(String paramString, char[] paramArrayOfChar)
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
  
  static final class b
    extends ej
  {
    private final ej.a a;
    @Nullable
    private final Character b;
    
    private b(ej.a parama, @Nullable Character paramCharacter)
    {
      a = ((ej.a)co.a(parama));
      if ((paramCharacter == null) || (!parama.a(paramCharacter.charValue()))) {}
      for (boolean bool = true;; bool = false)
      {
        co.a(bool, "Padding character %s was already in alphabet", new Object[] { paramCharacter });
        b = paramCharacter;
        return;
      }
    }
    
    b(String paramString1, String paramString2, @Nullable Character paramCharacter)
    {
      this(new ej.a(paramString1, paramString2.toCharArray()), paramCharacter);
    }
    
    final int a(int paramInt)
    {
      return a.t * em.a(paramInt, a.u, RoundingMode.CEILING);
    }
    
    final el.a a(final el.b paramb)
    {
      co.a(paramb);
      new el.a()
      {
        int a = 0;
        int b = 0;
        int c = 0;
        
        public final void a()
        {
          if (b > 0)
          {
            int i = a;
            int j = as;
            int k = b;
            int m = ar;
            paramb.a(aq[(i << j - k & m)]);
            c += 1;
            if (ej.b.b(ej.b.this) != null) {
              while (c % at != 0)
              {
                paramb.a(ej.b.b(ej.b.this).charValue());
                c += 1;
              }
            }
          }
        }
        
        public final void a(byte paramAnonymousByte)
        {
          a <<= 8;
          a |= paramAnonymousByte & 0xFF;
          for (b += 8; b >= as; b -= as)
          {
            paramAnonymousByte = a;
            int i = b;
            int j = as;
            int k = ar;
            paramb.a(aq[(paramAnonymousByte >> i - j & k)]);
            c += 1;
          }
        }
      };
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("BaseEncoding.");
      localStringBuilder.append(a.toString());
      if (8 % a.s != 0)
      {
        if (b != null) {
          break label54;
        }
        localStringBuilder.append(".omitPadding()");
      }
      for (;;)
      {
        return localStringBuilder.toString();
        label54:
        localStringBuilder.append(".withPadChar(").append(b).append(')');
      }
    }
  }
}

/* Location:
 * Qualified Name:     ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */