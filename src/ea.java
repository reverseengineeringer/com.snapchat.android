import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.Nullable;

@cc
@cd
public abstract class ea
{
  private static final ea a = new ea.b("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", Character.valueOf('='));
  private static final ea b = new ea.b("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", Character.valueOf('='));
  private static final ea c = new ea.b("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", Character.valueOf('='));
  private static final ea d = new ea.b("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", Character.valueOf('='));
  private static final ea e = new ea.b("base16()", "0123456789ABCDEF", null);
  
  public static ea a()
  {
    return e;
  }
  
  private String a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    ck.a(paramArrayOfByte);
    ck.a(0, paramInt + 0, paramArrayOfByte.length);
    ec.1 local1 = new ec.1(new StringBuilder(a(paramInt)));
    ec.a locala = a(local1);
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
  
  abstract ec.a a(ec.b paramb);
  
  public final String a(byte[] paramArrayOfByte)
  {
    return a((byte[])ck.a(paramArrayOfByte), paramArrayOfByte.length);
  }
  
  static final class a
    extends cg
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
      v = ((String)ck.a(paramString));
      q = ((char[])ck.a(paramArrayOfChar));
      for (;;)
      {
        try
        {
          s = ed.a(paramArrayOfChar.length, RoundingMode.UNNECESSARY);
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
          ck.a(cg.b.a(c), "Non-ASCII character: %s", new Object[] { Character.valueOf(c) });
          boolean bool;
          if (paramString[c] == -1)
          {
            bool = true;
            ck.a(bool, "Duplicate character: %s", new Object[] { Character.valueOf(c) });
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
        paramString[ed.a(i * 8, s, RoundingMode.CEILING)] = 1;
        i += 1;
      }
      x = paramString;
    }
    
    public final boolean a(char paramChar)
    {
      return (cg.b.a(paramChar)) && (w[paramChar] != -1);
    }
    
    public final String toString()
    {
      return v;
    }
  }
  
  static final class b
    extends ea
  {
    private final ea.a a;
    @Nullable
    private final Character b;
    
    private b(ea.a parama, @Nullable Character paramCharacter)
    {
      a = ((ea.a)ck.a(parama));
      if ((paramCharacter == null) || (!parama.a(paramCharacter.charValue()))) {}
      for (boolean bool = true;; bool = false)
      {
        ck.a(bool, "Padding character %s was already in alphabet", new Object[] { paramCharacter });
        b = paramCharacter;
        return;
      }
    }
    
    b(String paramString1, String paramString2, @Nullable Character paramCharacter)
    {
      this(new ea.a(paramString1, paramString2.toCharArray()), paramCharacter);
    }
    
    final int a(int paramInt)
    {
      return a.t * ed.a(paramInt, a.u, RoundingMode.CEILING);
    }
    
    final ec.a a(final ec.b paramb)
    {
      ck.a(paramb);
      new ec.a()
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
            if (ea.b.b(ea.b.this) != null) {
              while (c % at != 0)
              {
                paramb.a(ea.b.b(ea.b.this).charValue());
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
 * Qualified Name:     ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */