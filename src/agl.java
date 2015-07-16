import com.google.gson.annotations.SerializedName;
import com.snapchat.android.model.Friend;
import com.snapchat.android.stories.StoriesSection;
import java.util.ArrayList;

public final class agl
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
  
  public agl()
  {
    super(null);
  }
  
  public final StoriesSection a(boolean paramBoolean)
  {
    return StoriesSection.LIVE;
  }
  
  public final String a()
  {
    return b;
  }
  
  public final boolean b()
  {
    return (super.b()) || (auk.f(a, akp.g()));
  }
  
  public final boolean equals(@chd Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof agl)) {
      return false;
    }
    paramObject = (agl)paramObject;
    return a.equals(a);
  }
  
  public final int hashCode()
  {
    return a.hashCode();
  }
  
  public final String l()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     agl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */