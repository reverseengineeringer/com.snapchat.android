import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

final class bqy$3
  extends bss
{
  bqy$3(bqy parambqy, Throwable paramThrowable, long paramLong) {}
  
  public final void a()
  {
    if (c.g.c()) {}
    do
    {
      return;
      localObject1 = new bre(a, b);
      ((bre)localObject1).a("current_session", c.l);
      c = "he";
    } while ((!c.i.a((brw)localObject1)) || (!c.n.a()));
    Object localObject2 = new bsp(c.c);
    ((bsp)localObject2).a(c.i, new bsk.a(), c.w.i, bqy.a);
    Object localObject1 = c.o;
    ExecutorService localExecutorService = c.q;
    localObject2 = a.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      bss localbss = (bss)((Iterator)localObject2).next();
      if (!((bsq)localObject1).a(localbss)) {
        localExecutorService.execute(localbss);
      }
    }
    c.n.b();
  }
}

/* Location:
 * Qualified Name:     bqy.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */