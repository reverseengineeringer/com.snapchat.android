package com.snapchat.android.ui.listeners;

import android.support.v7.widget.RecyclerView.s;
import android.view.MotionEvent;
import r;

public abstract interface SwipeableRecyclerViewItemTouchListener$d<VH extends RecyclerView.s>
{
  public abstract int a(@r VH paramVH);
  
  public abstract void a(@r VH paramVH, MotionEvent paramMotionEvent);
  
  public abstract void a(@r VH paramVH, boolean paramBoolean);
  
  public abstract boolean a(@r VH paramVH, float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4);
  
  public abstract boolean b(@r VH paramVH);
  
  public abstract float c(@r VH paramVH);
  
  public abstract void d(@r VH paramVH);
}

/* Location:
 * Qualified Name:     com.snapchat.android.ui.listeners.SwipeableRecyclerViewItemTouchListener.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */