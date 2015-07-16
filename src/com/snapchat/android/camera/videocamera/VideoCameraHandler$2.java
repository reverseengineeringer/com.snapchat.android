package com.snapchat.android.camera.videocamera;

import android.net.Uri;

final class VideoCameraHandler$2
  implements Runnable
{
  VideoCameraHandler$2(VideoCameraHandler paramVideoCameraHandler, VideoCameraHandler.c paramc, Uri paramUri) {}
  
  public final void run()
  {
    try
    {
      a.a(b);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      new StringBuilder("Callback attempted illegally: ").append(localIllegalStateException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.videocamera.VideoCameraHandler.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */