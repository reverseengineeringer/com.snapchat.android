import java.util.concurrent.CountDownLatch;

final class amr$1
  implements alw.a
{
  amr$1(amr paramamr) {}
  
  public final void a(aly paramaly)
  {
    a.c = false;
    a.a.countDown();
  }
  
  public final void a(aly paramaly, bgl parambgl, us paramus)
  {
    try
    {
      a.c = a.a(parambgl);
      return;
    }
    finally
    {
      a.a.countDown();
    }
  }
}

/* Location:
 * Qualified Name:     amr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */