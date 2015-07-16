import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.ConditionVariable;
import android.os.Process;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONObject;

public final class brz
  implements brv, brw, brx, bun
{
  static brz a;
  int A = 0;
  private bsl B;
  private bsl C;
  public boolean b = false;
  public Context c = null;
  public String d = null;
  public final ConditionVariable e = new ConditionVariable(false);
  public final ConditionVariable f = new ConditionVariable(false);
  public bud g = new bud();
  bsl h;
  bsl i;
  bsl j;
  bsl k;
  bsl l;
  bsl m;
  public bti n = null;
  public btr o = null;
  public buo p = null;
  ExecutorService q = Executors.newCachedThreadPool(new bug());
  public ExecutorService r = Executors.newSingleThreadExecutor(new bug());
  public bru s;
  public boolean t = false;
  public boolean u = false;
  public String v = "";
  public bsc w = new bsc();
  public bum x = new bum(r);
  public bty y;
  buc z = null;
  
  public static brz t()
  {
    if (a == null) {
      a = new brz();
    }
    return a;
  }
  
  public final String a()
  {
    String str2 = d;
    String str1 = str2;
    if (str2 == null) {
      str1 = "";
    }
    return str1;
  }
  
  public final String a(String paramString1, String paramString2)
  {
    Object localObject = null;
    SharedPreferences localSharedPreferences = c.getSharedPreferences(paramString1, 0);
    paramString1 = (String)localObject;
    if (localSharedPreferences != null) {
      paramString1 = localSharedPreferences.getString(paramString2, null);
    }
    return paramString1;
  }
  
  public final void a(final btc parambtc)
  {
    parambtc = new btt()
    {
      public final void a()
      {
        m.a(parambtc);
      }
    };
    if (!o.a(parambtc)) {
      r.execute(parambtc);
    }
  }
  
  public final void a(bup parambup)
  {
    if ((!t) || (!w.f)) {}
    while ((!a) || (c)) {
      return;
    }
    bue.d();
    buo localbuo = p;
    int i1 = d;
    b = TimeUnit.SECONDS.toMillis(i1);
    p.a.open();
  }
  
  public final void a(String paramString1, String paramString2, int paramInt)
  {
    paramString1 = c.getSharedPreferences(paramString1, 0);
    if (paramString1 != null)
    {
      paramString1 = paramString1.edit();
      if (paramString1 != null)
      {
        paramString1.remove(paramString2);
        paramString1.putInt(paramString2, paramInt);
        paramString1.commit();
      }
    }
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    paramString1 = c.getSharedPreferences(paramString1, 0);
    if (paramString1 != null)
    {
      paramString1 = paramString1.edit();
      if (paramString1 != null)
      {
        paramString1.remove(paramString2);
        paramString1.putString(paramString2, paramString3);
        paramString1.commit();
      }
    }
  }
  
  final void a(Throwable paramThrowable)
  {
    paramThrowable = new bsf(paramThrowable, Thread.currentThread().getId());
    paramThrowable.a("crashed_session", l);
    if (C.b() > 0) {
      paramThrowable.a("previous_session", C);
    }
    paramThrowable.a(m);
    b = new JSONArray();
    Iterator localIterator = Thread.getAllStackTraces().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      HashMap localHashMap = new HashMap();
      Thread localThread = (Thread)localEntry.getKey();
      if (localThread.getId() != a)
      {
        localHashMap.put("name", localThread.getName());
        localHashMap.put("id", Long.valueOf(localThread.getId()));
        localHashMap.put("state", localThread.getState().name());
        localHashMap.put("stacktrace", new JSONArray(Arrays.asList((Object[])localEntry.getValue())));
        b.put(new JSONObject(localHashMap));
      }
    }
    k.a(paramThrowable);
    paramThrowable = new btq(c);
    paramThrowable.a(h, new btl.a(), w.i, this);
    paramThrowable.a(i, new btl.a(), w.i, this);
    paramThrowable.a(j, new btl.a(), w.i, this);
    paramThrowable.a(k, new btl.a(), w.i, this);
    try
    {
      paramThrowable.a();
      return;
    }
    catch (InterruptedException paramThrowable)
    {
      new StringBuilder("InterruptedException in logCrashException: ").append(paramThrowable.getMessage());
      bue.b();
      bue.c();
      return;
    }
    catch (Throwable paramThrowable)
    {
      new StringBuilder("Unexpected throwable in logCrashException: ").append(paramThrowable.getMessage());
      bue.b();
      bue.c();
    }
  }
  
  public final int b(String paramString1, String paramString2)
  {
    int i1 = 0;
    paramString1 = c.getSharedPreferences(paramString1, 0);
    if (paramString1 != null) {
      i1 = paramString1.getInt(paramString2, 0);
    }
    return i1;
  }
  
  public final String b()
  {
    return bsp.ca;
  }
  
  public final void b(final Throwable paramThrowable)
  {
    if (paramThrowable == null) {}
    for (;;)
    {
      try
      {
        bue.g();
        return;
      }
      finally {}
      if (u)
      {
        paramThrowable = new btt()
        {
          public final void a()
          {
            if (g.c()) {
              return;
            }
            synchronized (n)
            {
              if (A < 10)
              {
                Object localObject1 = new bsf(paramThrowable, b);
                ((bsf)localObject1).a("current_session", l);
                ((bsf)localObject1).a(m);
                c = "he";
                if (n.a())
                {
                  localObject1 = new JSONArray().put(((bsf)localObject1).a());
                  new btv(new bth(brz.a).a(bo, (JSONArray)localObject1), new btn(new btm(w.i, "/android_v2/handle_exceptions").a()), null).run();
                  localObject1 = brz.this;
                  A += 1;
                  n.b();
                }
              }
              return;
            }
          }
        };
        if (!o.a(paramThrowable)) {
          r.execute(paramThrowable);
        }
      }
      else
      {
        paramThrowable = new btt()
        {
          public final void a()
          {
            if (g.c()) {}
            do
            {
              return;
              localObject1 = new bsf(paramThrowable, b);
              ((bsf)localObject1).a("current_session", l);
              c = "he";
            } while ((!i.a((bsx)localObject1)) || (!n.a()));
            Object localObject2 = new btq(c);
            ((btq)localObject2).a(i, new btl.a(), w.i, brz.a);
            Object localObject1 = o;
            ExecutorService localExecutorService = q;
            localObject2 = a.iterator();
            while (((Iterator)localObject2).hasNext())
            {
              btt localbtt = (btt)((Iterator)localObject2).next();
              if (!((btr)localObject1).a(localbtt)) {
                localExecutorService.execute(localbtt);
              }
            }
            n.b();
          }
        };
        if (!o.a(paramThrowable)) {
          r.execute(paramThrowable);
        }
      }
    }
  }
  
  public final String c()
  {
    String str = "";
    if (y != null) {
      str = y.a();
    }
    return str;
  }
  
  public final boolean c(String paramString1, String paramString2)
  {
    boolean bool = false;
    paramString1 = c.getSharedPreferences(paramString1, 0);
    if (paramString1 != null) {
      bool = paramString1.getBoolean(paramString2, false);
    }
    return bool;
  }
  
  public final int d()
  {
    int i1 = -1;
    if (g != null) {
      i1 = Integer.valueOf(g.b().a).intValue();
    }
    return i1;
  }
  
  public final String e()
  {
    return bsp.fa;
  }
  
  public final String f()
  {
    return "Android";
  }
  
  public final String g()
  {
    return Build.MODEL;
  }
  
  public final String h()
  {
    return Build.VERSION.RELEASE;
  }
  
  public final bud i()
  {
    return g;
  }
  
  public final bsl j()
  {
    return h;
  }
  
  public final bsl k()
  {
    return i;
  }
  
  public final bsl l()
  {
    return B;
  }
  
  public final bsl m()
  {
    return j;
  }
  
  public final bsl n()
  {
    return k;
  }
  
  public final bsl o()
  {
    return l;
  }
  
  public final bsl p()
  {
    return m;
  }
  
  public final bsl q()
  {
    return C;
  }
  
  public final buc r()
  {
    return z;
  }
  
  public final void s()
  {
    if (u) {}
    for (l = new bsl(c, bsk.f).a(c);; l = new bsl(c, bsk.f))
    {
      C = new bsl(c, bsk.h);
      m = new bsl(c, bsk.g);
      h = new bsl(c, bsk.a);
      i = new bsl(c, bsk.b);
      B = new bsl(c, bsk.c);
      j = new bsl(c, bsk.d);
      k = new bsl(c, bsk.e);
      if (!u) {
        z = new buc(c, d);
      }
      return;
    }
  }
  
  public final void u()
  {
    int i2 = Process.myUid();
    int i3 = Process.myPid();
    Object localObject = (ActivityManager)c.getSystemService("activity");
    Iterator localIterator = ((ActivityManager)localObject).getRunningAppProcesses().iterator();
    int i1 = 0;
    if (localIterator.hasNext())
    {
      if (nextuid != i2) {
        break label130;
      }
      i1 += 1;
    }
    label130:
    for (;;)
    {
      break;
      if (i1 <= 1) {
        u = false;
      }
      do
      {
        return;
        while (!((Iterator)localObject).hasNext()) {
          localObject = ((ActivityManager)localObject).getRunningServices(Integer.MAX_VALUE).iterator();
        }
      } while (nextpid != i3);
      u = true;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     brz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */