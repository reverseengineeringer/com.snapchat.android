import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import com.crittercism.app.CrittercismNDK;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class bsq
  extends bss
{
  ConditionVariable a = new ConditionVariable();
  private brb b;
  private Context c;
  private bqv d;
  private bqw e;
  private bqu f;
  private List g = new ArrayList();
  private boolean h = false;
  private boolean i;
  private Exception j = null;
  
  public bsq(brb parambrb, Context paramContext, bqv parambqv, bqw parambqw, bqu parambqu)
  {
    b = parambrb;
    c = paramContext;
    d = parambqv;
    e = parambqw;
    f = parambqu;
    i = false;
  }
  
  private void b()
  {
    try
    {
      h = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private boolean c()
  {
    try
    {
      boolean bool = h;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private File d()
  {
    int k = 0;
    Object localObject1 = new File(c.getFilesDir().getAbsolutePath() + "/" + b.g);
    if ((!((File)localObject1).exists()) || (!((File)localObject1).isDirectory())) {}
    for (;;)
    {
      return null;
      localObject1 = ((File)localObject1).listFiles();
      if (localObject1 != null) {
        if (localObject1.length == 1)
        {
          localObject1 = localObject1[0];
          ((File)localObject1).isFile();
          if (((File)localObject1).isFile()) {
            return (File)localObject1;
          }
        }
        else if (localObject1.length > 1)
        {
          int m = localObject1.length;
          while (k < m)
          {
            Object localObject2 = localObject1[k];
            ((File)localObject2).isFile();
            ((File)localObject2).delete();
            k += 1;
          }
        }
      }
    }
  }
  
  private void e()
  {
    if (tu) {}
    Object localObject1;
    Object localObject2;
    do
    {
      do
      {
        btb localbtb;
        do
        {
          return;
          localObject1 = d.j();
          localObject2 = d.k();
          brk localbrk1 = d.l();
          brk localbrk2 = d.m();
          brk localbrk3 = d.n();
          localbtb = d.r();
          ((brk)localObject1).a(new brf());
          if (!b.b)
          {
            bsp localbsp = new bsp(c);
            localbsp.a((brk)localObject1, new bsf.a(), b.i, f);
            localbsp.a((brk)localObject2, new bsk.a(), b.i, f);
            localbsp.a(localbrk2, new bsk.a(), b.i, f);
            localbsp.a(localbrk3, new bsk.a(), b.i, f);
            localbsp.a(localbrk1, new bsk.a(), b.i, new bqz(f, b));
            localbsp.a();
          }
        } while (!a.getBoolean("dirty", false));
        localObject1 = bqy.t();
      } while (u);
      localObject2 = new bqy.1((bqy)localObject1, (bqy)localObject1);
    } while (o.a((Runnable)localObject2));
    q.execute((Runnable)localObject2);
  }
  
  public final void a()
  {
    Object localObject5;
    try
    {
      btd.b();
      Object localObject1 = new File(c.getFilesDir().getAbsolutePath() + "/com.crittercism/pending");
      if ((((File)localObject1).exists()) && (!((File)localObject1).isDirectory()))
      {
        btd.b();
        localObject1 = bqy.t();
        y.a();
        localObject5 = f.i();
        e.open();
        ((btc)localObject5).a(e);
        bsv.a = bsv.a(c).booleanValue();
        bsv.a(c, false);
        if (!((btc)localObject5).c())
        {
          ((btc)localObject5).a().a(e, hn, ho);
          ((btc)localObject5).b().a(e, kn, ko);
        }
        i = ((btc)localObject5).c();
        localObject5 = d();
        if (!i) {
          break label459;
        }
        if (!tu)
        {
          if ((localObject5 != null) && (((File)localObject5).exists())) {
            ((File)localObject5).isFile();
          }
          new brk(c, brj.a).a();
          new brk(c, brj.b).a();
          new brk(c, brj.c).a();
          new brk(c, brj.d).a();
          new brk(c, brj.e).a();
          new brk(c, brj.f).a();
          new brk(c, brj.h).a();
          new brk(c, brj.g).a();
          if (localObject5 != null) {
            ((File)localObject5).delete();
          }
        }
        bto.b(c);
        b();
        localObject1 = g.iterator();
        while (((Iterator)localObject1).hasNext()) {
          ((Runnable)((Iterator)localObject1).next()).run();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        new StringBuilder("Exception in run(): ").append(localException.getMessage());
        btd.b();
        btd.c();
        j = localException;
        return;
        bth.a(localException);
      }
    }
    finally
    {
      a.open();
    }
    label459:
    Object localObject6 = c;
    Object localObject3 = new bto((Context)localObject6);
    localObject6 = ((Context)localObject6).getSharedPreferences("com.crittercism.optmz.config", 0);
    if (((SharedPreferences)localObject6).contains("interval"))
    {
      d = ((SharedPreferences)localObject6).getInt("interval", 10);
      if (!((SharedPreferences)localObject6).contains("kill")) {
        break label842;
      }
      c = ((SharedPreferences)localObject6).getBoolean("kill", false);
      if (!((SharedPreferences)localObject6).contains("persist")) {
        break label847;
      }
      b = ((SharedPreferences)localObject6).getBoolean("persist", false);
      if (!((SharedPreferences)localObject6).contains("enabled")) {
        break label852;
      }
      a = ((SharedPreferences)localObject6).getBoolean("enabled", false);
    }
    for (;;)
    {
      if (localObject3 != null) {
        bqy.t().a((bto)localObject3);
      }
      d.s();
      localObject3 = bqy.t();
      if (!u)
      {
        if ((localObject5 != null) && (((File)localObject5).exists())) {
          ((File)localObject5).isFile();
        }
        localObject6 = d.o();
        brk localbrk1 = d.p();
        brk localbrk2 = d.q();
        brk localbrk3 = d.m();
        if (localObject5 != null)
        {
          bsv.a = true;
          f.open();
          localbrk3.a(new brt((File)localObject5, (brk)localObject6, localbrk2, localbrk1));
          ((File)localObject5).delete();
          localbrk2.a();
          localbrk1.a();
          ((brk)localObject6).a(localbrk2);
        }
      }
      else
      {
        d.o().a(bru.a);
        if ((!tu) && (b.d)) {
          btd.b();
        }
      }
      try
      {
        CrittercismNDK.a(c, b.g);
        e();
        break;
        f.open();
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          new StringBuilder("Exception installing ndk library: ").append(localThrowable.getClass().getName());
          btd.b();
        }
      }
      a.open();
      return;
      Object localObject4 = null;
      continue;
      label842:
      localObject4 = null;
      continue;
      label847:
      localObject4 = null;
      continue;
      label852:
      localObject4 = null;
    }
  }
  
  /* Error */
  public final boolean a(Runnable paramRunnable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: invokespecial 423	bsq:c	()Z
    //   6: ifne +20 -> 26
    //   9: aload_0
    //   10: getfield 38	bsq:g	Ljava/util/List;
    //   13: aload_1
    //   14: invokeinterface 427 2 0
    //   19: pop
    //   20: iconst_1
    //   21: istore_2
    //   22: aload_0
    //   23: monitorexit
    //   24: iload_2
    //   25: ireturn
    //   26: iconst_0
    //   27: istore_2
    //   28: goto -6 -> 22
    //   31: astore_1
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	36	0	this	bsq
    //   0	36	1	paramRunnable	Runnable
    //   21	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	20	31	finally
  }
}

/* Location:
 * Qualified Name:     bsq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */