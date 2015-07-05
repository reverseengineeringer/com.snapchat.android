package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.R.string;
import java.util.Map;

@zzgi
public class zzed
  extends zzeg
{
  private final Context mContext;
  private final Map<String, String> zzsZ;
  
  public zzed(zzic paramzzic, Map<String, String> paramMap)
  {
    super(paramzzic, "storePicture");
    zzsZ = paramMap;
    mContext = paramzzic.zzeD();
  }
  
  public void execute()
  {
    if (mContext == null)
    {
      zzH("Activity context is not available");
      return;
    }
    if (!zzab.zzaM().zzx(mContext).zzbR())
    {
      zzH("Feature is not supported by the device.");
      return;
    }
    final String str1 = (String)zzsZ.get("iurl");
    if (TextUtils.isEmpty(str1))
    {
      zzH("Image url cannot be empty.");
      return;
    }
    if (!URLUtil.isValidUrl(str1))
    {
      zzH("Invalid image url: " + str1);
      return;
    }
    final String str2 = zzG(str1);
    if (!zzab.zzaM().zzU(str2))
    {
      zzH("Image type not recognized: " + str2);
      return;
    }
    AlertDialog.Builder localBuilder = zzab.zzaM().zzw(mContext);
    localBuilder.setTitle(zzab.zzaP().zzc(R.string.store_picture_title, "Save image"));
    localBuilder.setMessage(zzab.zzaP().zzc(R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
    localBuilder.setPositiveButton(zzab.zzaP().zzc(R.string.accept, "Accept"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = (DownloadManager)zzed.zza(zzed.this).getSystemService("download");
        try
        {
          paramAnonymousDialogInterface.enqueue(zzf(str1, str2));
          return;
        }
        catch (IllegalStateException paramAnonymousDialogInterface)
        {
          zzH("Could not store picture.");
        }
      }
    });
    localBuilder.setNegativeButton(zzab.zzaP().zzc(R.string.decline, "Decline"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        zzH("User canceled the download.");
      }
    });
    localBuilder.create().show();
  }
  
  String zzG(String paramString)
  {
    return Uri.parse(paramString).getLastPathSegment();
  }
  
  DownloadManager.Request zzf(String paramString1, String paramString2)
  {
    paramString1 = new DownloadManager.Request(Uri.parse(paramString1));
    paramString1.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, paramString2);
    zzab.zzaO().zza(paramString1);
    return paramString1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */