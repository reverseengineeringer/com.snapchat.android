import javax.annotation.Nullable;

public final class ci$a
{
  private final String a;
  private ci.a.a b = new ci.a.a((byte)0);
  private ci.a.a c = b;
  private boolean d = false;
  
  private ci$a(String paramString)
  {
    a = ((String)ck.a(paramString));
  }
  
  public final a a(String paramString, int paramInt)
  {
    return a(paramString, String.valueOf(paramInt));
  }
  
  public final a a(String paramString, long paramLong)
  {
    return a(paramString, String.valueOf(paramLong));
  }
  
  public final a a(String paramString, @Nullable Object paramObject)
  {
    ci.a.a locala = new ci.a.a((byte)0);
    c.c = locala;
    c = locala;
    b = paramObject;
    a = ((String)ck.a(paramString));
    return this;
  }
  
  public final a a(String paramString, boolean paramBoolean)
  {
    return a(paramString, String.valueOf(paramBoolean));
  }
  
  public final String toString()
  {
    boolean bool = d;
    StringBuilder localStringBuilder = new StringBuilder(32).append(a).append('{');
    ci.a.a locala = b.c;
    Object localObject2;
    for (Object localObject1 = ""; locala != null; localObject1 = localObject2)
    {
      if (bool)
      {
        localObject2 = localObject1;
        if (b == null) {}
      }
      else
      {
        localStringBuilder.append((String)localObject1);
        localObject2 = ", ";
        if (a != null) {
          localStringBuilder.append(a).append('=');
        }
        localStringBuilder.append(b);
      }
      locala = c;
    }
    return '}';
  }
  
  static final class a
  {
    String a;
    Object b;
    a c;
  }
}

/* Location:
 * Qualified Name:     ci.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */