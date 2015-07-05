import android.text.TextUtils;
import android.widget.ImageView;

public final class awc
  implements avy
{
  public final void a(avo paramavo, avx paramavx)
  {
    
    if (mBitmap != null)
    {
      ImageView localImageView = mImageView;
      if (localImageView != null)
      {
        Object localObject = localImageView.getDrawable();
        if ((localObject instanceof awe))
        {
          localObject = (awe)localObject;
          if (TextUtils.equals(mRequestId, mLoaderTask.mRequest.mRequestId)) {
            localImageView.setImageBitmap(mBitmap);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     awc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */