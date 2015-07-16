import android.graphics.Bitmap;
import android.support.v7.widget.RecyclerView;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.ImageView;

public final class aqj
{
  final ImageView a;
  private final RecyclerView b;
  
  public aqj(ImageView paramImageView, RecyclerView paramRecyclerView)
  {
    a = paramImageView;
    b = paramRecyclerView;
  }
  
  public final void a(int paramInt1, int paramInt2)
  {
    b.setDrawingCacheEnabled(true);
    Object localObject = b.getDrawingCache();
    localObject = avp.a((Bitmap)localObject, paramInt1, ((Bitmap)localObject).getWidth(), ((Bitmap)localObject).getHeight() - paramInt1);
    b.setDrawingCacheEnabled(false);
    a.setImageBitmap((Bitmap)localObject);
    a.setVisibility(0);
    localObject = new TranslateAnimation(0.0F, 0.0F, paramInt1, paramInt1 + paramInt2);
    ((TranslateAnimation)localObject).setInterpolator(new AccelerateDecelerateInterpolator());
    ((TranslateAnimation)localObject).setDuration(300L);
    ((TranslateAnimation)localObject).setAnimationListener(new Animation.AnimationListener()
    {
      public final void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        a.setVisibility(8);
      }
      
      public final void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public final void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    a.startAnimation((Animation)localObject);
  }
}

/* Location:
 * Qualified Name:     aqj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */