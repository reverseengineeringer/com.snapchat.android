import java.math.RoundingMode;
import javax.annotation.Nullable;

final class ej$b
  extends ej
{
  private final ej.a a;
  @Nullable
  private final Character b;
  
  private ej$b(ej.a parama, @Nullable Character paramCharacter)
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
  
  ej$b(String paramString1, String paramString2, @Nullable Character paramCharacter)
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

/* Location:
 * Qualified Name:     ej.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */