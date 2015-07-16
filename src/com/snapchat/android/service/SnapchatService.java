package com.snapchat.android.service;

import aek;
import amz;
import anb;
import anc;
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
import anh;
import ani;
import anj;
import ank;
import anl;
import anm;
import ann;
import anp;
import anq;
import anr;
import ans;
import ant;
import anu;
import anv;
import anw;
import anx;
import any;
import anz;
import aoa;
import aob;
import aoc;
import aod;
import apf;
import apg;
import aph;
import ban;
import chc;
import chd;
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
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import os;

public class SnapchatService
  extends Service
{
  private static Handler g;
  private Context a;
  private ThreadFactory b = new c((byte)0);
  private ExecutorService c;
  private ArrayList<Future<?>> d;
  private aph e;
  private final ban f;
  private long h;
  private final Runnable i = new Runnable()
  {
    public final void run()
    {
      new StringBuilder("mStopRunnable mFutureList.size()=").append(SnapchatService.d(SnapchatService.this).size()).append(" hasPendingIntents=").append(SnapchatService.c(SnapchatService.this).g());
      if ((SnapchatService.d(SnapchatService.this).isEmpty()) && (!SnapchatService.c(SnapchatService.this).g()))
      {
        SystemClock.elapsedRealtime();
        SnapchatService.e(SnapchatService.this);
        stopSelf();
      }
    }
  };
  
  public SnapchatService()
  {
    this(new ban());
  }
  
  protected SnapchatService(@chc ban paramban)
  {
    f = paramban;
  }
  
  private void a(@chd Intent paramIntent)
  {
    new StringBuilder("finalizeRequest ").append(paramIntent);
    Object localObject;
    if (aph.a(paramIntent))
    {
      localObject = Integer.valueOf(aph.b(paramIntent));
      new StringBuilder("finalizeRequest - requestId ").append(localObject);
      aph localaph = e;
      j = ((Integer)localObject).intValue();
      a.remove(Integer.valueOf(j));
      localObject = e;
      if (paramIntent != null) {
        if ((paramIntent == null) || (!paramIntent.getBooleanExtra("from_pool", false))) {
          break label185;
        }
      }
    }
    label185:
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
          new StringBuilder("Removed one future - mFutureList.size()=").append(d.size());
          d.remove(j);
          k = j - 1;
        }
      }
    }
    new StringBuilder("finalizeRequest mStopRunnable futureList.size()==").append(d.size()).append(" hasPendingIntents=").append(e.g());
    if ((d.isEmpty()) && (!e.g()))
    {
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
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate();
    a = getApplicationContext();
    h = SystemClock.elapsedRealtime();
    if (g == null) {
      g = new Handler(Looper.getMainLooper());
    }
    c = Executors.newCachedThreadPool(b);
    d = new ArrayList();
    e = aph.a();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c.shutdown();
  }
  
  public int onStartCommand(@chd Intent paramIntent, int paramInt1, int paramInt2)
  {
    new StringBuilder("onStartCommand ").append(paramIntent);
    if (paramIntent != null) {
      new StringBuilder("onStartCommand with op code ").append(paramIntent.getIntExtra("op_code", -1));
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
      new StringBuilder("Failed to create a service operation from ").append(paramIntent);
      a(paramIntent);
      return 2;
      localObject = new ang(paramIntent);
      continue;
      localObject = new anb(paramIntent);
      continue;
      localObject = new anc(paramIntent);
      continue;
      localObject = new ani(paramIntent);
      continue;
      localObject = new anm(paramIntent);
      continue;
      localObject = new aek(paramIntent);
      continue;
      localObject = new ank(paramIntent);
      continue;
      localObject = new anj(paramIntent);
      continue;
      localObject = new anz(paramIntent);
      continue;
      localObject = new ann(paramIntent);
      continue;
      localObject = new ane(paramIntent);
      continue;
      localObject = new anp(paramIntent);
      continue;
      localObject = new anx(paramIntent);
      continue;
      localObject = new anq(paramIntent);
      continue;
      localObject = new anw(paramIntent);
      continue;
      localObject = new aoa(paramIntent);
      continue;
      localObject = new any(paramIntent);
      continue;
      localObject = new aod(paramIntent);
      continue;
      localObject = new anv(paramIntent);
      continue;
      localObject = new aoc(paramIntent);
      continue;
      localObject = new anu(paramIntent);
      continue;
      localObject = new amz(paramIntent);
      continue;
      localObject = new anf(paramIntent);
      continue;
      localObject = new ant(paramIntent);
      continue;
      localObject = new anr(paramIntent);
      continue;
      localObject = new aob(paramIntent);
      continue;
      localObject = new ans(paramIntent);
      continue;
      localObject = new UpdateVerifiedDeviceOperation(paramIntent);
      continue;
      localObject = new anl(paramIntent);
    }
    d.add(c.submit(new b((anh)localObject)));
    d.size();
    return 2;
  }
  
  final class a
    implements Runnable
  {
    private final anh b;
    
    public a(anh paramanh)
    {
      b = paramanh;
    }
    
    public final void run()
    {
      b.b();
      Object localObject2 = SnapchatService.c(SnapchatService.this);
      anh localanh = b;
      synchronized (d)
      {
        localObject2 = (HashSet)d.get(aph.b(localanh));
        if (localObject2 != null)
        {
          localObject2 = ((HashSet)localObject2).iterator();
          if (((Iterator)localObject2).hasNext()) {
            ((apg)((Iterator)localObject2).next()).a(localanh);
          }
        }
      }
      SnapchatService.a(SnapchatService.this, b);
    }
  }
  
  final class b
    implements Runnable
  {
    private final anh b;
    
    public b(anh paramanh)
    {
      b = paramanh;
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
        final os localos = new os(b.toString(), localException);
        new StringBuilder("ProcessRunnable halted ").append(localos);
        if (ReleaseManager.f()) {
          SnapchatService.a().post(new Runnable()
          {
            public final void run()
            {
              throw localos;
            }
          });
        }
        SnapchatService.b(SnapchatService.this).a(localos);
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