import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Friend;
import com.squareup.otto.Bus;

public final class qh
  extends tx
  implements ui.b<qh.b>
{
  public static final int MIN_USERNAME_LENGTH = 3;
  private static final String TAG = "FriendExistsTask";
  private Bus mBus;
  public final Friend mFriend;
  
  public qh(Friend paramFriend)
  {
    this(paramFriend, bbo.a());
  }
  
  private qh(Friend paramFriend, Bus paramBus)
  {
    mFriend = paramFriend;
    mBus = paramBus;
    registerCallback(qh.b.class, this);
  }
  
  public final String getPath()
  {
    return "/bq/user_exists";
  }
  
  @ud
  public final class a
    extends qc
  {
    @SerializedName("request_username")
    String request_username = mFriend.l();
    
    public a() {}
  }
  
  static class b
  {
    @SerializedName("exists")
    boolean exists;
    @SerializedName("logged")
    boolean logged;
    @SerializedName("throttled")
    boolean throttled;
  }
}

/* Location:
 * Qualified Name:     qh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */