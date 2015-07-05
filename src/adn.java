import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.CornerPathEffect;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Join;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.snapchat.android.ui.CashSwiperView.a;

public final class adn
{
  final apd a;
  final avs b;
  public final View c;
  final FrameLayout d;
  View e;
  int f;
  ImageView g;
  AnimatorSet h;
  boolean i;
  private final avq j;
  private final Context k;
  private final View l;
  private Animator.AnimatorListener m;
  
  public adn(Context paramContext)
  {
    this(paramContext, apd.a(), new avs(), avq.a());
  }
  
  private adn(Context paramContext, apd paramapd, avs paramavs, avq paramavq)
  {
    k = paramContext;
    a = paramapd;
    b = paramavs;
    j = paramavq;
    a.a(k);
    c = a.a(2130968661);
    d = ((FrameLayout)c.findViewById(2131362293));
    g = ((ImageView)c.findViewById(2131362296));
    l = c.findViewById(2131362295);
  }
  
  private static Paint b(int paramInt1, int paramInt2)
  {
    Paint localPaint = new Paint();
    localPaint.setColor(paramInt1);
    localPaint.setAntiAlias(true);
    localPaint.setStrokeWidth(paramInt2);
    localPaint.setStyle(Paint.Style.STROKE);
    localPaint.setStrokeJoin(Paint.Join.ROUND);
    localPaint.setStrokeCap(Paint.Cap.ROUND);
    localPaint.setPathEffect(new CornerPathEffect(3.0F));
    return localPaint;
  }
  
  public final void a()
  {
    e.animate().y(0.0F).setDuration(200L);
    if (i) {
      return;
    }
    h.start();
    i = true;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    int n = (int)Math.abs(avh.a(k) * 0.1F);
    int i1 = (int)Math.abs(n * 0.26F);
    int i2 = (int)Math.abs(n * 0.1F);
    int i3 = i2 + (int)Math.abs(i2 * 0.375F) * 2;
    float f1 = i3 / 2.0F;
    Object localObject2 = j.a(n + i3, i1 + i3, Bitmap.Config.ARGB_8888);
    Object localObject1 = localObject2;
    if (localObject2 == null) {
      localObject1 = Bitmap.createBitmap(n + i3, i1 + i3, Bitmap.Config.ARGB_8888);
    }
    localObject2 = new Canvas((Bitmap)localObject1);
    Paint localPaint1 = b(paramInt1, i2);
    Paint localPaint2 = b(paramInt2, i3);
    Path localPath = new Path();
    localPath.moveTo(f1, i1);
    localPath.rLineTo(n / 2.0F, -(i1 - f1));
    localPath.rLineTo(n / 2.0F, i1 - f1);
    ((Canvas)localObject2).drawPath(localPath, localPaint2);
    ((Canvas)localObject2).drawPath(localPath, localPaint1);
    g.setImageBitmap((Bitmap)localObject1);
    f = ((int)(avh.b(k) * 0.08D));
    e = c.findViewById(2131362294);
    e.setY(f);
    localObject1 = new AnimatorSet();
    f1 = avh.a(-5.0F, k);
    localObject2 = ObjectAnimator.ofFloat(e, View.Y, new float[] { 0.0F, f1 });
    ((ObjectAnimator)localObject2).setRepeatCount(1);
    ((ObjectAnimator)localObject2).setRepeatMode(2);
    ((AnimatorSet)localObject1).play((Animator)localObject2);
    ((AnimatorSet)localObject1).setDuration(200L);
    ((AnimatorSet)localObject1).setStartDelay(1400L);
    h = ((AnimatorSet)localObject1);
    m = new CashSwiperView.a()
    {
      public final void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if (i)
        {
          h.start();
          return;
        }
        e.setY(f);
        e.invalidate();
      }
    };
    h.addListener(m);
  }
  
  public final void a(View.OnClickListener paramOnClickListener)
  {
    l.setOnClickListener(paramOnClickListener);
  }
  
  public final void b()
  {
    i = false;
    h.cancel();
    new Handler().postDelayed(new Runnable()
    {
      public final void run()
      {
        if (!i)
        {
          e.setY(f);
          e.invalidate();
        }
      }
    }, h.getDuration());
  }
}

/* Location:
 * Qualified Name:     adn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */