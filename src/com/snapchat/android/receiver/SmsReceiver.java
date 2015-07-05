package com.snapchat.android.receiver;

import ajx;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import ban;
import bet;
import cgc;
import com.snapchat.android.Timber;
import com.squareup.otto.Bus;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SmsReceiver
  extends BroadcastReceiver
{
  @cgc
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
          Timber.c("SmsReceiver", "getReceivedMessages - body: " + arrayOfSmsMessage[i].getDisplayMessageBody() + " origin: " + arrayOfSmsMessage[i].getDisplayOriginatingAddress() + " service center: " + arrayOfSmsMessage[i].getServiceCenterAddress() + " subject: " + arrayOfSmsMessage[i].getPseudoSubject(), new Object[0]);
          i += 1;
        }
        return arrayOfSmsMessage;
      }
      catch (Exception paramBundle)
      {
        Timber.f("SmsReceiver", "Failed to parse SMS messages from Intent. ", new Object[] { paramBundle });
      }
    }
    return null;
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Timber.c("SmsReceiver", "onReceive " + paramIntent, new Object[0]);
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
            paramContext = ajx.bo();
            if ((TextUtils.isEmpty(paramContext)) || (TextUtils.isEmpty(str))) {
              break label212;
            }
            paramContext = Pattern.compile(paramContext.replace("{0}", "(\\d+)"));
            Matcher localMatcher = paramContext.matcher(str);
            if (!localMatcher.find()) {
              break label212;
            }
            paramContext = paramContext.matcher(localMatcher.group());
            if ((!paramContext.matches()) || (paramContext.groupCount() <= 0)) {
              break label212;
            }
          }
          label212:
          for (paramContext = paramContext.group(1);; paramContext = null)
          {
            Timber.c("SmsReceiver", "messageBody: " + str + " verificationCode: " + paramContext, new Object[0]);
            if (!TextUtils.isEmpty(paramContext)) {
              ban.a().a(new bet(paramContext));
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