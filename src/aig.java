import android.graphics.Bitmap;
import com.snapchat.android.SnapchatApplication;

public final class aig
  extends aif<Bitmap>
{
  private final avp b;
  
  public aig()
  {
    this(awq.GEOFILTER_CACHE, new avp(SnapchatApplication.b()), alb.a());
  }
  
  private aig(@cgb awp paramawp, @cgb avp paramavp, @cgb alb paramalb)
  {
    super(paramalb, paramawp);
    b = ((avp)ck.a(paramavp));
  }
  
  @caq
  public final void b(@cgb String paramString, @cgb aij.a parama)
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
 * Qualified Name:     aig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */