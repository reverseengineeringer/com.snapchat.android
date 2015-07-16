import com.google.gson.annotations.SerializedName;

public final class aju
{
  @SerializedName("end")
  public cht end;
  @SerializedName("start")
  public cht start;
  
  public final boolean a(cht paramcht)
  {
    if ((start == null) || (end == null)) {}
    while ((!start.c(paramcht)) || (!end.b(paramcht))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     aju
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */