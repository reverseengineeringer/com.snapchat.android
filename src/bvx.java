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

public final class bvx
  extends bvw
{
  protected boolean f = false;
  private Activity g = null;
  private AlertDialog h = null;
  
  public bvx(WeakReference<Activity> paramWeakReference, String paramString1, String paramString2)
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
      bwl.a(g, paramJSONArray.toString());
      if ((g != null) && (!g.isFinishing())) {}
    }
    else
    {
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(g);
    localBuilder.setTitle(bvi.a(e, 513));
    if (!d.booleanValue())
    {
      localBuilder.setMessage(bvi.a(e, 514));
      localBuilder.setNegativeButton(bvi.a(e, 515), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          b();
        }
      });
      localBuilder.setPositiveButton(bvi.a(e, 516), new DialogInterface.OnClickListener()
      {
        public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          bwl.a(bvx.a(bvx.this), "[]");
          paramAnonymousDialogInterface = new WeakReference(bvx.a(bvx.this));
          if ((bwk.a().booleanValue()) && (bwk.a(paramAnonymousDialogInterface).booleanValue()))
          {
            bvx.a(bvx.this, paramJSONArray);
            return;
          }
          bvx.a(bvx.this, paramJSONArray, Boolean.valueOf(false));
        }
      });
      h = localBuilder.create();
      h.show();
      return;
    }
    Toast.makeText(g, bvi.a(e, 512), 1).show();
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
 * Qualified Name:     bvx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */