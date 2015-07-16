package com.snapchat.android;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.Window;
import android.widget.FrameLayout;
import com.snapchat.android.camera.BackgroundCameraFragment;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public abstract class SnapchatCameraBackgroundActivity
  extends SnapchatActivity
{
  private BackgroundCameraFragment a;
  
  public final void a()
  {
    super.setContentView(2130968696);
    FrameLayout localFrameLayout = (FrameLayout)findViewById(2131362412);
    a = new BackgroundCameraFragment();
    mFragments.beginTransaction().add(localFrameLayout.getId(), a).commit();
    getWindow().setBackgroundDrawable(null);
  }
  
  public final void a(int paramInt)
  {
    a.a(paramInt);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.SnapchatCameraBackgroundActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */