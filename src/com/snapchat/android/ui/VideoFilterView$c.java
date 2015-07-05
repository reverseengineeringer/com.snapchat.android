package com.snapchat.android.ui;

import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import com.snapchat.android.Timber;
import com.snapchat.videotranscoder.cts.InputSurface;
import com.snapchat.videotranscoder.task.SetupException;

final class VideoFilterView$c
  implements SurfaceHolder.Callback
{
  private VideoFilterView$c(VideoFilterView paramVideoFilterView) {}
  
  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3) {}
  
  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    VideoFilterView.a(a, new InputSurface(paramSurfaceHolder.getSurface(), false));
    try
    {
      VideoFilterView.c(a);
      return;
    }
    catch (SetupException paramSurfaceHolder)
    {
      do
      {
        Timber.f("VideoFilterView", "Failed to open video: " + paramSurfaceHolder.toString(), new Object[0]);
        a.a();
        VideoFilterView.d(a);
      } while (VideoFilterView.e(a) == null);
      VideoFilterView.e(a).h();
    }
  }
  
  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Timber.c("VideoFilterView", "Surface destroyed!", new Object[0]);
    VideoFilterView.d(a);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.VideoFilterView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */