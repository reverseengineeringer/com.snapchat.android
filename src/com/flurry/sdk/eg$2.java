package com.flurry.sdk;

import java.util.HashMap;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.ThreadPoolExecutor.DiscardPolicy;

class eg$2
  extends ThreadPoolExecutor.DiscardPolicy
{
  eg$2(eg parameg) {}
  
  public void rejectedExecution(Runnable arg1, final ThreadPoolExecutor paramThreadPoolExecutor)
  {
    super.rejectedExecution(???, paramThreadPoolExecutor);
    paramThreadPoolExecutor = eg.a(a, ???);
    if (paramThreadPoolExecutor == null) {
      return;
    }
    synchronized (eg.a(a))
    {
      eg.a(a).remove(paramThreadPoolExecutor);
      eg.a(a, paramThreadPoolExecutor);
      new fc()
      {
        public void a()
        {
          paramThreadPoolExecutor.l();
        }
      }.run();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.eg.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */