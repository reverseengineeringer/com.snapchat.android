package com.snapchat.android.util.chat;

import java.util.concurrent.RejectedExecutionHandler;
import java.util.concurrent.ThreadPoolExecutor;

final class SecureChatSession$1
  implements RejectedExecutionHandler
{
  public final void rejectedExecution(Runnable paramRunnable, ThreadPoolExecutor paramThreadPoolExecutor)
  {
    new StringBuilder("rejecting execution of runnable, shutdown=").append(paramThreadPoolExecutor.isShutdown());
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.util.chat.SecureChatSession.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */