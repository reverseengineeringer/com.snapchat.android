import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.widget.ImageView;
import java.util.concurrent.ExecutorService;
import org.apache.commons.lang3.ArrayUtils;

public final class awn
{
  private static final String TAG = "BitmapLoader";
  private final axc.a mAsyncDrawableFactory;
  private final axd mBitmapDecoder;
  private final awq mBitmapRecycling;
  private final ExecutorService mExecutor;
  private final Resources mResources;
  private final axb.a mTaskFactory;
  
  public awn(@chc Context paramContext)
  {
    this(paramContext.getResources(), new awq(), new axb.a(), new axc.a(), new axd(paramContext.getResources().getDisplayMetrics(), paramContext.getContentResolver(), paramContext.getResources(), awo.a()), avf.HIGH_PRIORITY_EXECUTOR);
  }
  
  private awn(Resources paramResources, awq paramawq, axb.a parama, axc.a parama1, axd paramaxd, ExecutorService paramExecutorService)
  {
    mResources = paramResources;
    mBitmapRecycling = paramawq;
    mTaskFactory = parama;
    mAsyncDrawableFactory = parama1;
    mBitmapDecoder = paramaxd;
    mExecutor = paramExecutorService;
  }
  
  @cbr
  public final awm a(@chc awv paramawv)
  {
    bhp.b();
    return mBitmapDecoder.a(mBitmapSource, mWidth, mHeight, mRequireExactDimensions);
  }
  
  public final void a(@chd ImageView paramImageView)
  {
    if (paramImageView == null) {
      return;
    }
    paramImageView.getId();
    mBitmapRecycling.a(paramImageView, true);
  }
  
  @awj
  @cdn
  public final void a(@chc awv paramawv, @chc aww... paramVarArgs)
  {
    bhp.a();
    ImageView localImageView = mImageView;
    String str = mRequestId;
    int i;
    if (localImageView == null) {
      i = 0;
    }
    for (;;)
    {
      Object localObject;
      if (i != 0)
      {
        localObject = mRequestId;
        localImageView.getId();
        paramVarArgs = (aww[])ArrayUtils.add(paramVarArgs, 0, new axa());
        paramVarArgs = axb.a.a(paramawv, mBitmapDecoder, paramVarArgs);
        localImageView.setImageDrawable(new axc(mResources, mPlaceholderBitmap, paramVarArgs));
        paramVarArgs.executeOnExecutor(mExecutor, new String[] { mRequestId });
      }
      return;
      if (localImageView != null)
      {
        localObject = localImageView.getDrawable();
        if ((localObject instanceof axc)) {
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
          str = mRequest.mRequestId;
          ((axb)localObject).cancel(true);
        }
      }
      i = 1;
    }
  }
  
  @awj
  @cdn
  public final void b(@chc awv paramawv, @chc aww... paramVarArgs)
  {
    bhp.a();
    axb.a.a(paramawv, mBitmapDecoder, paramVarArgs).executeOnExecutor(mExecutor, new String[] { mRequestId });
  }
}

/* Location:
 * Qualified Name:     awn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */