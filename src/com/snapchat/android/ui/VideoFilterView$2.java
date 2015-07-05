package com.snapchat.android.ui;

import com.snapchat.videotranscoder.task.TaskExecutor;

final class VideoFilterView$2
  implements Runnable
{
  VideoFilterView$2(VideoFilterView paramVideoFilterView) {}
  
  public final void run()
  {
    VideoFilterView.b(a).execute(VideoFilterView.a(a), new VideoFilterView.b(a, (byte)0), new VideoFilterView.a(a, (byte)0));
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */