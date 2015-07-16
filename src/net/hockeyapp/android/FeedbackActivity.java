package net.hockeyapp.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.NotificationManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import bwj;
import bwp;
import bwr;
import bws;
import bwu;
import bwv;
import bxc;
import bxd;
import bxe;
import bxj;
import bxj.a;
import bxl;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;
import net.hockeyapp.android.views.AttachmentListView;
import net.hockeyapp.android.views.AttachmentView;
import net.hockeyapp.android.views.FeedbackView;

public class FeedbackActivity
  extends Activity
  implements View.OnClickListener
{
  private boolean A;
  private String B;
  private final int a = 0;
  private final int b = 1;
  private final int c = 2;
  private final int d = 3;
  private Context e;
  private TextView f;
  private EditText g;
  private EditText h;
  private EditText i;
  private EditText j;
  private Button k;
  private Button l;
  private Button m;
  private Button n;
  private ScrollView o;
  private LinearLayout p;
  private ListView q;
  private bxd r;
  private Handler s;
  private bxc t;
  private Handler u;
  private String v;
  private bwr w;
  private bwp x;
  private ArrayList<bwu> y;
  private boolean z;
  
  private void a()
  {
    B = bxj.a.a.a(this);
    if ((B == null) || (z))
    {
      b(false);
      return;
    }
    b(true);
    a(v, null, null, null, null, null, B, s, true);
  }
  
  private void a(EditText paramEditText, int paramInt)
  {
    paramEditText.setError(bwj.a(paramInt));
    a(true);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, List<Uri> paramList, String paramString6, Handler paramHandler, boolean paramBoolean)
  {
    r = new bxd(e, paramString1, paramString2, paramString3, paramString4, paramString5, paramList, paramString6, paramHandler, paramBoolean);
    bxe.a(r);
  }
  
  public final void a(boolean paramBoolean)
  {
    if (k != null) {
      k.setEnabled(paramBoolean);
    }
  }
  
  protected final void b(boolean paramBoolean)
  {
    o = ((ScrollView)findViewById(131095));
    p = ((LinearLayout)findViewById(131093));
    q = ((ListView)findViewById(131094));
    if (paramBoolean)
    {
      p.setVisibility(0);
      o.setVisibility(8);
      f = ((TextView)findViewById(8192));
      m = ((Button)findViewById(131088));
      m.setOnClickListener(this);
      n = ((Button)findViewById(131089));
      n.setOnClickListener(this);
      return;
    }
    p.setVisibility(8);
    o.setVisibility(0);
    g = ((EditText)findViewById(8194));
    h = ((EditText)findViewById(8196));
    i = ((EditText)findViewById(8198));
    j = ((EditText)findViewById(8200));
    Object localObject;
    Context localContext;
    if (!A)
    {
      localObject = bxj.a.a;
      localContext = e;
      if (localContext == null)
      {
        localObject = null;
        if (localObject == null) {
          break label430;
        }
        localObject = ((String)localObject).split("\\|");
        if ((localObject != null) && (localObject.length >= 2))
        {
          g.setText(localObject[0]);
          h.setText(localObject[1]);
          if (localObject.length < 3) {
            break label419;
          }
          i.setText(localObject[2]);
          j.requestFocus();
        }
        label277:
        A = true;
      }
    }
    else
    {
      j.setText("");
      if (bxj.a.a.a(e) == null) {
        break label468;
      }
      i.setVisibility(8);
    }
    for (;;)
    {
      ((ViewGroup)findViewById(8209)).removeAllViews();
      l = ((Button)findViewById(8208));
      l.setOnClickListener(this);
      registerForContextMenu(l);
      k = ((Button)findViewById(8201));
      k.setOnClickListener(this);
      return;
      a = localContext.getSharedPreferences("net.hockeyapp.android.prefs_name_email", 0);
      if (a == null)
      {
        localObject = null;
        break;
      }
      localObject = a.getString("net.hockeyapp.android.prefs_key_name_email", null);
      break;
      label419:
      i.requestFocus();
      break label277;
      label430:
      g.setText("");
      h.setText("");
      i.setText("");
      g.requestFocus();
      break label277;
      label468:
      i.setVisibility(0);
    }
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 != -1) {}
    do
    {
      do
      {
        do
        {
          do
          {
            return;
            if (paramInt1 != 2) {
              break;
            }
            paramIntent = paramIntent.getData();
          } while (paramIntent == null);
          localObject = (ViewGroup)findViewById(8209);
          ((ViewGroup)localObject).addView(new AttachmentView(this, (ViewGroup)localObject, paramIntent));
          return;
          if (paramInt1 != 1) {
            break;
          }
          paramIntent = paramIntent.getData();
        } while (paramIntent == null);
        try
        {
          localObject = new Intent(this, PaintActivity.class);
          ((Intent)localObject).putExtra("imageUri", paramIntent);
          startActivityForResult((Intent)localObject, 3);
          return;
        }
        catch (ActivityNotFoundException paramIntent)
        {
          return;
        }
      } while (paramInt1 != 3);
      paramIntent = (Uri)paramIntent.getParcelableExtra("imageUri");
    } while (paramIntent == null);
    Object localObject = (ViewGroup)findViewById(8209);
    ((ViewGroup)localObject).addView(new AttachmentView(this, (ViewGroup)localObject, paramIntent));
  }
  
  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default: 
      return;
    case 8201: 
      a(false);
      if (j != null) {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(j.getWindowToken(), 0);
      }
      paramView = bxj.a.a.a(e);
      String str1 = g.getText().toString().trim();
      String str2 = h.getText().toString().trim();
      String str3 = i.getText().toString().trim();
      String str4 = j.getText().toString().trim();
      if (TextUtils.isEmpty(str3))
      {
        i.setVisibility(0);
        a(i, 1038);
        return;
      }
      if (TextUtils.isEmpty(str1))
      {
        a(g, 1041);
        return;
      }
      if (TextUtils.isEmpty(str2))
      {
        a(h, 1042);
        return;
      }
      if (TextUtils.isEmpty(str4))
      {
        a(j, 1043);
        return;
      }
      if (!bxl.b(str2))
      {
        a(h, 1039);
        return;
      }
      Object localObject = bxj.a.a;
      Context localContext = e;
      if (localContext != null)
      {
        a = localContext.getSharedPreferences("net.hockeyapp.android.prefs_name_email", 0);
        if (a != null)
        {
          b = a.edit();
          if ((str1 != null) && (str2 != null) && (str3 != null)) {
            break label383;
          }
          b.putString("net.hockeyapp.android.prefs_key_name_email", null);
        }
      }
      for (;;)
      {
        bxj.a(b);
        localObject = ((AttachmentListView)findViewById(8209)).getAttachments();
        a(v, str1, str2, str3, str4, (List)localObject, paramView, s, false);
        return;
        b.putString("net.hockeyapp.android.prefs_key_name_email", String.format("%s|%s|%s", new Object[] { str1, str2, str3 }));
      }
    case 8208: 
      if (((ViewGroup)findViewById(8209)).getChildCount() >= 3)
      {
        Toast.makeText(this, "Only 3 attachments allowed.", 1000).show();
        return;
      }
      openContextMenu(paramView);
      return;
    case 131088: 
      label383:
      b(false);
      z = true;
      return;
    }
    a(v, null, null, null, null, null, bxj.a.a.a(e), s, true);
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onContextItemSelected(paramMenuItem);
    }
    int i1 = paramMenuItem.getItemId();
    if (i1 == 2)
    {
      paramMenuItem = new Intent();
      paramMenuItem.setType("*/*");
      paramMenuItem.setAction("android.intent.action.GET_CONTENT");
      startActivityForResult(Intent.createChooser(paramMenuItem, "Select File"), 2);
      return true;
    }
    if (i1 == 1)
    {
      paramMenuItem = new Intent();
      paramMenuItem.setType("image/*");
      paramMenuItem.setAction("android.intent.action.GET_CONTENT");
      startActivityForResult(Intent.createChooser(paramMenuItem, "Select Picture"), 1);
      return true;
    }
    return false;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    kkxxkk.b041E041EОО041EО(getApplicationContext());
    xkkkxk.b041E041EООО041E(getApplicationContext());
    super.onCreate(paramBundle);
    setContentView(new FeedbackView(this));
    setTitle(bwj.a(1035));
    e = this;
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null) {
      v = localBundle.getString("url");
    }
    if (paramBundle != null)
    {
      A = paramBundle.getBoolean("feedbackViewInitialized");
      z = paramBundle.getBoolean("inSendFeedback");
    }
    for (;;)
    {
      ((NotificationManager)getSystemService("notification")).cancel(2);
      s = new Handler()
      {
        public final void handleMessage(Message paramAnonymousMessage)
        {
          int i = 0;
          FeedbackActivity.a(FeedbackActivity.this, new bwr());
          Object localObject;
          String str;
          if ((paramAnonymousMessage != null) && (paramAnonymousMessage.getData() != null))
          {
            localObject = paramAnonymousMessage.getData();
            paramAnonymousMessage = ((Bundle)localObject).getString("feedback_response");
            str = ((Bundle)localObject).getString("feedback_status");
            localObject = ((Bundle)localObject).getString("request_type");
            if ((((String)localObject).equals("send")) && ((paramAnonymousMessage == null) || (Integer.parseInt(str) != 201))) {
              aa = bwj.a(1036);
            }
          }
          for (;;)
          {
            if (i == 0) {
              runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  a(true);
                  showDialog(0);
                }
              });
            }
            return;
            if ((((String)localObject).equals("fetch")) && (str != null) && ((Integer.parseInt(str) == 404) || (Integer.parseInt(str) == 422)))
            {
              FeedbackActivity.b(FeedbackActivity.this);
              i = 1;
            }
            else if (paramAnonymousMessage != null)
            {
              FeedbackActivity.a(FeedbackActivity.this, paramAnonymousMessage, (String)localObject);
              i = 1;
            }
            else
            {
              aa = bwj.a(1037);
              continue;
              aa = bwj.a(1036);
            }
          }
        }
      };
      u = new Handler()
      {
        public final void handleMessage(Message paramAnonymousMessage)
        {
          FeedbackActivity.a(FeedbackActivity.this, new bwr());
          int i;
          if ((paramAnonymousMessage != null) && (paramAnonymousMessage.getData() != null))
          {
            paramAnonymousMessage = (bwv)paramAnonymousMessage.getData().getSerializable("parse_feedback_response");
            if (paramAnonymousMessage != null) {
              if (a.equalsIgnoreCase("success"))
              {
                if (c == null) {
                  break label130;
                }
                bxj.a.a.a(FeedbackActivity.c(FeedbackActivity.this), c);
                FeedbackActivity.a(FeedbackActivity.this, paramAnonymousMessage);
                FeedbackActivity.d(FeedbackActivity.this);
                i = 1;
              }
            }
          }
          for (;;)
          {
            if (i == 0) {
              runOnUiThread(new Runnable()
              {
                public final void run()
                {
                  showDialog(0);
                }
              });
            }
            a(true);
            return;
            i = 0;
            continue;
            label130:
            i = 1;
            continue;
            i = 0;
          }
        }
      };
      a();
      return;
      z = false;
      A = false;
    }
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramContextMenu.add(0, 2, 0, "Attach File");
    paramContextMenu.add(0, 1, 0, "Attach Picture");
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    }
    new AlertDialog.Builder(this).setMessage("An error has occured").setCancelable(false).setTitle("Error").setIcon(17301543).setPositiveButton("OK", new DialogInterface.OnClickListener()
    {
      public final void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        FeedbackActivity.a(FeedbackActivity.this, null);
        paramAnonymousDialogInterface.cancel();
      }
    }).create();
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (z)
      {
        z = false;
        a();
      }
      for (;;)
      {
        return true;
        finish();
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  protected void onPrepareDialog(int paramInt, Dialog paramDialog)
  {
    switch (paramInt)
    {
    default: 
      return;
    }
    paramDialog = (AlertDialog)paramDialog;
    if (w != null)
    {
      paramDialog.setMessage(w.a);
      return;
    }
    paramDialog.setMessage(bwj.a(1040));
  }
  
  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      ViewGroup localViewGroup = (ViewGroup)findViewById(8209);
      Iterator localIterator = paramBundle.getParcelableArrayList("attachments").iterator();
      while (localIterator.hasNext()) {
        localViewGroup.addView(new AttachmentView(this, localViewGroup, (Uri)localIterator.next()));
      }
      A = paramBundle.getBoolean("feedbackViewInitialized");
    }
    super.onRestoreInstanceState(paramBundle);
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    if (r != null)
    {
      bxd localbxd = r;
      a = null;
      b = null;
    }
    return r;
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("attachments", ((AttachmentListView)findViewById(8209)).getAttachments());
    paramBundle.putBoolean("feedbackViewInitialized", A);
    paramBundle.putBoolean("inSendFeedback", z);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.FeedbackActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */