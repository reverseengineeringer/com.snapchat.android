import org.json.JSONArray;

final class brz$2
  extends btt
{
  brz$2(brz parambrz, Throwable paramThrowable, long paramLong) {}
  
  public final void a()
  {
    if (c.g.c()) {
      return;
    }
    synchronized (c.n)
    {
      if (c.A < 10)
      {
        Object localObject1 = new bsf(a, b);
        ((bsf)localObject1).a("current_session", c.l);
        ((bsf)localObject1).a(c.m);
        c = "he";
        if (c.n.a())
        {
          localObject1 = new JSONArray().put(((bsf)localObject1).a());
          new btv(new bth(brz.a).a(bo, (JSONArray)localObject1), new btn(new btm(c.w.i, "/android_v2/handle_exceptions").a()), null).run();
          localObject1 = c;
          A += 1;
          c.n.b();
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     brz.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */