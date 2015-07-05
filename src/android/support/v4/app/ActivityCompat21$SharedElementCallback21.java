package android.support.v4.app;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;

public abstract class ActivityCompat21$SharedElementCallback21
{
  public abstract Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF);
  
  public abstract View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable);
  
  public abstract void onMapSharedElements$2804e45f();
  
  public abstract void onRejectSharedElements$61fb9e66();
  
  public abstract void onSharedElementEnd$70d861b8();
  
  public abstract void onSharedElementStart$70d861b8();
}

/* Location:
 * Qualified Name:     android.support.v4.app.ActivityCompat21.SharedElementCallback21
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */