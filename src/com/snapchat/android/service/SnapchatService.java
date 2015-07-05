package com.snapchat.android.service;

import adk;
import amc;
import ame;
import amf;
import amh;
import ami;
import amj;
import amk;
import aml;
import amm;
import amn;
import amo;
import amp;
import amq;
import ams;
import amt;
import amu;
import amv;
import amw;
import amx;
import amy;
import amz;
import ana;
import anb;
import anc;
import and;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import ane;
import anf;
import ang;
import aoj;
import aok;
import aol;
import azo;
import cgb;
import cgc;
import com.snapchat.android.Timber;
import com.snapchat.android.operation.identity.UpdateVerifiedDeviceOperation;
import com.snapchat.android.util.debug.ReleaseManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import ob;

public class SnapchatService
  extends Service
{
  private static Handler g;
  private Context a;
  private ThreadFactory b = new c((byte)0);
  private ExecutorService c;
  private ArrayList<Future<?>> d;
  private aol e;
  private final azo f;
  private long h;
  private final Runnable i = new Runnable()
  {
    public final void run()
    {
      Timber.c("SnapchatService", "mStopRunnable mFutureList.size()=" + SnapchatService.d(SnapchatService.this).size() + " hasPendingIntents=" + SnapchatService.c(SnapchatService.this).g(), new Object[0]);
      if ((SnapchatService.d(SnapchatService.this).isEmpty()) && (!SnapchatService.c(SnapchatService.this).g()))
      {
        Timber.c("SnapchatService", "Stop service which lived for %d ms", new Object[] { Long.valueOf(SystemClock.elapsedRealtime() - SnapchatService.e(SnapchatService.this)) });
        stopSelf();
      }
    }
  };
  
  public SnapchatService()
  {
    this(new azo());
  }
  
  protected SnapchatService(@cgb azo paramazo)
  {
    f = paramazo;
  }
  
  private void a(@cgc Intent paramIntent)
  {
    Timber.c("SnapchatService", "finalizeRequest " + paramIntent, new Object[0]);
    Object localObject;
    if (aol.a(paramIntent))
    {
      localObject = Integer.valueOf(aol.b(paramIntent));
      Timber.c("SnapchatService", "finalizeRequest - requestId " + localObject, new Object[0]);
      aol localaol = e;
      j = ((Integer)localObject).intValue();
      a.remove(Integer.valueOf(j));
      localObject = e;
      if (paramIntent != null) {
        if ((paramIntent == null) || (!paramIntent.getBooleanExtra("from_pool", false))) {
          break label218;
        }
      }
    }
    label218:
    for (int j = 1;; j = 0)
    {
      if (j != 0) {
        b.a(paramIntent);
      }
      int k;
      for (j = 0; j < d.size(); j = k + 1)
      {
        k = j;
        if (((Future)d.get(j)).isDone())
        {
          Timber.c("SnapchatService", "Removed one future - mFutureList.size()=" + d.size(), new Object[0]);
          d.remove(j);
          k = j - 1;
        }
      }
    }
    Timber.c("SnapchatService", "finalizeRequest mStopRunnable futureList.size()==" + d.size() + " hasPendingIntents=" + e.g(), new Object[0]);
    if ((d.isEmpty()) && (!e.g()))
    {
      Timber.c("SnapchatService", "Will stop service in 5 seconds", new Object[0]);
      g.removeCallbacks(i);
      g.postDelayed(i, 5000L);
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    a = getApplicationContext();
    h = SystemClock.elapsedRealtime();
    if (g == null) {
      g = new Handler(Looper.getMainLooper());
    }
    c = Executors.newCachedThreadPool(b);
    d = new ArrayList();
    e = aol.a();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    Timber.c("SnapchatService", "onDestroy()", new Object[0]);
    c.shutdown();
  }
  
  public int onStartCommand(@cgc Intent paramIntent, int paramInt1, int paramInt2)
  {
    Timber.c("SnapchatService", "onStartCommand " + paramIntent, new Object[0]);
    if (paramIntent != null) {
      Timber.c("SnapchatService", "onStartCommand with op code " + paramIntent.getIntExtra("op_code", -1), new Object[0]);
    }
    g.removeCallbacks(i);
    if (paramIntent != null) {}
    Object localObject;
    switch (paramIntent.getIntExtra("op_code", -1))
    {
    case 1003: 
    case 1006: 
    case 1008: 
    case 1011: 
    case 1019: 
    default: 
      localObject = null;
    }
    while (localObject == null)
    {
      Timber.f("SnapchatService", "Failed to create a service operation from " + paramIntent, new Object[0]);
      a(paramIntent);
      return 2;
      localObject = new amj(paramIntent);
      continue;
      localObject = new ame(paramIntent);
      continue;
      localObject = new amf(paramIntent);
      continue;
      localObject = new aml(paramIntent);
      continue;
      localObject = new amp(paramIntent);
      continue;
      localObject = new adk(paramIntent);
      continue;
      localObject = new amn(paramIntent);
      continue;
      localObject = new amm(paramIntent);
      continue;
      localObject = new anc(paramIntent);
      continue;
      localObject = new amq(paramIntent);
      continue;
      localObject = new amh(paramIntent);
      continue;
      localObject = new ams(paramIntent);
      continue;
      localObject = new ana(paramIntent);
      continue;
      localObject = new amt(paramIntent);
      continue;
      localObject = new amz(paramIntent);
      continue;
      localObject = new and(paramIntent);
      continue;
      localObject = new anb(paramIntent);
      continue;
      localObject = new ang(paramIntent);
      continue;
      localObject = new amy(paramIntent);
      continue;
      localObject = new anf(paramIntent);
      continue;
      localObject = new amx(paramIntent);
      continue;
      localObject = new amc(paramIntent);
      continue;
      localObject = new ami(paramIntent);
      continue;
      localObject = new amw(paramIntent);
      continue;
      localObject = new amu(paramIntent);
      continue;
      localObject = new ane(paramIntent);
      continue;
      localObject = new amv(paramIntent);
      continue;
      localObject = new UpdateVerifiedDeviceOperation(paramIntent);
      continue;
      localObject = new amo(paramIntent);
    }
    d.add(c.submit(new b((amk)localObject)));
    Timber.c("SnapchatService", "The new operation %s has been submitted. mFutureList.size()=%d", new Object[] { localObject, Integer.valueOf(d.size()) });
    return 2;
  }
  
  final class a
    implements Runnable
  {
    private final amk b;
    
    public a(amk paramamk)
    {
      b = paramamk;
    }
    
    public final void run()
    {
      b.f();
      Object localObject2 = SnapchatService.c(SnapchatService.this);
      amk localamk = b;
      synchronized (d)
      {
        localObject2 = (HashSet)d.get(aol.b(localamk));
        if (localObject2 != null)
        {
          localObject2 = ((HashSet)localObject2).iterator();
          if (((Iterator)localObject2).hasNext()) {
            ((aok)((Iterator)localObject2).next()).a(localamk);
          }
        }
      }
      SnapchatService.a(SnapchatService.this, b);
    }
  }
  
  final class b
    implements Runnable
  {
    private final amk b;
    
    public b(amk paramamk)
    {
      b = paramamk;
    }
    
    public final void run()
    {
      try
      {
        b.a(SnapchatService.a(SnapchatService.this));
        SnapchatService.a().post(new SnapchatService.a(SnapchatService.this, b));
        return;
      }
      catch (Exception localException)
      {
        final ob localob = new ob(b.toString(), localException);
        Timber.f("SnapchatService", "ProcessRunnable halted " + localob, new Object[0]);
        if (ReleaseManager.f()) {
          SnapchatService.a().post(new Runnable()
          {
            public final void run()
            {
              throw localob;
            }
          });
        }
        SnapchatService.b(SnapchatService.this).a(localob);
      }
    }
  }
  
  static final class c
    implements ThreadFactory
  {
    public final Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = new Thread(paramRunnable);
      paramRunnable.setName("Worker:" + System.currentTimeMillis() % 100000L);
      paramRunnable.setPriority(1);
      return paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */