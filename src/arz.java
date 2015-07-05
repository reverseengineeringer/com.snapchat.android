import android.content.Context;
import android.view.View;
import android.widget.ImageView;

public final class arz
  extends asc
{
  private final aqu b;
  
  public arz(aqu paramaqu)
  {
    b = paramaqu;
  }
  
  public final String a()
  {
    return "Battery";
  }
  
  public final void a(int paramInt, Context paramContext)
  {
    ImageView localImageView = (ImageView)b.a.findViewById(2131361910);
    float f = avh.a(57.0F, paramContext);
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
    aqu localaqu = b;
    b.a(2130968585, a);
    a = null;
  }
}

/* Location:
 * Qualified Name:     arz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */