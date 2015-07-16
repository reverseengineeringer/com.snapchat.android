package com.snapchat.android.api;

import aka;
import aka.a;
import java.util.Set;

final class LoadAllStorySnapsTask$a
  implements aka.a
{
  private LoadAllStorySnapsTask$a(LoadAllStorySnapsTask paramLoadAllStorySnapsTask) {}
  
  public final void a()
  {
    this$0.a(LoadAllStorySnapsTask.Status.FAILED_TO_LOAD);
  }
  
  public final void a(aka paramaka)
  {
    synchronized (this$0.mMutex)
    {
      paramaka.a(this);
      this$0.mStorySnapsLeftToLoad.remove(paramaka);
      this$0.d();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.api.LoadAllStorySnapsTask.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */