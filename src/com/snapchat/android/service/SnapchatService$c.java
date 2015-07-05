package com.snapchat.android.service;

import java.util.concurrent.ThreadFactory;

final class SnapchatService$c
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

/* Location:
 * Qualified Name:     com.snapchat.android.service.SnapchatService.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */