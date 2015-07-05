package com.addlive.view;

class CircleVideoView$2
  implements Runnable
{
  CircleVideoView$2(CircleVideoView paramCircleVideoView) {}
  
  public void run()
  {
    CircleVideoView.access$100(this$0).onStopRendering();
    this$0.requestRender();
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.CircleVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */