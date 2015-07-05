package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable.Callback;
import q;

final class MaterialProgressDrawable$Ring
{
  int mAlpha;
  Path mArrow;
  int mArrowHeight;
  final Paint mArrowPaint = new Paint();
  float mArrowScale;
  int mArrowWidth;
  int mBackgroundColor;
  private final Drawable.Callback mCallback;
  final Paint mCirclePaint = new Paint();
  int mColorIndex;
  int[] mColors;
  float mEndTrim = 0.0F;
  final Paint mPaint = new Paint();
  double mRingCenterRadius;
  float mRotation = 0.0F;
  boolean mShowArrow;
  float mStartTrim = 0.0F;
  float mStartingEndTrim;
  float mStartingRotation;
  float mStartingStartTrim;
  float mStrokeInset = 2.5F;
  float mStrokeWidth = 5.0F;
  final RectF mTempBounds = new RectF();
  
  public MaterialProgressDrawable$Ring(Drawable.Callback paramCallback)
  {
    mCallback = paramCallback;
    mPaint.setStrokeCap(Paint.Cap.SQUARE);
    mPaint.setAntiAlias(true);
    mPaint.setStyle(Paint.Style.STROKE);
    mArrowPaint.setStyle(Paint.Style.FILL);
    mArrowPaint.setAntiAlias(true);
  }
  
  private void draw(Canvas paramCanvas, Rect paramRect)
  {
    RectF localRectF = mTempBounds;
    localRectF.set(paramRect);
    localRectF.inset(mStrokeInset, mStrokeInset);
    float f1 = (mStartTrim + mRotation) * 360.0F;
    float f2 = (mEndTrim + mRotation) * 360.0F - f1;
    mPaint.setColor(mColors[mColorIndex]);
    paramCanvas.drawArc(localRectF, f1, f2, false, mPaint);
    if (mShowArrow)
    {
      if (mArrow != null) {
        break label358;
      }
      mArrow = new Path();
      mArrow.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f3 = (int)mStrokeInset / 2;
      float f4 = mArrowScale;
      float f5 = (float)(mRingCenterRadius * Math.cos(0.0D) + paramRect.exactCenterX());
      float f6 = (float)(mRingCenterRadius * Math.sin(0.0D) + paramRect.exactCenterY());
      mArrow.moveTo(0.0F, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale / 2.0F, mArrowHeight * mArrowScale);
      mArrow.offset(f5 - f3 * f4, f6);
      mArrow.close();
      mArrowPaint.setColor(mColors[mColorIndex]);
      paramCanvas.rotate(f1 + f2 - 5.0F, paramRect.exactCenterX(), paramRect.exactCenterY());
      paramCanvas.drawPath(mArrow, mArrowPaint);
      if (mAlpha < 255)
      {
        mCirclePaint.setColor(mBackgroundColor);
        mCirclePaint.setAlpha(255 - mAlpha);
        paramCanvas.drawCircle(paramRect.exactCenterX(), paramRect.exactCenterY(), paramRect.width() / 2, mCirclePaint);
      }
      return;
      label358:
      mArrow.reset();
    }
  }
  
  private void drawTriangle(Canvas paramCanvas, float paramFloat1, float paramFloat2, Rect paramRect)
  {
    if (mShowArrow)
    {
      if (mArrow != null) {
        break label218;
      }
      mArrow = new Path();
      mArrow.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f1 = (int)mStrokeInset / 2;
      float f2 = mArrowScale;
      float f3 = (float)(mRingCenterRadius * Math.cos(0.0D) + paramRect.exactCenterX());
      float f4 = (float)(mRingCenterRadius * Math.sin(0.0D) + paramRect.exactCenterY());
      mArrow.moveTo(0.0F, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale / 2.0F, mArrowHeight * mArrowScale);
      mArrow.offset(f3 - f1 * f2, f4);
      mArrow.close();
      mArrowPaint.setColor(mColors[mColorIndex]);
      paramCanvas.rotate(paramFloat1 + paramFloat2 - 5.0F, paramRect.exactCenterX(), paramRect.exactCenterY());
      paramCanvas.drawPath(mArrow, mArrowPaint);
      return;
      label218:
      mArrow.reset();
    }
  }
  
  private int getAlpha()
  {
    return mAlpha;
  }
  
  private double getCenterRadius()
  {
    return mRingCenterRadius;
  }
  
  private float getEndTrim()
  {
    return mEndTrim;
  }
  
  private float getInsets()
  {
    return mStrokeInset;
  }
  
  private float getRotation()
  {
    return mRotation;
  }
  
  private float getStartTrim()
  {
    return mStartTrim;
  }
  
  private float getStartingEndTrim()
  {
    return mStartingEndTrim;
  }
  
  private float getStartingRotation()
  {
    return mStartingRotation;
  }
  
  private float getStartingStartTrim()
  {
    return mStartingStartTrim;
  }
  
  private float getStrokeWidth()
  {
    return mStrokeWidth;
  }
  
  private void goToNextColor()
  {
    mColorIndex = ((mColorIndex + 1) % mColors.length);
  }
  
  private void setAlpha(int paramInt)
  {
    mAlpha = paramInt;
  }
  
  private void setArrowDimensions(float paramFloat1, float paramFloat2)
  {
    mArrowWidth = ((int)paramFloat1);
    mArrowHeight = ((int)paramFloat2);
  }
  
  private void setArrowScale(float paramFloat)
  {
    if (paramFloat != mArrowScale)
    {
      mArrowScale = paramFloat;
      invalidateSelf();
    }
  }
  
  private void setBackgroundColor(int paramInt)
  {
    mBackgroundColor = paramInt;
  }
  
  private void setCenterRadius(double paramDouble)
  {
    mRingCenterRadius = paramDouble;
  }
  
  private void setColorFilter(ColorFilter paramColorFilter)
  {
    mPaint.setColorFilter(paramColorFilter);
    invalidateSelf();
  }
  
  private void setColorIndex$13462e()
  {
    mColorIndex = 0;
  }
  
  private void setInsets(int paramInt1, int paramInt2)
  {
    float f = Math.min(paramInt1, paramInt2);
    if ((mRingCenterRadius <= 0.0D) || (f < 0.0F)) {}
    for (f = (float)Math.ceil(mStrokeWidth / 2.0F);; f = (float)(f / 2.0F - mRingCenterRadius))
    {
      mStrokeInset = f;
      return;
    }
  }
  
  private void setStrokeWidth(float paramFloat)
  {
    mStrokeWidth = paramFloat;
    mPaint.setStrokeWidth(paramFloat);
    invalidateSelf();
  }
  
  final void invalidateSelf()
  {
    mCallback.invalidateDrawable(null);
  }
  
  public final void resetOriginals()
  {
    mStartingStartTrim = 0.0F;
    mStartingEndTrim = 0.0F;
    mStartingRotation = 0.0F;
    setStartTrim(0.0F);
    setEndTrim(0.0F);
    setRotation(0.0F);
  }
  
  public final void setColors(@q int[] paramArrayOfInt)
  {
    mColors = paramArrayOfInt;
    mColorIndex = 0;
  }
  
  public final void setEndTrim(float paramFloat)
  {
    mEndTrim = paramFloat;
    invalidateSelf();
  }
  
  public final void setRotation(float paramFloat)
  {
    mRotation = paramFloat;
    invalidateSelf();
  }
  
  public final void setShowArrow(boolean paramBoolean)
  {
    if (mShowArrow != paramBoolean)
    {
      mShowArrow = paramBoolean;
      invalidateSelf();
    }
  }
  
  public final void setStartTrim(float paramFloat)
  {
    mStartTrim = paramFloat;
    invalidateSelf();
  }
  
  public final void storeOriginals()
  {
    mStartingStartTrim = mStartTrim;
    mStartingEndTrim = mEndTrim;
    mStartingRotation = mRotation;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable.Ring
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */