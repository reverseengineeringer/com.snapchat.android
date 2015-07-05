import android.graphics.Bitmap;

final class anq
  extends bfm
{
  private final aje a;
  @cgc
  private final aip b;
  
  private anq(aje paramaje, aip paramaip)
  {
    a = paramaje;
    b = paramaip;
  }
  
  @cgb
  public final aje a()
  {
    f();
    return a;
  }
  
  @cgc
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
  
  @cgc
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
    final aje a;
    final awz b;
    
    public a(@cgb aje paramaje)
    {
      this(paramaje, new awz());
    }
    
    private a(@cgb aje paramaje, @cgb awz paramawz)
    {
      a = ((aje)ck.a(paramaje));
      b = ((awz)ck.a(paramawz));
    }
  }
}

/* Location:
 * Qualified Name:     anq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */