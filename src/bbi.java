import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import java.lang.ref.WeakReference;

public class bbi
  extends DynamicDrawableSpan
{
  private static final String TAG = "EmojiSpan";
  private final Context mContext;
  private Drawable mDrawable;
  private WeakReference<Drawable> mDrawableReference;
  private int mHeight;
  private final int mResourceId;
  private final int mSize;
  private int mTop;
  private int mWidth;
  
  public bbi(Context paramContext, int paramInt1, int paramInt2)
  {
    super(1);
    mContext = paramContext;
    mResourceId = paramInt1;
    mWidth = paramInt2;
    mHeight = paramInt2;
    mSize = paramInt2;
  }
  
  public void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    if ((mDrawableReference == null) || (mDrawableReference.get() == null)) {
      mDrawableReference = new WeakReference(getDrawable());
    }
    paramCharSequence = (Drawable)mDrawableReference.get();
    paramCanvas.save();
    if (mVerticalAlignment == 1) {}
    for (paramInt1 = (paramInt5 - paramInt3) / 2 + paramInt3 - paramCharSequence.getBounds().height() / 2 - mTop;; paramInt1 = paramInt5 - getBoundsbottom)
    {
      paramCanvas.translate(paramFloat, paramInt1);
      paramCharSequence.draw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }
  
  public Drawable getDrawable()
  {
    if (mDrawable == null) {}
    try
    {
      mDrawable = mContext.getResources().getDrawable(mResourceId);
      mHeight = mSize;
      mWidth = (mHeight * mDrawable.getIntrinsicWidth() / mDrawable.getIntrinsicHeight());
      mTop = ((mSize - mHeight) / 2);
      mDrawable.setBounds(0, mTop, mWidth, mTop + mHeight);
      return mDrawable;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        new StringBuilder("Failed to get drawable ").append(localException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     bbi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */