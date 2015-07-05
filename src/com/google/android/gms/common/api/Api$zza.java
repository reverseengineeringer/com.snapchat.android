package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzq;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract interface Api$zza
{
  public abstract void connect();
  
  public abstract void disconnect();
  
  public abstract void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString);
  
  public abstract boolean isConnected();
  
  public abstract void zza(GoogleApiClient.zza paramzza);
  
  public abstract void zza(zzq paramzzq);
  
  public abstract void zzb(zzq paramzzq);
  
  public abstract boolean zzhc();
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Api.zza
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */