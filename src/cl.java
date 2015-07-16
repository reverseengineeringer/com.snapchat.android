import javax.annotation.Nullable;

@cd
public final class cl
{
  public static cl.a a(Class<?> paramClass)
  {
    return new cl.a(b(paramClass), (byte)0);
  }
  
  public static cl.a a(Object paramObject)
  {
    return new cl.a(b(paramObject.getClass()), (byte)0);
  }
  
  private static String b(Class<?> paramClass)
  {
    paramClass = paramClass.getName().replaceAll("\\$[0-9]+", "\\$");
    int j = paramClass.lastIndexOf('$');
    int i = j;
    if (j == -1) {
      i = paramClass.lastIndexOf('.');
    }
    return paramClass.substring(i + 1);
  }
  
  public static final class a
  {
    private final String a;
    private cl.a.a b = new cl.a.a((byte)0);
    private cl.a.a c = b;
    private boolean d = false;
    
    private a(String paramString)
    {
      a = ((String)co.a(paramString));
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
      cl.a.a locala = new cl.a.a((byte)0);
      c.c = locala;
      c = locala;
      b = paramObject;
      a = ((String)co.a(paramString));
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
      cl.a.a locala = b.c;
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
}

/* Location:
 * Qualified Name:     cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */