package com.snapchat.android.ui;

import apj;
import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.task.Task.ProgressUpdateCallback;

final class VideoFilterView$a
  implements Task.ProgressUpdateCallback
{
  private boolean b = true;
  
  private VideoFilterView$a(VideoFilterView paramVideoFilterView) {}
  
  public final void onProgressUpdated(int paramInt)
  {
    if (b)
    {
      apj localapj = VideoFilterView.f(a);
      a = VideoFilterView.a(a);
      localapj.a();
      b = false;
    }
    Timber.c("VideoFilterView", "Rendering is " + Integer.toString(paramInt) + "% complete", new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */