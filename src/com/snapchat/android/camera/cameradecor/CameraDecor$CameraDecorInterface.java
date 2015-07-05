package com.snapchat.android.camera.cameradecor;

import android.support.v4.app.FragmentActivity;
import com.snapchat.android.camera.model.CameraModel.CameraType;

public abstract interface CameraDecor$CameraDecorInterface
{
  public abstract void a(float paramFloat);
  
  public abstract void a(int paramInt1, int paramInt2);
  
  public abstract void a(int paramInt, boolean paramBoolean);
  
  public abstract void a(TakeSnapButtonAction paramTakeSnapButtonAction);
  
  public abstract void a(CameraModel.CameraType paramCameraType);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract FragmentActivity i();
  
  public abstract boolean k_();
  
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

/* Location:
 * Qualified Name:     com.snapchat.android.camera.cameradecor.CameraDecor.CameraDecorInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */