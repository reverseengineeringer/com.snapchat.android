package com.addlive.view;

class VideoView$2
  implements Runnable
{
  VideoView$2(VideoView paramVideoView) {}
  
  public void run()
  {
    VideoView.access$100(this$0).onStopRendering();
    this$0.requestRender();
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.VideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */