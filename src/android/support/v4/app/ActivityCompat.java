package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.content.ContextCompat;
import android.view.View;
import android.widget.ImageView;
import r;

public final class ActivityCompat
  extends ContextCompat
{
  static ActivityCompat21.SharedElementCallback21 createCallback(SharedElementCallback paramSharedElementCallback)
  {
    SharedElementCallback21Impl localSharedElementCallback21Impl = null;
    if (paramSharedElementCallback != null) {
      localSharedElementCallback21Impl = new SharedElementCallback21Impl(paramSharedElementCallback);
    }
    return localSharedElementCallback21Impl;
  }
  
  private static void finishAffinity(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      ActivityCompatJB.finishAffinity(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  private static void finishAfterTransition(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21)
    {
      ActivityCompat21.finishAfterTransition(paramActivity);
      return;
    }
    paramActivity.finish();
  }
  
  private static boolean invalidateOptionsMenu(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ActivityCompatHoneycomb.invalidateOptionsMenu(paramActivity);
      return true;
    }
    return false;
  }
  
  private static void postponeEnterTransition(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.postponeEnterTransition(paramActivity);
    }
  }
  
  private static void setEnterSharedElementCallback(Activity paramActivity, SharedElementCallback paramSharedElementCallback)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.setEnterSharedElementCallback(paramActivity, createCallback(paramSharedElementCallback));
    }
  }
  
  private static void setExitSharedElementCallback(Activity paramActivity, SharedElementCallback paramSharedElementCallback)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.setExitSharedElementCallback(paramActivity, createCallback(paramSharedElementCallback));
    }
  }
  
  private static void startActivity(Activity paramActivity, Intent paramIntent, @r Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      ActivityCompatJB.startActivity(paramActivity, paramIntent, paramBundle);
      return;
    }
    paramActivity.startActivity(paramIntent);
  }
  
  private static void startActivityForResult(Activity paramActivity, Intent paramIntent, int paramInt, @r Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16)
    {
      ActivityCompatJB.startActivityForResult(paramActivity, paramIntent, paramInt, paramBundle);
      return;
    }
    paramActivity.startActivityForResult(paramIntent, paramInt);
  }
  
  private static void startPostponedEnterTransition(Activity paramActivity)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      ActivityCompat21.startPostponedEnterTransition(paramActivity);
    }
  }
  
  static final class SharedElementCallback21Impl
    extends ActivityCompat21.SharedElementCallback21
  {
    private SharedElementCallback mCallback;
    
    public SharedElementCallback21Impl(SharedElementCallback paramSharedElementCallback)
    {
      mCallback = paramSharedElementCallback;
    }
    
    public final Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
    {
      SharedElementCallback localSharedElementCallback = mCallback;
      int i = Math.round(paramRectF.width());
      int j = Math.round(paramRectF.height());
      Object localObject2 = null;
      Object localObject1 = localObject2;
      if (i > 0)
      {
        localObject1 = localObject2;
        if (j > 0)
        {
          if (mTempMatrix == null) {
            mTempMatrix = new Matrix();
          }
          mTempMatrix.set(paramMatrix);
          mTempMatrix.postTranslate(-left, -top);
          localObject1 = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
          paramMatrix = new Canvas((Bitmap)localObject1);
          paramMatrix.concat(mTempMatrix);
          paramView.draw(paramMatrix);
        }
      }
      return (Parcelable)localObject1;
    }
    
    public final View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
    {
      ImageView localImageView = null;
      if ((paramParcelable instanceof Bitmap))
      {
        paramParcelable = (Bitmap)paramParcelable;
        localImageView = new ImageView(paramContext);
        localImageView.setImageBitmap(paramParcelable);
      }
      return localImageView;
    }
    
    public final void onMapSharedElements$2804e45f() {}
    
    public final void onRejectSharedElements$61fb9e66() {}
    
    public final void onSharedElementEnd$70d861b8() {}
    
    public final void onSharedElementStart$70d861b8() {}
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActivityCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */