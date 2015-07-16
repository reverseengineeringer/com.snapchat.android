import android.annotation.TargetApi;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import net.hockeyapp.android.UpdateActivity;
import org.json.JSONArray;

public final class bwy
  extends bwx
{
  protected boolean f = false;
  private Activity g = null;
  private AlertDialog h = null;
  
  public bwy(WeakReference<Activity> paramWeakReference, String paramString1, String paramString2)
  {
    super(paramWeakReference, paramString1, paramString2);
    g = ((Activity)paramWeakReference.get());
    f = true;
  }
  
  @TargetApi(11)
  private void a(JSONArray paramJSONArray, Boolean paramBoolean)
  {
    Object localObject1 = null;
    if (e != null) {
      localObject1 = UpdateActivity.class;
    }
    Object localObject2 = localObject1;
    if (localObject1 == null) {
      localObject2 = UpdateActivity.class;
    }
    if (g != null)
    {
      localObject1 = new Intent();
      ((Intent)localObject1).setClass(g, (Class)localObject2);
      ((Intent)localObject1).putExtra("json", paramJSONArray.toString());
      ((Intent)localObject1).putExtra("url", a("apk"));
      g.startActivity((Intent)localObject1);
      if (paramBoolean.booleanValue()) {
        g.finish();
      }
    }
    b();
  }
  
  public final void a()
  {
    super.a();
    g = null;
    if (h != null)
    {
      h.dismiss();
      h = null;
    }
  }
  
  protected final void a(final JSONArray paramJSONArray)
  {
    super.a(paramJSONArray);
    if ((paramJSONArray != null) && (f))
    {
      bxm.a(g, paramJSONArray.toString());
      if ((g != null) && (!g.isFinishing())) {}
    }
    else
    {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(g);
    localBuilder.setTitle(bwj.a(e, 513));
    if (!d.booleanValue())
    {
      localBuilder.setMessage(bwj.a(e, 514));
      localBuilder.setNegativeButton(bwj.a(e, 515), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          b();
        }
      });
      localBuilder.setPositiveButton(bwj.a(e, 516), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          bxm.a(bwy.a(bwy.this), "[]");
          paramAnonymousDialogInterface = new WeakReference(bwy.a(bwy.this));
          if ((bxl.a().booleanValue()) && (bxl.a(paramAnonymousDialogInterface).booleanValue()))
          {
            bwy.a(bwy.this, paramJSONArray);
            return;
          }
          bwy.a(bwy.this, paramJSONArray, Boolean.valueOf(false));
        }
      });
      h = localBuilder.create();
      h.show();
      return;
    }
    Toast.makeText(g, bwj.a(e, 512), 1).show();
    a(paramJSONArray, Boolean.valueOf(true));
  }
  
  protected final void b()
  {
    super.b();
    g = null;
    h = null;
  }
}

/* Location:
 * Qualified Name:     bwy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */