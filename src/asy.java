import android.content.Context;
import android.view.View;
import android.widget.ImageView;

public final class asy
  extends atb
{
  private final art b;
  
  public asy(art paramart)
  {
    b = paramart;
  }
  
  public final String a()
  {
    return "Battery";
  }
  
  public final void a(int paramInt, Context paramContext)
  {
    ImageView localImageView = (ImageView)b.a.findViewById(2131361910);
    float f = awf.a(57.0F, paramContext);
    if (paramInt == 2)
    {
      localImageView.setTranslationY(f);
      return;
    }
    localImageView.setTranslationY(0.0F);
  }
  
  public final View d()
  {
    return b.a;
  }
  
  public final void e()
  {
    art localart = b;
    b.a(2130968586, a);
    a = null;
  }
}

/* Location:
 * Qualified Name:     asy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */