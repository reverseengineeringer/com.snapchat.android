import java.io.IOException;

final class bnh$1
  implements Runnable
{
  bnh$1(bnh parambnh) {}
  
  public final void run()
  {
    synchronized (a)
    {
      int i;
      if (!bnh.a(a))
      {
        i = 1;
        if ((i | bnh.b(a)) == 0) {}
      }
      else
      {
        i = 0;
      }
    }
  }
}

/* Location:
 * Qualified Name:     bnh.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */