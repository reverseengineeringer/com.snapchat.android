package com.snapchat.android.camera.videocamera;

import android.media.MediaRecorder;
import android.media.MediaRecorder.OnInfoListener;
import bhp;

final class VideoCameraHandler$b
  implements MediaRecorder.OnInfoListener
{
  VideoCameraHandler.c a;
  
  public VideoCameraHandler$b(VideoCameraHandler paramVideoCameraHandler, VideoCameraHandler.c paramc)
  {
    a = paramc;
  }
  
  public final void onInfo(MediaRecorder paramMediaRecorder, int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return;
    }
    bhp.a(new Runnable()
    {
      public final void run()
      {
        a.r();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.videocamera.VideoCameraHandler.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */