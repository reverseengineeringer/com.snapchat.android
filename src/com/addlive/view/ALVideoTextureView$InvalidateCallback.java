package com.addlive.view;

import com.addlive.service.InvalidateCb;

class ALVideoTextureView$InvalidateCallback
  implements InvalidateCb
{
  private ALVideoTextureView$InvalidateCallback(ALVideoTextureView paramALVideoTextureView) {}
  
  public void invalidate()
  {
    ALVideoTextureView.access$300(this$0).requestRender();
  }
}

/* Location:
 * Qualified Name:     com.addlive.view.ALVideoTextureView.InvalidateCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */