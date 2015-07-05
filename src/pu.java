import com.google.gson.annotations.SerializedName;

public final class pu
  extends th
{
  final String mFriend;
  final boolean mHide;
  private final ajx mUserPrefs;
  
  public pu(String paramString)
  {
    this(paramString, true);
  }
  
  public pu(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, ajx.a());
  }
  
  private pu(String paramString, boolean paramBoolean, ajx paramajx)
  {
    mFriend = paramString;
    mHide = paramBoolean;
    mUserPrefs = paramajx;
  }
  
  public final void a(@cgb uc paramuc)
  {
    super.a(paramuc);
    if (paramuc.d()) {
      ajx.aC();
    }
  }
  
  protected final String d()
  {
    return "/loq/friend_hide";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("friend")
    final String friend = mFriend;
    @SerializedName("hide")
    final boolean hide = mHide;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     pu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */