import java.util.Arrays;
import java.util.List;

public final class blq
{
  public static final blq a;
  public static final blq b = new blq.a(a).a(new bmf[] { bmf.c }).a().b();
  public static final blq c = new blq.a(false).b();
  public final boolean d;
  final String[] e;
  final String[] f;
  final boolean g;
  
  static
  {
    blq.a locala = new blq.a(true);
    bln localbln1 = bln.aK;
    bln localbln2 = bln.aO;
    bln localbln3 = bln.W;
    bln localbln4 = bln.am;
    bln localbln5 = bln.al;
    bln localbln6 = bln.av;
    bln localbln7 = bln.aw;
    bln localbln8 = bln.F;
    bln localbln9 = bln.E;
    bln localbln10 = bln.J;
    bln localbln11 = bln.U;
    bln localbln12 = bln.D;
    bln localbln13 = bln.H;
    bln localbln14 = bln.h;
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
    a = locala.a(new bmf[] { bmf.a, bmf.b, bmf.c }).a().b();
  }
  
  private blq(blq.a parama)
  {
    d = a;
    e = b;
    f = c;
    g = d;
  }
  
  private List<bmf> a()
  {
    bmf[] arrayOfbmf = new bmf[f.length];
    int i = 0;
    while (i < f.length)
    {
      arrayOfbmf[i] = bmf.a(f[i]);
      i += 1;
    }
    return bmp.a(arrayOfbmf);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof blq)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (blq)paramObject;
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
        localObject = new bln[e.length];
        int i = 0;
        while (i < e.length)
        {
          localObject[i] = bln.a(e[i]);
          i += 1;
        }
        localObject = bmp.a((Object[])localObject);
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
    
    public a(blq paramblq)
    {
      a = d;
      b = blq.a(paramblq);
      c = blq.b(paramblq);
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
    
    public final a a(bmf... paramVarArgs)
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
    
    public final blq b()
    {
      return new blq(this, (byte)0);
    }
  }
}

/* Location:
 * Qualified Name:     blq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */