import java.io.Serializable;

public final class er
{
  public static final class a
    implements Serializable
  {
    int a = 0;
    long b = 0L;
    boolean c;
    String d = "";
    boolean e = false;
    int f = 1;
    boolean g;
    String h = "";
    er.a.a i = er.a.a.a;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private String p = "";
    
    public final a a()
    {
      c = false;
      d = "";
      return this;
    }
    
    public final a a(int paramInt)
    {
      j = true;
      a = paramInt;
      return this;
    }
    
    public final a a(long paramLong)
    {
      k = true;
      b = paramLong;
      return this;
    }
    
    public final a a(er.a.a parama)
    {
      if (parama == null) {
        throw new NullPointerException();
      }
      n = true;
      i = parama;
      return this;
    }
    
    public final a a(a parama)
    {
      if (j) {
        a(a);
      }
      if (k) {
        a(b);
      }
      if (c) {
        a(d);
      }
      if (l) {
        a(e);
      }
      if (m) {
        b(f);
      }
      if (g) {
        b(h);
      }
      if (n) {
        a(i);
      }
      if (o) {
        c(p);
      }
      return this;
    }
    
    public final a a(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException();
      }
      c = true;
      d = paramString;
      return this;
    }
    
    public final a a(boolean paramBoolean)
    {
      l = true;
      e = paramBoolean;
      return this;
    }
    
    public final a b()
    {
      g = false;
      h = "";
      return this;
    }
    
    public final a b(int paramInt)
    {
      m = true;
      f = paramInt;
      return this;
    }
    
    public final a b(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException();
      }
      g = true;
      h = paramString;
      return this;
    }
    
    public final boolean b(a parama)
    {
      if (parama == null) {}
      do
      {
        return false;
        if (this == parama) {
          return true;
        }
      } while ((a != a) || (b != b) || (!d.equals(d)) || (e != e) || (f != f) || (!h.equals(h)) || (i != i) || (!p.equals(p)) || (o != o));
      return true;
    }
    
    public final a c()
    {
      n = false;
      i = er.a.a.a;
      return this;
    }
    
    public final a c(String paramString)
    {
      if (paramString == null) {
        throw new NullPointerException();
      }
      o = true;
      p = paramString;
      return this;
    }
    
    public final a d()
    {
      o = false;
      p = "";
      return this;
    }
    
    public final boolean equals(Object paramObject)
    {
      return ((paramObject instanceof a)) && (b((a)paramObject));
    }
    
    public final int hashCode()
    {
      int i2 = 1231;
      int i3 = a;
      int i4 = Long.valueOf(b).hashCode();
      int i5 = d.hashCode();
      int i1;
      int i6;
      int i7;
      int i8;
      int i9;
      if (e)
      {
        i1 = 1231;
        i6 = f;
        i7 = h.hashCode();
        i8 = i.hashCode();
        i9 = p.hashCode();
        if (!o) {
          break label140;
        }
      }
      for (;;)
      {
        return (((((i1 + (((i3 + 2173) * 53 + i4) * 53 + i5) * 53) * 53 + i6) * 53 + i7) * 53 + i8) * 53 + i9) * 53 + i2;
        i1 = 1237;
        break;
        label140:
        i2 = 1237;
      }
    }
    
    public final String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append("Country Code: ").append(a);
      localStringBuilder.append(" National Number: ").append(b);
      if ((l) && (e)) {
        localStringBuilder.append(" Leading Zero(s): true");
      }
      if (m) {
        localStringBuilder.append(" Number of leading zeros: ").append(f);
      }
      if (c) {
        localStringBuilder.append(" Extension: ").append(d);
      }
      if (n) {
        localStringBuilder.append(" Country Code Source: ").append(i);
      }
      if (o) {
        localStringBuilder.append(" Preferred Domestic Carrier Code: ").append(p);
      }
      return localStringBuilder.toString();
    }
    
    public static enum a
    {
      private a() {}
    }
  }
}

/* Location:
 * Qualified Name:     er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */