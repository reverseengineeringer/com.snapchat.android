package com.snapchat.android.util.chat;

import com.snapchat.android.Timber;
import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

final class SecureChatSession$1
  implements RejectedExecutionHandler
{
  public final void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    Timber.g("SecureChatSession", "rejecting execution of runnable, shutdown=" + paramThreadPoolExecutor.isShutdown(), new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */