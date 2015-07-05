package com.addlive.view;

import com.addlive.service.InvalidateCb;

class CircleVideoTextureView$InvalidateCallback
  implements InvalidateCb
{
  private CircleVideoTextureView$InvalidateCallback(CircleVideoTextureView paramCircleVideoTextureView) {}
  
  public void invalidate()
  {
    CircleVideoTextureView.access$300(this$0).requestRender();
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.CircleVideoTextureView.InvalidateCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */