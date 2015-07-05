import java.math.RoundingMode;
import javax.annotation.Nullable;

final class ea$b
  extends ea
{
  private final ea.a a;
  @Nullable
  private final Character b;
  
  private ea$b(ea.a parama, @Nullable Character paramCharacter)
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
  
  ea$b(String paramString1, String paramString2, @Nullable Character paramCharacter)
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

/* Location:
 * Qualified Name:     ea.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */