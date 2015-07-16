package com.snapchat.android.rendering;

import aka;
import android.view.ViewGroup;
import chc;

public abstract interface SnapMediaRenderer
{
  public abstract void a();
  
  public abstract void a(@chc aka paramaka, boolean paramBoolean, @chc a parama);
  
  public abstract void a(@chc ViewGroup paramViewGroup);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract void b();
  
  public abstract void c();
  
  public abstract void d();
  
  public static enum ErrorCode
  {
    EXTERNAL_STORAGE_REQUIRED,  MEDIA_UNAVAILABLE_LOCALLY,  PLAYBACK_ERROR;
    
    private ErrorCode() {}
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(int paramInt1, int paramInt2, int paramInt3);
    
    public abstract void a(SnapMediaRenderer.ErrorCode paramErrorCode);
    
    public abstract void b();
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.rendering.SnapMediaRenderer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */