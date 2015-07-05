import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.lang.ref.WeakReference;
import org.json.JSONArray;

final class bvx$2
  implements DialogInterface.OnClickListener
{
  bvx$2(bvx parambvx, JSONArray paramJSONArray) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    bwl.a(bvx.a(b), "[]");
    paramDialogInterface = new WeakReference(bvx.a(b));
    if ((bwk.a().booleanValue()) && (bwk.a(paramDialogInterface).booleanValue()))
    {
      bvx.a(b, a);
      return;
    }
    bvx.a(b, a, Boolean.valueOf(false));
  }
}

/* Location:
 * Qualified Name:     bvx.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */