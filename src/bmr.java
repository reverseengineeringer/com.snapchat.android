import java.util.Arrays;
import java.util.List;

public final class bmr
{
  public static final bmr a;
  public static final bmr b = new bmr.a(a).a(new bng[] { bng.c }).a().b();
  public static final bmr c = new bmr.a(false).b();
  public final boolean d;
  final String[] e;
  final String[] f;
  final boolean g;
  
  static
  {
    bmr.a locala = new bmr.a(true);
    bmo localbmo1 = bmo.aK;
    bmo localbmo2 = bmo.aO;
    bmo localbmo3 = bmo.W;
    bmo localbmo4 = bmo.am;
    bmo localbmo5 = bmo.al;
    bmo localbmo6 = bmo.av;
    bmo localbmo7 = bmo.aw;
    bmo localbmo8 = bmo.F;
    bmo localbmo9 = bmo.E;
    bmo localbmo10 = bmo.J;
    bmo localbmo11 = bmo.U;
    bmo localbmo12 = bmo.D;
    bmo localbmo13 = bmo.H;
    bmo localbmo14 = bmo.h;
    if (!a) {
      throw new IllegalStateException("no cipher suites for cleartext connections");
    }
    String[] arrayOfString = new String[14];
    int i = 0;
    while (i < 14)
    {
      arrayOfString[i] = aS;
      i += 1;
    }
    b = arrayOfString;
    a = locala.a(new bng[] { bng.a, bng.b, bng.c }).a().b();
  }
  
  private bmr(bmr.a parama)
  {
    d = a;
    e = b;
    f = c;
    g = d;
  }
  
  private List<bng> a()
  {
    bng[] arrayOfbng = new bng[f.length];
    int i = 0;
    while (i < f.length)
    {
      arrayOfbng[i] = bng.a(f[i]);
      i += 1;
    }
    return bnq.a(arrayOfbng);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof bmr)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (bmr)paramObject;
    } while ((d != d) || ((d) && ((!Arrays.equals(e, e)) || (!Arrays.equals(f, f)) || (g != g))));
    return true;
  }
  
  public final int hashCode()
  {
    int i = 17;
    int j;
    int k;
    if (d)
    {
      j = Arrays.hashCode(e);
      k = Arrays.hashCode(f);
      if (!g) {
        break label53;
      }
    }
    label53:
    for (i = 0;; i = 1)
    {
      i += ((j + 527) * 31 + k) * 31;
      return i;
    }
  }
  
  public final String toString()
  {
    if (d)
    {
      if (e == null)
      {
        localObject = null;
        if (localObject != null) {
          break label116;
        }
      }
      label116:
      for (Object localObject = "[use default]";; localObject = localObject.toString())
      {
        return "ConnectionSpec(cipherSuites=" + (String)localObject + ", tlsVersions=" + a() + ", supportsTlsExtensions=" + g + ")";
        localObject = new bmo[e.length];
        int i = 0;
        while (i < e.length)
        {
          localObject[i] = bmo.a(e[i]);
          i += 1;
        }
        localObject = bnq.a((Object[])localObject);
        break;
      }
    }
    return "ConnectionSpec()";
  }
  
  public static final class a
  {
    boolean a;
    String[] b;
    String[] c;
    boolean d;
    
    public a(bmr parambmr)
    {
      a = d;
      b = bmr.a(parambmr);
      c = bmr.b(parambmr);
      d = g;
    }
    
    a(boolean paramBoolean)
    {
      a = paramBoolean;
    }
    
    public final a a()
    {
      if (!a) {
        throw new IllegalStateException("no TLS extensions for cleartext connections");
      }
      d = true;
      return this;
    }
    
    public final a a(bng... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      String[] arrayOfString = new String[paramVarArgs.length];
      int i = 0;
      while (i < paramVarArgs.length)
      {
        arrayOfString[i] = e;
        i += 1;
      }
      c = arrayOfString;
      return this;
    }
    
    public final a a(String... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no cipher suites for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        b = null;
        return this;
      }
      b = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public final a b(String... paramVarArgs)
    {
      if (!a) {
        throw new IllegalStateException("no TLS versions for cleartext connections");
      }
      if (paramVarArgs == null)
      {
        c = null;
        return this;
      }
      c = ((String[])paramVarArgs.clone());
      return this;
    }
    
    public final bmr b()
    {
      return new bmr(this, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     bmr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */