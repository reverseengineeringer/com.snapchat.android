import android.os.Handler;

final class be$b$1
  implements Runnable
{
  be$b$1(be.b paramb) {}
  
  public final void run()
  {
    if ((!a.c) || (a.d == null)) {
      return;
    }
    a.d.b();
    a.a.post(a.b);
  }
}

/* Location:
 * Qualified Name:     be.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */