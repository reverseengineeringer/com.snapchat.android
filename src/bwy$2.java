import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.lang.ref.WeakReference;
import org.json.JSONArray;

final class bwy$2
  implements DialogInterface.OnClickListener
{
  bwy$2(bwy parambwy, JSONArray paramJSONArray) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bxm.a(bwy.a(b), "[]");
    paramDialogInterface = new WeakReference(bwy.a(b));
    if ((bxl.a().booleanValue()) && (bxl.a(paramDialogInterface).booleanValue()))
    {
      bwy.a(b, a);
      return;
    }
    bwy.a(b, a, Boolean.valueOf(false));
  }
}

/* Location:
 * Qualified Name:     bwy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */