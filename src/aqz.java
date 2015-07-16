import android.content.Context;

public final class aqz
  extends ara
{
  private final aqz.a a;
  private final aas b;
  private final String c;
  
  public aqz(Context paramContext, ajy paramajy, aas paramaas, @chd aqz.a parama)
  {
    super(paramContext, null, paramContext.getString(2131493269), paramContext.getString(2131492952));
    a = parama;
    b = paramaas;
    c = mStoryId;
    parama = mDisplayName;
    String str1 = mFriendName;
    String str2 = mVenue;
    paramaas = mCustomTitle;
    paramContext = paramaas;
    if (paramaas == null) {
      paramContext = auv.a(null, 2131493318, new Object[] { parama });
    }
    paramaas = mCustomDescription;
    paramajy = paramaas;
    if (paramaas == null) {
      paramajy = auv.a(null, 2131493317, new Object[] { str2, parama, parama, str1, parama, str1 });
    }
    setTitle(paramContext);
    setMessage(paramajy);
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
 * Qualified Name:     aqz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */