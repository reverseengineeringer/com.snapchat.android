import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

@ud
public final class qr$a
  extends qc
{
  @SerializedName("client_properties")
  String clientProperties = aul.a().toJson(qr.b(this$0));
  @SerializedName("seen_tooltips")
  String seenTooltips = aul.a().toJson(qr.a(this$0));
  @SerializedName("username")
  String username = akr.l();
  
  public qr$a(qr paramqr) {}
}

/* Location:
 * Qualified Name:     qr.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */