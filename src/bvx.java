import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.RadialGradient;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;

public final class bvx
  extends Drawable
  implements Animatable
{
  private static final Interpolator c = new LinearInterpolator();
  private static final Interpolator d = new bvx.a((byte)0);
  private static final Interpolator e = new bvx.d((byte)0);
  private static final Interpolator f = new AccelerateDecelerateInterpolator();
  public final bvx.c a;
  public int b;
  private final int[] g = { -3591113, -13149199, -536002, -13327536 };
  private final ArrayList<Animation> h = new ArrayList();
  private final Drawable.Callback i = new Drawable.Callback()
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
  private float j;
  private Resources k;
  private View l;
  private Animation m;
  private float n;
  private double o;
  private double p;
  private Animation q;
  private ShapeDrawable r;
  
  public bvx(final Context paramContext, View paramView)
  {
    l = paramView;
    k = paramContext.getResources();
    a = new bvx.c(i);
    a.a(g);
    paramContext = a;
    float f1 = k.getDisplayMetrics().density;
    o = (f1 * 40.0D);
    p = (f1 * 40.0D);
    float f2 = 2.5F * f1;
    h = f2;
    b.setStrokeWidth(f2);
    paramContext.d();
    r = (8.75D * f1);
    k = 0;
    s = ((int)(10.0F * f1));
    t = ((int)(f1 * 5.0F));
    f1 = Math.min((int)o, (int)p);
    if ((r <= 0.0D) || (f1 < 0.0F)) {}
    for (f1 = (float)Math.ceil(h / 2.0F);; f1 = (float)(f1 / 2.0F - r))
    {
      i = f1;
      double d1 = o;
      int i1 = bvz.a(1.75F);
      int i2 = bvz.a(0.0F);
      int i3 = bvz.a(3.5F);
      r = new ShapeDrawable(new bvx.b(i3, (int)d1));
      if (Build.VERSION.SDK_INT >= 11) {
        l.setLayerType(1, r.getPaint());
      }
      r.getPaint().setShadowLayer(i3, i2, i1, 503316480);
      paramContext = a;
      paramView = new Animation()
      {
        public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
        {
          float f1 = (float)(Math.floor(paramContextn / 0.8F) + 1.0D);
          float f2 = paramContextl;
          float f3 = paramContextm;
          float f4 = paramContextl;
          paramContext.a(f2 + (f3 - f4) * paramAnonymousFloat);
          f2 = paramContextn;
          f3 = paramContextn;
          paramContext.c((f1 - f3) * paramAnonymousFloat + f2);
          paramContext.d(1.0F - paramAnonymousFloat);
        }
      };
      paramView.setInterpolator(f);
      paramView.setDuration(666L);
      paramView.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          paramContext.a();
          paramContext.b();
          paramContext.a(false);
          bvx.b(bvx.this).startAnimation(bvx.a(bvx.this));
        }
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      Animation local4 = new Animation()
      {
        public final void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
        {
          float f3 = (float)Math.toRadians(paramContexth / (6.283185307179586D * paramContextr));
          float f4 = paramContextm;
          float f1 = paramContextl;
          float f2 = paramContextn;
          float f5 = bvx.a().getInterpolation(paramAnonymousFloat);
          paramContext.b((0.8F - f3) * f5 + f4);
          f3 = bvx.b().getInterpolation(paramAnonymousFloat);
          paramContext.a(f3 * 0.8F + f1);
          paramContext.c(0.25F * paramAnonymousFloat + f2);
          f1 = bvx.c(bvx.this) / 5.0F;
          a(144.0F * paramAnonymousFloat + 720.0F * f1);
        }
      };
      local4.setRepeatCount(-1);
      local4.setRepeatMode(1);
      local4.setInterpolator(c);
      local4.setDuration(1333L);
      local4.setAnimationListener(new Animation.AnimationListener()
      {
        public final void onAnimationEnd(Animation paramAnonymousAnimation) {}
        
        public final void onAnimationRepeat(Animation paramAnonymousAnimation)
        {
          paramContext.b();
          paramContext.a();
          paramContext.a(paramContextf);
          bvx.a(bvx.this, (bvx.c(bvx.this) + 1.0F) % 5.0F);
        }
        
        public final void onAnimationStart(Animation paramAnonymousAnimation)
        {
          bvx.a(bvx.this, 0.0F);
        }
      });
      q = paramView;
      m = local4;
      return;
    }
  }
  
  final void a(float paramFloat)
  {
    j = paramFloat;
    invalidateSelf();
  }
  
  public final void draw(Canvas paramCanvas)
  {
    if (r != null)
    {
      r.getPaint().setColor(b);
      r.draw(paramCanvas);
    }
    Rect localRect = getBounds();
    int i1 = paramCanvas.save();
    paramCanvas.rotate(j, localRect.exactCenterX(), localRect.exactCenterY());
    bvx.c localc = a;
    d.setColor(v);
    d.setAlpha(u);
    paramCanvas.drawCircle(localRect.exactCenterX(), localRect.exactCenterY(), localRect.width() / 2, d);
    RectF localRectF = a;
    localRectF.set(localRect);
    localRectF.inset(i, i);
    float f1 = 360.0F * (e + g);
    float f2 = (f + g) * 360.0F - f1;
    b.setColor(j[k]);
    b.setAlpha(u);
    paramCanvas.drawArc(localRectF, f1, f2, false, b);
    if (o)
    {
      if (p != null) {
        break label488;
      }
      p = new Path();
      p.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f3 = (int)i / 2;
      float f4 = q;
      float f5 = (float)(r * Math.cos(0.0D) + localRect.exactCenterX());
      float f6 = (float)(r * Math.sin(0.0D) + localRect.exactCenterY());
      p.moveTo(0.0F, 0.0F);
      p.lineTo(s * q, 0.0F);
      p.lineTo(s * q / 2.0F, t * q);
      p.offset(f5 - f3 * f4, f6);
      p.close();
      c.setColor(j[k]);
      c.setAlpha(u);
      paramCanvas.rotate(f1 + f2 - 5.0F, localRect.exactCenterX(), localRect.exactCenterY());
      paramCanvas.drawPath(p, c);
      paramCanvas.restoreToCount(i1);
      return;
      label488:
      p.reset();
    }
  }
  
  public final int getAlpha()
  {
    return a.u;
  }
  
  public final int getIntrinsicHeight()
  {
    return (int)p;
  }
  
  public final int getIntrinsicWidth()
  {
    return (int)o;
  }
  
  public final int getOpacity()
  {
    return -3;
  }
  
  public final boolean isRunning()
  {
    ArrayList localArrayList = h;
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Animation localAnimation = (Animation)localArrayList.get(i1);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public final void setAlpha(int paramInt)
  {
    a.u = paramInt;
  }
  
  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    bvx.c localc = a;
    b.setColorFilter(paramColorFilter);
    localc.d();
  }
  
  public final void start()
  {
    m.reset();
    a.b();
    if (a.f != a.e)
    {
      l.startAnimation(q);
      return;
    }
    a.k = 0;
    a.c();
    l.startAnimation(m);
  }
  
  public final void stop()
  {
    l.clearAnimation();
    a(0.0F);
    a.a(false);
    a.k = 0;
    a.c();
  }
  
  static final class a
    extends AccelerateDecelerateInterpolator
  {
    public final float getInterpolation(float paramFloat)
    {
      return super.getInterpolation(Math.max(0.0F, (paramFloat - 0.5F) * 2.0F));
    }
  }
  
  final class b
    extends OvalShape
  {
    private RadialGradient b;
    private int c;
    private Paint d = new Paint();
    private int e;
    
    public b(int paramInt1, int paramInt2)
    {
      c = paramInt1;
      e = paramInt2;
      float f1 = e / 2;
      float f2 = e / 2;
      float f3 = c;
      this$1 = Shader.TileMode.CLAMP;
      b = new RadialGradient(f1, f2, f3, new int[] { 1023410176, 0 }, null, bvx.this);
      d.setShader(b);
    }
    
    public final void draw(Canvas paramCanvas, Paint paramPaint)
    {
      int i = getBounds().width();
      int j = getBounds().height();
      paramCanvas.drawCircle(i / 2, j / 2, e / 2 + c, d);
      paramCanvas.drawCircle(i / 2, j / 2, e / 2, paramPaint);
    }
  }
  
  public static final class c
  {
    final RectF a = new RectF();
    final Paint b = new Paint();
    final Paint c = new Paint();
    final Paint d = new Paint();
    float e = 0.0F;
    float f = 0.0F;
    float g = 0.0F;
    float h = 5.0F;
    float i = 2.5F;
    int[] j;
    public int k;
    float l;
    float m;
    float n;
    boolean o;
    Path p;
    float q;
    double r;
    int s;
    int t;
    int u;
    public int v;
    private final Drawable.Callback w;
    
    public c(Drawable.Callback paramCallback)
    {
      w = paramCallback;
      b.setStrokeCap(Paint.Cap.SQUARE);
      b.setAntiAlias(true);
      b.setStyle(Paint.Style.STROKE);
      c.setStyle(Paint.Style.FILL);
      c.setAntiAlias(true);
      d.setAntiAlias(true);
    }
    
    public final void a()
    {
      k = ((k + 1) % j.length);
    }
    
    public final void a(float paramFloat)
    {
      e = paramFloat;
      d();
    }
    
    public final void a(boolean paramBoolean)
    {
      if (o != paramBoolean)
      {
        o = paramBoolean;
        d();
      }
    }
    
    public final void a(int[] paramArrayOfInt)
    {
      j = paramArrayOfInt;
      k = 0;
    }
    
    public final void b()
    {
      l = e;
      m = f;
      n = g;
    }
    
    public final void b(float paramFloat)
    {
      f = paramFloat;
      d();
    }
    
    public final void c()
    {
      l = 0.0F;
      m = 0.0F;
      n = 0.0F;
      a(0.0F);
      b(0.0F);
      c(0.0F);
    }
    
    public final void c(float paramFloat)
    {
      g = paramFloat;
      d();
    }
    
    final void d()
    {
      w.invalidateDrawable(null);
    }
    
    public final void d(float paramFloat)
    {
      if (paramFloat != q)
      {
        q = paramFloat;
        d();
      }
    }
  }
  
  static final class d
    extends AccelerateDecelerateInterpolator
  {
    public final float getInterpolation(float paramFloat)
    {
      return super.getInterpolation(Math.min(1.0F, 2.0F * paramFloat));
    }
  }
}

/* Location:
 * Qualified Name:     bvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */