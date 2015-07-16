import com.snapchat.android.model.Friend;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class ajp
{
  public static HashMap<String, ajp> sUsernamesToProfileInfo = new HashMap();
  private ArrayList<String> mBestFriends = new ArrayList();
  public int mScore = -1;
  
  public ajp(List<String> paramList, int paramInt)
  {
    a(paramList);
    mScore = paramInt;
  }
  
  public static void a(@chc final Friend paramFriend, @chc final ajp.a parama)
  {
    ajp localajp = (ajp)sUsernamesToProfileInfo.get(paramFriend.l());
    if (localajp == null)
    {
      new pe(paramFriend)
      {
        protected final void a(alp paramAnonymousalp)
        {
          super.a(paramAnonymousalp);
          parama.a((ajp)ajp.sUsernamesToProfileInfo.get(paramFriend.l()));
        }
      }.executeOnExecutor(avf.NETWORK_EXECUTOR, new String[0]);
      return;
    }
    parama.a(localajp);
  }
  
  private void a(List<String> paramList)
  {
    mBestFriends.clear();
    akp localakp = akp.g();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      mBestFriends.add(auk.e(str, localakp));
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(@chd ajp paramajp);
  }
}

/* Location:
 * Qualified Name:     ajp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */