package net.hockeyapp.android;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import bvf;
import bvi;
import bwa;
import bwd;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
import net.hockeyapp.android.views.LoginView;

public class LoginActivity
  extends Activity
  implements View.OnClickListener
{
  private String a;
  private String b;
  private int c;
  private bwa d;
  private Handler e;
  
  private static String a(String paramString)
  {
    try
    {
      Object localObject = MessageDigest.getInstance("MD5");
      ((MessageDigest)localObject).update(paramString.getBytes());
      localObject = ((MessageDigest)localObject).digest();
      StringBuilder localStringBuilder = new StringBuilder();
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        for (paramString = Integer.toHexString(localObject[i] & 0xFF); paramString.length() < 2; paramString = "0" + paramString) {}
        localStringBuilder.append(paramString);
        i += 1;
      }
      paramString = localStringBuilder.toString();
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      paramString.printStackTrace();
    }
    return "";
  }
  
  public void onClick(View paramView)
  {
    int i = 1;
    switch (paramView.getId())
    {
    default: 
      return;
    }
    paramView = ((EditText)findViewById(12291)).getText().toString();
    String str = ((EditText)findViewById(12292)).getText().toString();
    HashMap localHashMap = new HashMap();
    if (c == 1) {
      if (!TextUtils.isEmpty(paramView))
      {
        i = 1;
        localHashMap.put("email", paramView);
        localHashMap.put("authcode", a(b + paramView));
      }
    }
    for (;;)
    {
      if (i != 0)
      {
        d = new bwa(this, e, a, c, localHashMap);
        bwd.a(d);
        return;
        i = 0;
        break;
        if (c != 2) {
          break label242;
        }
        if ((!TextUtils.isEmpty(paramView)) && (!TextUtils.isEmpty(str))) {}
        for (;;)
        {
          localHashMap.put("email", paramView);
          localHashMap.put("password", str);
          break;
          i = 0;
        }
      }
      Toast.makeText(this, bvi.a(1281), 1000).show();
      return;
      label242:
      i = 0;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(new LoginView(this));
    paramBundle = getIntent().getExtras();
    if (paramBundle != null)
    {
      a = paramBundle.getString("url");
      b = paramBundle.getString("secret");
      c = paramBundle.getInt("mode");
    }
    if (c == 1) {
      ((EditText)findViewById(12292)).setVisibility(4);
    }
    ((Button)findViewById(12293)).setOnClickListener(this);
    e = new Handler()
    {
      public final void handleMessage(Message paramAnonymousMessage)
      {
        if (paramAnonymousMessage.getData().getBoolean("success"))
        {
          finish();
          if (bvf.b != null) {}
          return;
        }
        Toast.makeText(LoginActivity.this, "Login failed. Check your credentials.", 2000).show();
      }
    };
    paramBundle = getLastNonConfigurationInstance();
    if (paramBundle != null)
    {
      d = ((bwa)paramBundle);
      paramBundle = d;
      Handler localHandler = e;
      a = this;
      b = localHandler;
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (bvf.b == null))
    {
      paramKeyEvent = new Intent(this, bvf.a);
      paramKeyEvent.setFlags(67108864);
      paramKeyEvent.putExtra("net.hockeyapp.android.EXIT", true);
      startActivity(paramKeyEvent);
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public Object onRetainNonConfigurationInstance()
  {
    if (d != null)
    {
      bwa localbwa = d;
      a = null;
      b = null;
      c = null;
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     net.hockeyapp.android.LoginActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */