import android.content.Context;

public final class aqa
  extends aqb
{
  private final aqa.a a;
  private final zs b;
  private final String c;
  
  public aqa(Context paramContext, ajc paramajc, zs paramzs, @cgc aqa.a parama)
  {
    super(paramContext, null, paramContext.getString(2131493269), paramContext.getString(2131492952));
    a = parama;
    b = paramzs;
    c = mStoryId;
    parama = mDisplayName;
    String str1 = mFriendName;
    String str2 = mVenue;
    paramzs = mCustomTitle;
    paramContext = paramzs;
    if (paramzs == null) {
      paramContext = atx.a(null, 2131493318, new Object[] { parama });
    }
    paramzs = mCustomDescription;
    paramajc = paramzs;
    if (paramzs == null) {
      paramajc = atx.a(null, 2131493317, new Object[] { str2, parama, parama, str1, parama, str1 });
    }
    setTitle(paramContext);
    setMessage(paramajc);
  }
  
  protected final void a()
  {
    b.b(c);
    if (a != null) {
      a.a(true);
    }
  }
  
  protected final void b()
  {
    if (a != null) {
      a.a(false);
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     aqa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */