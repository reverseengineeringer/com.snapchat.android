import android.graphics.Bitmap;

final class aon
  extends bgm
{
  private final aka a;
  @chd
  private final ajl b;
  
  private aon(aka paramaka, ajl paramajl)
  {
    a = paramaka;
    b = paramajl;
  }
  
  @chc
  public final aka a()
  {
    f();
    return a;
  }
  
  @chd
  public final String b()
  {
    f();
    if (b != null) {
      return b.a();
    }
    return null;
  }
  
  protected final void c()
  {
    if (b != null) {
      b.e();
    }
  }
  
  @chd
  public final Bitmap d()
  {
    f();
    if (b != null) {
      return b.b();
    }
    return null;
  }
  
  public static final class a
  {
    final aka a;
    final axx b;
    
    public a(@chc aka paramaka)
    {
      this(paramaka, new axx());
    }
    
    private a(@chc aka paramaka, @chc axx paramaxx)
    {
      a = ((aka)co.a(paramaka));
      b = ((axx)co.a(paramaxx));
    }
  }
}

/* Location:
 * Qualified Name:     aon
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */