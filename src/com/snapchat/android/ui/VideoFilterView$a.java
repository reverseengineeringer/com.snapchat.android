package com.snapchat.android.ui;

import aqf;
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
      aqf localaqf = VideoFilterView.f(a);
      a = VideoFilterView.a(a);
      localaqf.a();
      b = false;
    }
    new StringBuilder("Rendering is ").append(Integer.toString(paramInt)).append("% complete");
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */