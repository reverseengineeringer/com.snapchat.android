import org.json.JSONArray;

final class bqy$2
  extends bss
{
  bqy$2(bqy parambqy, Throwable paramThrowable, long paramLong) {}
  
  public final void a()
  {
    if (c.g.c()) {
      return;
    }
    synchronized (c.n)
    {
      if (c.A < 10)
      {
        Object localObject1 = new bre(a, b);
        ((bre)localObject1).a("current_session", c.l);
        ((bre)localObject1).a(c.m);
        c = "he";
        if (c.n.a())
        {
          localObject1 = new JSONArray().put(((bre)localObject1).a());
          new bsu(new bsg(bqy.a).a(bo, (JSONArray)localObject1), new bsm(new bsl(c.w.i, "/android_v2/handle_exceptions").a()), null).run();
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
 * Qualified Name:     bqy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */