import java.util.concurrent.CountDownLatch;

final class alu$1
  implements alb.a
{
  alu$1(alu paramalu) {}
  
  public final void a(alc paramalc)
  {
    a.c = false;
    a.a.countDown();
  }
  
  public final void a(alc paramalc, bfl parambfl, uc paramuc)
  {
    try
    {
      a.c = a.a(parambfl);
      return;
    }
    finally
    {
      a.a.countDown();
    }
  }
}

/* Location:
 * Qualified Name:     alu.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */