import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;

public final class ajc
  extends ajb<Bitmap>
{
  private final awn b;
  
  public ajc()
  {
    this(axo.GEOFILTER_CACHE, new awn(SnapchatApplication.b()), alw.a());
  }
  
  private ajc(@chc axn paramaxn, @chc awn paramawn, @chc alw paramalw)
  {
    super(paramalw, paramaxn);
    b = ((awn)co.a(paramawn));
  }
  
  @cbr
  public final void b(@chc String paramString, @chc ajf.a parama)
  {
    
    if ((a.d(paramString)) && (a.a(paramString) != null))
    {
      parama.a();
      return;
    }
    a(paramString, parama);
  }
}

/* Location:
 * Qualified Name:     ajc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */