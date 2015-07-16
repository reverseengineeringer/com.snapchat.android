import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

final class brz$3
  extends btt
{
  brz$3(brz parambrz, Throwable paramThrowable, long paramLong) {}
  
  public final void a()
  {
    if (c.g.c()) {}
    do
    {
      return;
      localObject1 = new bsf(a, b);
      ((bsf)localObject1).a("current_session", c.l);
      c = "he";
    } while ((!c.i.a((bsx)localObject1)) || (!c.n.a()));
    Object localObject2 = new btq(c.c);
    ((btq)localObject2).a(c.i, new btl.a(), c.w.i, brz.a);
    Object localObject1 = c.o;
    ExecutorService localExecutorService = c.q;
    localObject2 = a.iterator();
    while (((Iterator)localObject2).hasNext())
    {
      btt localbtt = (btt)((Iterator)localObject2).next();
      if (!((btr)localObject1).a(localbtt)) {
        localExecutorService.execute(localbtt);
      }
    }
    c.n.b();
  }
}

/* Location:
 * Qualified Name:     brz.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */