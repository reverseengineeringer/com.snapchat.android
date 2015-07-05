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

public final class bqy
  implements bqu, bqv, bqw, btm
{
  static bqy a;
  int A = 0;
  private brk B;
  private brk C;
  public boolean b = false;
  public Context c = null;
  public String d = null;
  public final ConditionVariable e = new ConditionVariable(false);
  public final ConditionVariable f = new ConditionVariable(false);
  public btc g = new btc();
  brk h;
  brk i;
  brk j;
  brk k;
  brk l;
  brk m;
  public bsh n = null;
  public bsq o = null;
  public btn p = null;
  ExecutorService q = Executors.newCachedThreadPool(new btf());
  public ExecutorService r = Executors.newSingleThreadExecutor(new btf());
  public bqt s;
  public boolean t = false;
  public boolean u = false;
  public String v = "";
  public brb w = new brb();
  public btl x = new btl(r);
  public bsx y;
  btb z = null;
  
  public static bqy t()
  {
    if (a == null) {
      a = new bqy();
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
  
  public final void a(final bsb parambsb)
  {
    parambsb = new bss()
    {
      public final void a()
      {
        m.a(parambsb);
      }
    };
    if (!o.a(parambsb)) {
      r.execute(parambsb);
    }
  }
  
  public final void a(bto parambto)
  {
    if ((!t) || (!w.f)) {}
    while ((!a) || (c)) {
      return;
    }
    btd.d();
    btn localbtn = p;
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
    paramThrowable = new bre(paramThrowable, Thread.currentThread().getId());
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
    paramThrowable = new bsp(c);
    paramThrowable.a(h, new bsk.a(), w.i, this);
    paramThrowable.a(i, new bsk.a(), w.i, this);
    paramThrowable.a(j, new bsk.a(), w.i, this);
    paramThrowable.a(k, new bsk.a(), w.i, this);
    try
    {
      paramThrowable.a();
      return;
    }
    catch (InterruptedException paramThrowable)
    {
      new StringBuilder("InterruptedException in logCrashException: ").append(paramThrowable.getMessage());
      btd.b();
      btd.c();
      return;
    }
    catch (Throwable paramThrowable)
    {
      new StringBuilder("Unexpected throwable in logCrashException: ").append(paramThrowable.getMessage());
      btd.b();
      btd.c();
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
    return bro.ca;
  }
  
  public final void b(final Throwable paramThrowable)
  {
    if (paramThrowable == null) {}
    for (;;)
    {
      try
      {
        btd.g();
        return;
      }
      finally {}
      if (u)
      {
        paramThrowable = new bss()
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
                Object localObject1 = new bre(paramThrowable, b);
                ((bre)localObject1).a("current_session", l);
                ((bre)localObject1).a(m);
                c = "he";
                if (n.a())
                {
                  localObject1 = new JSONArray().put(((bre)localObject1).a());
                  new bsu(new bsg(bqy.a).a(bo, (JSONArray)localObject1), new bsm(new bsl(w.i, "/android_v2/handle_exceptions").a()), null).run();
                  localObject1 = bqy.this;
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
        paramThrowable = new bss()
        {
          public final void a()
          {
            if (g.c()) {}
            do
            {
              return;
              localObject1 = new bre(paramThrowable, b);
              ((bre)localObject1).a("current_session", l);
              c = "he";
            } while ((!i.a((brw)localObject1)) || (!n.a()));
            Object localObject2 = new bsp(c);
            ((bsp)localObject2).a(i, new bsk.a(), w.i, bqy.a);
            Object localObject1 = o;
            ExecutorService localExecutorService = q;
            localObject2 = a.iterator();
            while (((Iterator)localObject2).hasNext())
            {
              bss localbss = (bss)((Iterator)localObject2).next();
              if (!((bsq)localObject1).a(localbss)) {
                localExecutorService.execute(localbss);
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
    return bro.fa;
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
  
  public final btc i()
  {
    return g;
  }
  
  public final brk j()
  {
    return h;
  }
  
  public final brk k()
  {
    return i;
  }
  
  public final brk l()
  {
    return B;
  }
  
  public final brk m()
  {
    return j;
  }
  
  public final brk n()
  {
    return k;
  }
  
  public final brk o()
  {
    return l;
  }
  
  public final brk p()
  {
    return m;
  }
  
  public final brk q()
  {
    return C;
  }
  
  public final btb r()
  {
    return z;
  }
  
  public final void s()
  {
    if (u) {}
    for (l = new brk(c, brj.f).a(c);; l = new brk(c, brj.f))
    {
      C = new brk(c, brj.h);
      m = new brk(c, brj.g);
      h = new brk(c, brj.a);
      i = new brk(c, brj.b);
      B = new brk(c, brj.c);
      j = new brk(c, brj.d);
      k = new brk(c, brj.e);
      if (!u) {
        z = new btb(c, d);
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
 * Qualified Name:     bqy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */