import android.os.Handler;

public final class xd
  implements xc
{
  final xc a;
  private final Handler b;
  
  public xd(Handler paramHandler, xc paramxc)
  {
    b = paramHandler;
    a = paramxc;
  }
  
  public final void a(final wy.b paramb, final int paramInt)
  {
    b.post(new Runnable()
    {
      public final void run()
      {
        a.a(paramb, paramInt);
      }
    });
  }
  
  public final void b(final int paramInt)
  {
    b.post(new Runnable()
    {
      public final void run()
      {
        a.b(paramInt);
      }
    });
  }
}

/* Location:
 * Qualified Name:     xd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */