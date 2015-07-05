package com.snapchat.android.ui;

import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.task.Task.DoneCallback;
import com.snapchat.videotranscoder.task.Task.Status;

final class VideoFilterView$b
  implements Task.DoneCallback
{
  private VideoFilterView$b(VideoFilterView paramVideoFilterView) {}
  
  public final void done(Task.Status paramStatus)
  {
    if (paramStatus == Task.Status.FINISHED)
    {
      Timber.c("VideoFilterView", "Video Rendering finished successfully", new Object[0]);
      return;
    }
    Timber.f("VideoFilterView", "Video rendering is done with error status: " + paramStatus, new Object[0]);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */