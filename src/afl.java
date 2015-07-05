import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Friend;
import com.snapchat.android.stories.StoriesSection;
import java.util.ArrayList;

public final class afl
  extends Friend
{
  @SerializedName("username")
  public String a;
  @SerializedName("display_name")
  public String b;
  @SerializedName("keywords")
  public ArrayList<String> c = new ArrayList();
  @SerializedName("description")
  public String d;
  
  public afl()
  {
    super(null);
  }
  
  public final String a()
  {
    return b;
  }
  
  public final boolean b()
  {
    return (super.b()) || (atm.f(a, ajv.g()));
  }
  
  public final boolean equals(@cgc Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof afl)) {
      return false;
    }
    paramObject = (afl)paramObject;
    return a.equals(a);
  }
  
  public final String h()
  {
    return a;
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final StoriesSection i()
  {
    return StoriesSection.LIVE;
  }
}

/* Location:
 * Qualified Name:     afl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */