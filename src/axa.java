import android.text.TextUtils;
import android.widget.ImageView;

public final class axa
  implements aww
{
  public final void a(awm paramawm, awv paramawv)
  {
    
    if (mBitmap != null)
    {
      ImageView localImageView = mImageView;
      if (localImageView != null)
      {
        Object localObject = localImageView.getDrawable();
        if ((localObject instanceof axc))
        {
          localObject = (axc)localObject;
          if (TextUtils.equals(mRequestId, mLoaderTask.mRequest.mRequestId)) {
            localImageView.setImageBitmap(mBitmap);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     axa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */