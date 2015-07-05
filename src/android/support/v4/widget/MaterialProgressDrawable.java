package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import l;
import q;

final class MaterialProgressDrawable
  extends Drawable
  implements Animatable
{
  private static final int ANIMATION_DURATION = 1333;
  private static final int ARROW_HEIGHT = 5;
  private static final int ARROW_HEIGHT_LARGE = 6;
  private static final float ARROW_OFFSET_ANGLE = 5.0F;
  private static final int ARROW_WIDTH = 10;
  private static final int ARROW_WIDTH_LARGE = 12;
  private static final float CENTER_RADIUS = 8.75F;
  private static final float CENTER_RADIUS_LARGE = 12.5F;
  private static final int CIRCLE_DIAMETER = 40;
  private static final int CIRCLE_DIAMETER_LARGE = 56;
  static final int DEFAULT = 1;
  private static final Interpolator EASE_INTERPOLATOR = new AccelerateDecelerateInterpolator();
  private static final Interpolator END_CURVE_INTERPOLATOR;
  static final int LARGE = 0;
  private static final Interpolator LINEAR_INTERPOLATOR = new LinearInterpolator();
  private static final float MAX_PROGRESS_ARC = 0.8F;
  private static final float NUM_POINTS = 5.0F;
  private static final Interpolator START_CURVE_INTERPOLATOR;
  private static final float STROKE_WIDTH = 2.5F;
  private static final float STROKE_WIDTH_LARGE = 3.0F;
  private final int[] COLORS = { -16777216 };
  private Animation mAnimation;
  private final ArrayList<Animation> mAnimators = new ArrayList();
  private final Drawable.Callback mCallback = new Drawable.Callback()
  {
    public final void invalidateDrawable(Drawable paramAnonymousDrawable)
    {
      invalidateSelf();
    }
    
    public final void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong)
    {
      scheduleSelf(paramAnonymousRunnable, paramAnonymousLong);
    }
    
    public final void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable)
    {
      unscheduleSelf(paramAnonymousRunnable);
    }
  };
  boolean mFinishing;
  private double mHeight;
  private View mParent;
  private Resources mResources;
  final Ring mRing;
  private float mRotation;
  private float mRotationCount;
  private double mWidth;
  
  static
  {
    END_CURVE_INTERPOLATOR = new EndCurveInterpolator((byte)0);
    START_CURVE_INTERPOLATOR = new StartCurveInterpolator((byte)0);
  }
  
  public MaterialProgressDrawable(final Context paramContext, View paramView)
  {
    mParent = paramView;
    mResources = paramContext.getResources();
    mRing = new Ring(mCallback);
    mRing.setColors(COLORS);
    updateSizes(1);
    paramContext = mRing;
    paramView = new Animation()
    {
      public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        if (mFinishing)
        {
          MaterialProgressDrawable.access$200$7dc75d4f(paramAnonymousFloat, paramContext);
          return;
        }
        float f3 = (float)Math.toRadians(paramContextmStrokeWidth / (6.283185307179586D * paramContextmRingCenterRadius));
        float f4 = paramContextmStartingEndTrim;
        float f1 = paramContextmStartingStartTrim;
        float f2 = paramContextmStartingRotation;
        float f5 = MaterialProgressDrawable.START_CURVE_INTERPOLATOR.getInterpolation(paramAnonymousFloat);
        paramContext.setEndTrim((0.8F - f3) * f5 + f4);
        f3 = MaterialProgressDrawable.END_CURVE_INTERPOLATOR.getInterpolation(paramAnonymousFloat);
        paramContext.setStartTrim(f3 * 0.8F + f1);
        paramContext.setRotation(0.25F * paramAnonymousFloat + f2);
        f1 = mRotationCount / 5.0F;
        setRotation(144.0F * paramAnonymousFloat + 720.0F * f1);
      }
    };
    paramView.setRepeatCount(-1);
    paramView.setRepeatMode(1);
    paramView.setInterpolator(LINEAR_INTERPOLATOR);
    paramView.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
        paramContext.storeOriginals();
        MaterialProgressDrawable.Ring localRing = paramContext;
        mColorIndex = ((mColorIndex + 1) % mColors.length);
        paramContext.setStartTrim(paramContextmEndTrim);
        if (mFinishing)
        {
          mFinishing = false;
          paramAnonymousAnimation.setDuration(1333L);
          paramContext.setShowArrow(false);
          return;
        }
        MaterialProgressDrawable.access$502(MaterialProgressDrawable.this, (mRotationCount + 1.0F) % 5.0F);
      }
      
      public final void onAnimationStart(Animation paramAnonymousAnimation)
      {
        MaterialProgressDrawable.access$502(MaterialProgressDrawable.this, 0.0F);
      }
    });
    mAnimation = paramView;
  }
  
  private static void applyFinishTranslation(float paramFloat, Ring paramRing)
  {
    float f1 = (float)(Math.floor(mStartingRotation / 0.8F) + 1.0D);
    paramRing.setStartTrim(mStartingStartTrim + (mStartingEndTrim - mStartingStartTrim) * paramFloat);
    float f2 = mStartingRotation;
    paramRing.setRotation((f1 - mStartingRotation) * paramFloat + f2);
  }
  
  private float getRotation()
  {
    return mRotation;
  }
  
  private void setArrowScale(float paramFloat)
  {
    Ring localRing = mRing;
    if (paramFloat != mArrowScale)
    {
      mArrowScale = paramFloat;
      localRing.invalidateSelf();
    }
  }
  
  private void setColorSchemeColors(int... paramVarArgs)
  {
    mRing.setColors(paramVarArgs);
    mRing.mColorIndex = 0;
  }
  
  private void setProgressRotation(float paramFloat)
  {
    mRing.setRotation(paramFloat);
  }
  
  private void setSizeParameters(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    Ring localRing = mRing;
    float f1 = mResources.getDisplayMetrics().density;
    mWidth = (f1 * paramDouble1);
    mHeight = (f1 * paramDouble2);
    float f2 = (float)paramDouble4 * f1;
    mStrokeWidth = f2;
    mPaint.setStrokeWidth(f2);
    localRing.invalidateSelf();
    mRingCenterRadius = (f1 * paramDouble3);
    mColorIndex = 0;
    mArrowWidth = ((int)(paramFloat1 * f1));
    mArrowHeight = ((int)(f1 * paramFloat2));
    paramFloat1 = Math.min((int)mWidth, (int)mHeight);
    if ((mRingCenterRadius <= 0.0D) || (paramFloat1 < 0.0F)) {}
    for (paramFloat1 = (float)Math.ceil(mStrokeWidth / 2.0F);; paramFloat1 = (float)(paramFloat1 / 2.0F - mRingCenterRadius))
    {
      mStrokeInset = paramFloat1;
      return;
    }
  }
  
  private void setupAnimators()
  {
    Ring localRing = mRing;
    Animation local1 = new Animation()
    {
      public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        if (mFinishing)
        {
          MaterialProgressDrawable.access$200$7dc75d4f(paramAnonymousFloat, paramContext);
          return;
        }
        float f3 = (float)Math.toRadians(paramContextmStrokeWidth / (6.283185307179586D * paramContextmRingCenterRadius));
        float f4 = paramContextmStartingEndTrim;
        float f1 = paramContextmStartingStartTrim;
        float f2 = paramContextmStartingRotation;
        float f5 = MaterialProgressDrawable.START_CURVE_INTERPOLATOR.getInterpolation(paramAnonymousFloat);
        paramContext.setEndTrim((0.8F - f3) * f5 + f4);
        f3 = MaterialProgressDrawable.END_CURVE_INTERPOLATOR.getInterpolation(paramAnonymousFloat);
        paramContext.setStartTrim(f3 * 0.8F + f1);
        paramContext.setRotation(0.25F * paramAnonymousFloat + f2);
        f1 = mRotationCount / 5.0F;
        setRotation(144.0F * paramAnonymousFloat + 720.0F * f1);
      }
    };
    local1.setRepeatCount(-1);
    local1.setRepeatMode(1);
    local1.setInterpolator(LINEAR_INTERPOLATOR);
    local1.setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
        paramContext.storeOriginals();
        MaterialProgressDrawable.Ring localRing = paramContext;
        mColorIndex = ((mColorIndex + 1) % mColors.length);
        paramContext.setStartTrim(paramContextmEndTrim);
        if (mFinishing)
        {
          mFinishing = false;
          paramAnonymousAnimation.setDuration(1333L);
          paramContext.setShowArrow(false);
          return;
        }
        MaterialProgressDrawable.access$502(MaterialProgressDrawable.this, (mRotationCount + 1.0F) % 5.0F);
      }
      
      public final void onAnimationStart(Animation paramAnonymousAnimation)
      {
        MaterialProgressDrawable.access$502(MaterialProgressDrawable.this, 0.0F);
      }
    });
    mAnimation = local1;
  }
  
  public final void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i = paramCanvas.save();
    paramCanvas.rotate(mRotation, localRect.exactCenterX(), localRect.exactCenterY());
    Ring localRing = mRing;
    RectF localRectF = mTempBounds;
    localRectF.set(localRect);
    localRectF.inset(mStrokeInset, mStrokeInset);
    float f1 = 360.0F * (mStartTrim + mRotation);
    float f2 = (mEndTrim + mRotation) * 360.0F - f1;
    mPaint.setColor(mColors[mColorIndex]);
    paramCanvas.drawArc(localRectF, f1, f2, false, mPaint);
    if (mShowArrow)
    {
      if (mArrow != null) {
        break label448;
      }
      mArrow = new Path();
      mArrow.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f3 = (int)mStrokeInset / 2;
      float f4 = mArrowScale;
      float f5 = (float)(mRingCenterRadius * Math.cos(0.0D) + localRect.exactCenterX());
      float f6 = (float)(mRingCenterRadius * Math.sin(0.0D) + localRect.exactCenterY());
      mArrow.moveTo(0.0F, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale, 0.0F);
      mArrow.lineTo(mArrowWidth * mArrowScale / 2.0F, mArrowHeight * mArrowScale);
      mArrow.offset(f5 - f3 * f4, f6);
      mArrow.close();
      mArrowPaint.setColor(mColors[mColorIndex]);
      paramCanvas.rotate(f1 + f2 - 5.0F, localRect.exactCenterX(), localRect.exactCenterY());
      paramCanvas.drawPath(mArrow, mArrowPaint);
      if (mAlpha < 255)
      {
        mCirclePaint.setColor(mBackgroundColor);
        mCirclePaint.setAlpha(255 - mAlpha);
        paramCanvas.drawCircle(localRect.exactCenterX(), localRect.exactCenterY(), localRect.width() / 2, mCirclePaint);
      }
      paramCanvas.restoreToCount(i);
      return;
      label448:
      mArrow.reset();
    }
  }
  
  public final int getAlpha()
  {
    return mRing.mAlpha;
  }
  
  public final int getIntrinsicHeight()
  {
    return (int)mHeight;
  }
  
  public final int getIntrinsicWidth()
  {
    return (int)mWidth;
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean isRunning()
  {
    ArrayList localArrayList = mAnimators;
    int j = localArrayList.size();
    int i = 0;
    while (i < j)
    {
      Animation localAnimation = (Animation)localArrayList.get(i);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i += 1;
    }
    return false;
  }
  
  public final void setAlpha(int paramInt)
  {
    mRing.mAlpha = paramInt;
  }
  
  public final void setBackgroundColor(int paramInt)
  {
    mRing.mBackgroundColor = paramInt;
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    Ring localRing = mRing;
    mPaint.setColorFilter(paramColorFilter);
    localRing.invalidateSelf();
  }
  
  final void setRotation(float paramFloat)
  {
    mRotation = paramFloat;
    invalidateSelf();
  }
  
  public final void setStartEndTrim$2548a35(float paramFloat)
  {
    mRing.setStartTrim(0.0F);
    mRing.setEndTrim(paramFloat);
  }
  
  public final void showArrow(boolean paramBoolean)
  {
    mRing.setShowArrow(paramBoolean);
  }
  
  public final void start()
  {
    mAnimation.reset();
    mRing.storeOriginals();
    if (mRing.mEndTrim != mRing.mStartTrim)
    {
      mFinishing = true;
      mAnimation.setDuration(666L);
      mParent.startAnimation(mAnimation);
      return;
    }
    mRing.mColorIndex = 0;
    mRing.resetOriginals();
    mAnimation.setDuration(1333L);
    mParent.startAnimation(mAnimation);
  }
  
  public final void stop()
  {
    mParent.clearAnimation();
    setRotation(0.0F);
    mRing.setShowArrow(false);
    mRing.mColorIndex = 0;
    mRing.resetOriginals();
  }
  
  public final void updateSizes(@ProgressDrawableSize int paramInt)
  {
    if (paramInt == 0)
    {
      setSizeParameters(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    setSizeParameters(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
  
  static final class EndCurveInterpolator
    extends AccelerateDecelerateInterpolator
  {
    public final float getInterpolation(float paramFloat)
    {
      return super.getInterpolation(Math.max(0.0F, (paramFloat - 0.5F) * 2.0F));
    }
  }
  
  @Retention(RetentionPolicy.CLASS)
  @l
  public static @interface ProgressDrawableSize {}
  
  static final class Ring
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
    
    public Ring(Drawable.Callback paramCallback)
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
  
  static final class StartCurveInterpolator
    extends AccelerateDecelerateInterpolator
  {
    public final float getInterpolation(float paramFloat)
    {
      return super.getInterpolation(Math.min(1.0F, 2.0F * paramFloat));
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.MaterialProgressDrawable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */