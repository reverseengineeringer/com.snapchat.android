package com.snapchat.android.api;

import aje;
import aje.a;
import java.util.Set;

final class LoadAllStorySnapsTask$a
  implements aje.a
{
  private LoadAllStorySnapsTask$a(LoadAllStorySnapsTask paramLoadAllStorySnapsTask) {}
  
  public final void a()
  {
    this$0.a(LoadAllStorySnapsTask.Status.FAILED_TO_LOAD);
  }
  
  public final void a(aje paramaje)
  {
    synchronized (this$0.mMutex)
    {
      paramaje.a(this);
      this$0.mStorySnapsLeftToLoad.remove(paramaje);
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