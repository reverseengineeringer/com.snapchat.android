import com.google.gson.annotations.SerializedName;

public final class ql
  extends tx
{
  final String mFriend;
  final boolean mHide;
  private final akr mUserPrefs;
  
  public ql(String paramString)
  {
    this(paramString, true);
  }
  
  public ql(String paramString, boolean paramBoolean)
  {
    this(paramString, paramBoolean, akr.a());
  }
  
  private ql(String paramString, boolean paramBoolean, akr paramakr)
  {
    mFriend = paramString;
    mHide = paramBoolean;
    mUserPrefs = paramakr;
  }
  
  protected final String getPath()
  {
    return "/loq/friend_hide";
  }
  
  public final void onResult(@chc us paramus)
  {
    super.onResult(paramus);
    if (paramus.d()) {
      akr.aB();
    }
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("friend")
    final String friend = mFriend;
    @SerializedName("hide")
    final boolean hide = mHide;
    
    a() {}
  }
}

/* Location:
 * Qualified Name:     ql
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */