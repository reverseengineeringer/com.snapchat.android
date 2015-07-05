import com.google.gson.annotations.SerializedName;

public final class aiy
{
  @SerializedName("end")
  public cgs end;
  @SerializedName("start")
  public cgs start;
  
  public final boolean a(cgs paramcgs)
  {
    if ((start == null) || (end == null)) {}
    while ((!start.c(paramcgs)) || (!end.b(paramcgs))) {
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     aiy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */