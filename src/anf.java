import android.content.Intent;
import android.text.TextUtils;
import com.snapchat.android.util.profileimages.ProfileImageUtils;
import javax.inject.Provider;

public final class anf
  extends amz
{
  public anf(Intent paramIntent)
  {
    this(paramIntent, akp.UNSAFE_USER_PROVIDER, pm.a(), axo.PROFILE_IMAGE_CACHE, ProfileImageUtils.a(), akr.a(), aph.a());
  }
  
  @cf
  private anf(Intent paramIntent, @chc Provider<akp> paramProvider, @chc pm parampm, @chc axn paramaxn, @chc ProfileImageUtils paramProfileImageUtils, @chc akr paramakr, @chc aph paramaph)
  {
    super(paramIntent, paramProvider, parampm, paramaxn, paramProfileImageUtils, paramakr, paramaph);
  }
  
  public final void D_()
  {
    if ((a != null) && (bjx.a.NOT_EQUAL == a.e()))
    {
      if (TextUtils.equals(c, akr.aC())) {
        akr.m(a.b());
      }
    }
    else {
      return;
    }
    d.f();
  }
  
  protected final akp.a b(bhx parambhx)
  {
    return new akp.a(h.a(parambhx.d(), f), h.a(parambhx.f()), false, h.a(parambhx.h(), parambhx.i(), f));
  }
  
  protected final String c()
  {
    return akr.aC();
  }
  
  public final Object getRequestPayload()
  {
    return buildAuthPayload(new amz.a(this).a(c).b(pq.a().a("/loq/conversations")));
  }
  
  protected final String l_()
  {
    return "/loq/conversations";
  }
}

/* Location:
 * Qualified Name:     anf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */