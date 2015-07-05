import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Friend;
import com.squareup.otto.Bus;

public final class pq
  extends th
  implements ts.b<pq.b>
{
  public static final int MIN_USERNAME_LENGTH = 3;
  private static final String TAG = "FriendExistsTask";
  private Bus mBus;
  public final Friend mFriend;
  
  public pq(Friend paramFriend)
  {
    this(paramFriend, ban.a());
  }
  
  private pq(Friend paramFriend, Bus paramBus)
  {
    mFriend = paramFriend;
    mBus = paramBus;
    a(pq.b.class, this);
  }
  
  public final String d()
  {
    return "/bq/user_exists";
  }
  
  @tn
  public final class a
    extends pl
  {
    @SerializedName("request_username")
    String request_username = mFriend.h();
    
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
 * Qualified Name:     pq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */