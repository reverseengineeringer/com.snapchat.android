import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import com.crittercism.app.CrittercismNDK;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;

public final class btr
  extends btt
{
  ConditionVariable a = new ConditionVariable();
  private bsc b;
  private Context c;
  private brw d;
  private brx e;
  private brv f;
  private List g = new ArrayList();
  private boolean h = false;
  private boolean i;
  private Exception j = null;
  
  public btr(bsc parambsc, Context paramContext, brw parambrw, brx parambrx, brv parambrv)
  {
    b = parambsc;
    c = paramContext;
    d = parambrw;
    e = parambrx;
    f = parambrv;
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
        buc localbuc;
        do
        {
          return;
          localObject1 = d.j();
          localObject2 = d.k();
          bsl localbsl1 = d.l();
          bsl localbsl2 = d.m();
          bsl localbsl3 = d.n();
          localbuc = d.r();
          ((bsl)localObject1).a(new bsg());
          if (!b.b)
          {
            btq localbtq = new btq(c);
            localbtq.a((bsl)localObject1, new btg.a(), b.i, f);
            localbtq.a((bsl)localObject2, new btl.a(), b.i, f);
            localbtq.a(localbsl2, new btl.a(), b.i, f);
            localbtq.a(localbsl3, new btl.a(), b.i, f);
            localbtq.a(localbsl1, new btl.a(), b.i, new bsa(f, b));
            localbtq.a();
          }
        } while (!a.getBoolean("dirty", false));
        localObject1 = brz.t();
      } while (u);
      localObject2 = new brz.1((brz)localObject1, (brz)localObject1);
    } while (o.a((Runnable)localObject2));
    q.execute((Runnable)localObject2);
  }
  
  public final void a()
  {
    Object localObject5;
    try
    {
      bue.b();
      Object localObject1 = new File(c.getFilesDir().getAbsolutePath() + "/com.crittercism/pending");
      if ((((File)localObject1).exists()) && (!((File)localObject1).isDirectory()))
      {
        bue.b();
        localObject1 = brz.t();
        y.a();
        localObject5 = f.i();
        e.open();
        ((bud)localObject5).a(e);
        btw.a = btw.a(c).booleanValue();
        btw.a(c, false);
        if (!((bud)localObject5).c())
        {
          ((bud)localObject5).a().a(e, hn, ho);
          ((bud)localObject5).b().a(e, kn, ko);
        }
        i = ((bud)localObject5).c();
        localObject5 = d();
        if (!i) {
          break label459;
        }
        if (!tu)
        {
          if ((localObject5 != null) && (((File)localObject5).exists())) {
            ((File)localObject5).isFile();
          }
          new bsl(c, bsk.a).a();
          new bsl(c, bsk.b).a();
          new bsl(c, bsk.c).a();
          new bsl(c, bsk.d).a();
          new bsl(c, bsk.e).a();
          new bsl(c, bsk.f).a();
          new bsl(c, bsk.h).a();
          new bsl(c, bsk.g).a();
          if (localObject5 != null) {
            ((File)localObject5).delete();
          }
        }
        bup.b(c);
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
        bue.b();
        bue.c();
        j = localException;
        return;
        bui.a(localException);
      }
    }
    finally
    {
      a.open();
    }
    label459:
    Object localObject6 = c;
    Object localObject3 = new bup((Context)localObject6);
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
        brz.t().a((bup)localObject3);
      }
      d.s();
      localObject3 = brz.t();
      if (!u)
      {
        if ((localObject5 != null) && (((File)localObject5).exists())) {
          ((File)localObject5).isFile();
        }
        localObject6 = d.o();
        bsl localbsl1 = d.p();
        bsl localbsl2 = d.q();
        bsl localbsl3 = d.m();
        if (localObject5 != null)
        {
          btw.a = true;
          f.open();
          localbsl3.a(new bsu((File)localObject5, (bsl)localObject6, localbsl2, localbsl1));
          ((File)localObject5).delete();
          localbsl2.a();
          localbsl1.a();
          ((bsl)localObject6).a(localbsl2);
        }
      }
      else
      {
        d.o().a(bsv.a);
        if ((!tu) && (b.d)) {
          bue.b();
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
          bue.b();
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
    //   3: invokespecial 423	btr:c	()Z
    //   6: ifne +20 -> 26
    //   9: aload_0
    //   10: getfield 38	btr:g	Ljava/util/List;
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
    //   0	36	0	this	btr
    //   0	36	1	paramRunnable	Runnable
    //   21	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	20	31	finally
  }
}

/* Location:
 * Qualified Name:     btr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */