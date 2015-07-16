package com.snapchat.android.camera;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import azy;
import com.snapchat.android.SnapchatApplication;
import com.snapchat.android.camera.cameradecor.CameraDecor;
import com.snapchat.android.camera.model.CameraModel;
import com.snapchat.android.camera.model.CameraModel.CameraType;
import javax.inject.Inject;
import wk;

public class BackgroundCameraFragment
  extends BaseCameraFragment
{
  @Inject
  public CameraModel a;
  
  public BackgroundCameraFragment()
  {
    SnapchatApplication.b().c().a(this);
  }
  
  public final int a()
  {
    return 2130968585;
  }
  
  protected final CameraDecor a(RelativeLayout paramRelativeLayout)
  {
    return new wk(getActivity(), paramRelativeLayout);
  }
  
  public final void a(int paramInt)
  {
    d).b.setBackgroundColor(paramInt);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    a.a(CameraModel.CameraType.FRONT_FACING);
    return mFragmentLayout;
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    b = null;
    d = null;
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.camera.BackgroundCameraFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */