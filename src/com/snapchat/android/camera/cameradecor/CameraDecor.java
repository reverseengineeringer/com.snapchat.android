package com.snapchat.android.camera.cameradecor;

import android.support.v4.app.FragmentActivity;
import android.view.MotionEvent;
import com.snapchat.android.camera.model.CameraModel.CameraType;

public class CameraDecor
{
  public final CameraDecorInterface a;
  
  public CameraDecor(CameraDecorInterface paramCameraDecorInterface)
  {
    a = paramCameraDecorInterface;
  }
  
  public void a() {}
  
  public void a(int paramInt1, int paramInt2) {}
  
  public void a(boolean paramBoolean) {}
  
  public boolean a(MotionEvent paramMotionEvent)
  {
    return false;
  }
  
  public void b() {}
  
  public void b(boolean paramBoolean) {}
  
  public void c() {}
  
  public void d() {}
  
  public void e() {}
  
  public boolean f()
  {
    return false;
  }
  
  public static abstract interface CameraDecorInterface
  {
    public abstract void a(float paramFloat);
    
    public abstract void a(int paramInt1, int paramInt2);
    
    public abstract void a(int paramInt, boolean paramBoolean);
    
    public abstract void a(TakeSnapButtonAction paramTakeSnapButtonAction);
    
    public abstract void a(CameraModel.CameraType paramCameraType);
    
    public abstract void b(boolean paramBoolean);
    
    public abstract FragmentActivity i();
    
    public abstract boolean i_();
    
    public abstract boolean l();
    
    public abstract boolean n();
    
    public abstract boolean o();
    
    public abstract void p();
    
    public abstract void s();
    
    public static enum TakeSnapButtonAction
    {
      FINGER_DOWN,  FINGER_UP;
      
      private TakeSnapButtonAction() {}
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.cameradecor.CameraDecor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */