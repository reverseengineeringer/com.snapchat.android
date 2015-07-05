import java.util.concurrent.ExecutorService;

public final class btd
{
  public static int a = btd.a.a;
  private static bti b;
  
  public static void a() {}
  
  public static void a(bti parambti)
  {
    b = parambti;
  }
  
  public static void a(Throwable paramThrowable)
  {
    if (!(paramThrowable instanceof bsc)) {}
    try
    {
      if ((b != null) && (a == btd.a.b))
      {
        bti localbti = b;
        paramThrowable = new bti.1(localbti, paramThrowable, Thread.currentThread().getId());
        if (!c.a(paramThrowable)) {
          b.execute(paramThrowable);
        }
      }
      return;
    }
    catch (ThreadDeath paramThrowable)
    {
      throw paramThrowable;
    }
    catch (Throwable paramThrowable) {}
  }
  
  public static void b() {}
  
  public static void c() {}
  
  public static void d() {}
  
  public static void e() {}
  
  public static void f() {}
  
  public static void g() {}
  
  public static void h() {}
  
  public static enum a {}
}

/* Location:
 * Qualified Name:     btd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */