package com.snapchat.android.camera.videocamera;

import com.snapchat.android.Timber;

final class VideoCameraHandler$3
  implements Runnable
{
  VideoCameraHandler$3(VideoCameraHandler paramVideoCameraHandler, VideoCameraHandler.c paramc, VideoCameraHandler.VideoFailureType paramVideoFailureType) {}
  
  public final void run()
  {
    try
    {
      a.a(b);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Timber.f("VideoCameraHandler", "Callback attempted illegally: " + localIllegalStateException.getMessage(), new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.videocamera.VideoCameraHandler.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */