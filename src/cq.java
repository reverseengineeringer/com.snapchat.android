import java.io.Serializable;
import javax.annotation.Nullable;

@cd
public final class cq
{
  private static final ck a = new ck(",");
  
  public static <T> cp<T> a(@Nullable T paramT)
  {
    if (paramT == null) {
      return cq.b.c;
    }
    return new cq.a(paramT, (byte)0);
  }
  
  static final class a<T>
    implements cp<T>, Serializable
  {
    private final T a;
    
    private a(T paramT)
    {
      a = paramT;
    }
    
    public final boolean a(T paramT)
    {
      return a.equals(paramT);
    }
    
    public final boolean equals(@Nullable Object paramObject)
    {
      if ((paramObject instanceof a))
      {
        paramObject = (a)paramObject;
        return a.equals(a);
      }
      return false;
    }
    
    public final int hashCode()
    {
      return a.hashCode();
    }
    
    public final String toString()
    {
      String str = String.valueOf(String.valueOf(a));
      return str.length() + 20 + "Predicates.equalTo(" + str + ")";
    }
  }
  
  static abstract enum b
    implements cp<Object>
  {
    private b() {}
  }
}

/* Location:
 * Qualified Name:     cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */