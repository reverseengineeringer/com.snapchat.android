package com.snapchat.android.receiver;

import akr;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import bbo;
import bfs;
import chd;
import com.squareup.otto.Bus;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kkkkkk.kkxxkk;
import kkkkkk.xkkkxk;

public class SmsReceiver
  extends BroadcastReceiver
{
  @chd
  private static SmsMessage[] a(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("pdus"))) {
      try
      {
        paramBundle = (Object[])paramBundle.get("pdus");
        SmsMessage[] arrayOfSmsMessage = new SmsMessage[paramBundle.length];
        int i = 0;
        while (i < paramBundle.length)
        {
          arrayOfSmsMessage[i] = SmsMessage.createFromPdu((byte[])(byte[])paramBundle[i]);
          new StringBuilder("getReceivedMessages - body: ").append(arrayOfSmsMessage[i].getDisplayMessageBody()).append(" origin: ").append(arrayOfSmsMessage[i].getDisplayOriginatingAddress()).append(" service center: ").append(arrayOfSmsMessage[i].getServiceCenterAddress()).append(" subject: ").append(arrayOfSmsMessage[i].getPseudoSubject());
          i += 1;
        }
        return arrayOfSmsMessage;
      }
      catch (Exception paramBundle) {}
    }
    return null;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    kkxxkk.b041E041EОО041EО(paramContext);
    xkkkxk.b041E041EООО041E(paramContext);
    new StringBuilder("onReceive ").append(paramIntent);
    if (paramIntent != null)
    {
      paramIntent = a(paramIntent.getExtras());
      if ((paramIntent != null) && (paramIntent.length > 0))
      {
        int j = paramIntent.length;
        int i = 0;
        if (i < j)
        {
          paramContext = paramIntent[i];
          String str;
          if (paramContext != null)
          {
            str = paramContext.getDisplayMessageBody();
            paramContext = akr.bl();
            if ((TextUtils.isEmpty(paramContext)) || (TextUtils.isEmpty(str))) {
              break label198;
            }
            paramContext = Pattern.compile(paramContext.replace("{0}", "(\\d+)"));
            Matcher localMatcher = paramContext.matcher(str);
            if (!localMatcher.find()) {
              break label198;
            }
            paramContext = paramContext.matcher(localMatcher.group());
            if ((!paramContext.matches()) || (paramContext.groupCount() <= 0)) {
              break label198;
            }
          }
          label198:
          for (paramContext = paramContext.group(1);; paramContext = null)
          {
            new StringBuilder("messageBody: ").append(str).append(" verificationCode: ").append(paramContext);
            if (!TextUtils.isEmpty(paramContext)) {
              bbo.a().a(new bfs(paramContext));
            }
            i += 1;
            break;
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.snapchat.android.receiver.SmsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */