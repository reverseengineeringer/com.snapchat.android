import java.io.Serializable;

@cd
public abstract class cn<T>
  implements Serializable
{
  public static <T> cn<T> b()
  {
    return cg.a();
  }
  
  public static <T> cn<T> b(T paramT)
  {
    return new cr(co.a(paramT));
  }
  
  public abstract T a(T paramT);
}

/* Location:
 * Qualified Name:     cn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */