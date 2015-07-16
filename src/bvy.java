import android.graphics.Paint;
import android.graphics.PointF;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import java.util.Random;

public final class bvy
  extends Animation
{
  public PointF a;
  public float b;
  public final Paint c;
  public PointF d;
  public PointF e;
  private float f;
  private float g;
  
  public final void a(float paramFloat)
  {
    c.setAlpha((int)(255.0F * paramFloat));
  }
  
  public final void a(float paramFloat1, float paramFloat2)
  {
    f = paramFloat1;
    g = paramFloat2;
    super.start();
  }
  
  public final void a(int paramInt)
  {
    b = (-new Random().nextInt(paramInt) + paramInt);
  }
  
  protected final void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    float f1 = f;
    a(f1 + (g - f1) * paramFloat);
  }
}

/* Location:
 * Qualified Name:     bvy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */