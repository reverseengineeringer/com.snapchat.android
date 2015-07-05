package com.brightcove.player.view;

import android.content.Context;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;

public abstract interface RenderView
{
  public abstract Context getContext();
  
  public abstract int getHeight();
  
  public abstract SurfaceHolder getHolder();
  
  public abstract ViewGroup.LayoutParams getLayoutParams();
  
  public abstract int getMeasuredHeight();
  
  public abstract ViewParent getParent();
  
  public abstract Surface getSurface();
  
  public abstract int getVideoHeight();
  
  public abstract int getVideoWidth();
  
  public abstract int getWidth();
  
  public abstract void invalidate();
  
  public abstract void setLayoutParams(ViewGroup.LayoutParams paramLayoutParams);
  
  public abstract void setVideoSize(int paramInt1, int paramInt2);
  
  public abstract void setVisibility(int paramInt);
}

/* Location:
 * Qualified Name:     com.brightcove.player.view.RenderView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */