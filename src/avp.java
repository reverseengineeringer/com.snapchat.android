import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.ImageView;
import com.snapchat.android.Timber;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.ArrayUtils;

public final class avp
{
  private static final String TAG = "BitmapLoader";
  private final awe.a mAsyncDrawableFactory;
  private final awf mBitmapDecoder;
  private final avs mBitmapRecycling;
  private final ExecutorService mExecutor;
  private final Resources mResources;
  private final awd.a mTaskFactory;
  
  public avp(@cgb Context paramContext)
  {
    this(paramContext.getResources(), new avs(), new awd.a(), new awe.a(), new awf(paramContext.getResources().getDisplayMetrics(), paramContext.getContentResolver(), paramContext.getResources(), avq.a()), auh.HIGH_PRIORITY_EXECUTOR);
  }
  
  private avp(Resources paramResources, avs paramavs, awd.a parama, awe.a parama1, awf paramawf, ExecutorService paramExecutorService)
  {
    mResources = paramResources;
    mBitmapRecycling = paramavs;
    mTaskFactory = parama;
    mAsyncDrawableFactory = parama1;
    mBitmapDecoder = paramawf;
    mExecutor = paramExecutorService;
  }
  
  @caq
  public final avo a(@cgb avx paramavx)
  {
    bgp.b();
    return mBitmapDecoder.a(mBitmapSource, mWidth, mHeight, mRequireExactDimensions);
  }
  
  public final void a(@cgc ImageView paramImageView)
  {
    if (paramImageView == null) {
      return;
    }
    Timber.a("BitmapLoader", "Recycling ImageView %d.", new Object[] { Integer.valueOf(paramImageView.getId()) });
    mBitmapRecycling.a(paramImageView, true);
  }
  
  @avl
  @ccm
  public final void a(@cgb avx paramavx, @cgb avy... paramVarArgs)
  {
    bgp.a();
    ImageView localImageView = mImageView;
    String str = mRequestId;
    int i;
    if (localImageView == null) {
      i = 0;
    }
    for (;;)
    {
      if (i != 0)
      {
        Timber.a("BitmapLoader", "Loading bitmap %s asynchronously into ImageView %d", new Object[] { mRequestId, Integer.valueOf(localImageView.getId()) });
        paramVarArgs = (avy[])ArrayUtils.add(paramVarArgs, 0, new awc());
        paramVarArgs = awd.a.a(paramavx, mBitmapDecoder, paramVarArgs);
        localImageView.setImageDrawable(new awe(mResources, mPlaceholderBitmap, paramVarArgs));
        paramVarArgs.executeOnExecutor(mExecutor, new String[] { mRequestId });
      }
      return;
      Object localObject;
      if (localImageView != null)
      {
        localObject = localImageView.getDrawable();
        if ((localObject instanceof awe)) {
          localObject = mLoaderTask;
        }
      }
      for (;;)
      {
        if (localObject != null)
        {
          if (TextUtils.equals(mRequest.mRequestId, str))
          {
            i = 0;
            break;
            localObject = null;
            continue;
          }
          Timber.a("BitmapLoader", "Cancelling loader task for bitmap %s", new Object[] { mRequest.mRequestId });
          ((awd)localObject).cancel(true);
        }
      }
      i = 1;
    }
  }
  
  @avl
  @ccm
  public final void b(@cgb avx paramavx, @cgb avy... paramVarArgs)
  {
    bgp.a();
    awd.a.a(paramavx, mBitmapDecoder, paramVarArgs).executeOnExecutor(mExecutor, new String[] { mRequestId });
  }
}

/* Location:
 * Qualified Name:     avp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */