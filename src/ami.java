import android.content.Intent;
import android.text.TextUtils;
import javax.inject.Provider;

public final class ami
  extends amc
{
  public ami(Intent paramIntent)
  {
    this(paramIntent, ajv.UNSAFE_USER_PROVIDER, ov.a(), awq.PROFILE_IMAGE_CACHE, ajx.a(), aol.a());
  }
  
  @cf
  private ami(Intent paramIntent, @cgb Provider<ajv> paramProvider, @cgb ov paramov, @cgb awp paramawp, @cgb ajx paramajx, @cgb aol paramaol)
  {
    super(paramIntent, paramProvider, paramov, paramawp, paramajx, paramaol);
  }
  
  public final void D_()
  {
    if ((a != null) && (biw.a.NOT_EQUAL == a.e()))
    {
      if (TextUtils.equals(c, ajx.aD())) {
        ajx.m(a.b());
      }
    }
    else {
      return;
    }
    d.f();
  }
  
  protected final ajv.a b(bgx parambgx)
  {
    return new ajv.a(h.a(parambgx.d(), f), h.a(parambgx.f()), false, h.a(parambgx.h(), parambgx.i(), f));
  }
  
  public final Object b()
  {
    return a(new amc.a(this).a(c).b(oz.a().a("/loq/conversations")));
  }
  
  protected final String e()
  {
    return "/loq/conversations";
  }
  
  protected final String h()
  {
    return ajx.aD();
  }
}

/* Location:
 * Qualified Name:     ami
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */