package android.support.v4.app;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Parcelable;
import android.view.View;
import android.widget.ImageView;

public abstract class SharedElementCallback
{
  Matrix mTempMatrix;
  
  private Parcelable onCaptureSharedElementSnapshot(View paramView, Matrix paramMatrix, RectF paramRectF)
  {
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
  
  private static View onCreateSnapshotView(Context paramContext, Parcelable paramParcelable)
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
  
  private static void onMapSharedElements$2804e45f() {}
  
  private static void onRejectSharedElements$61fb9e66() {}
  
  private static void onSharedElementEnd$70d861b8() {}
  
  private static void onSharedElementStart$70d861b8() {}
}

/* Location:
 * Qualified Name:     android.support.v4.app.SharedElementCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */