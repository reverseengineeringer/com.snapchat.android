import android.os.Handler;

final class be$b
  extends bo
{
  final Handler a;
  final Runnable b;
  boolean c;
  
  public be$b(Handler paramHandler)
  {
    a = paramHandler;
    b = new Runnable()
    {
      public final void run()
      {
        if ((!c) || (d == null)) {
          return;
        }
        d.b();
        a.post(b);
      }
    };
  }
  
  public final void a()
  {
    c = true;
    a.removeCallbacks(b);
    a.post(b);
  }
  
  public final void b()
  {
    c = false;
    a.removeCallbacks(b);
  }
}

/* Location:
 * Qualified Name:     be.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */