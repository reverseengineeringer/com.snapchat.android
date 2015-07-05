import android.os.Handler;

public final class wh
  implements wg
{
  final wg a;
  private final Handler b;
  
  public wh(Handler paramHandler, wg paramwg)
  {
    b = paramHandler;
    a = paramwg;
  }
  
  public final void a(final wc.b paramb, final int paramInt)
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
 * Qualified Name:     wh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */