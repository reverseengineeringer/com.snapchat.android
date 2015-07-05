package com.google.android.gms.internal;

import com.google.android.gms.tagmanager.zzbf;
import org.json.JSONException;

public final class zzvi
{
  public static zzvh zzaBX = new zzvh()
  {
    public final Object zzn(byte[] paramAnonymousArrayOfByte)
    {
      if (paramAnonymousArrayOfByte == null) {
        throw new zzvl.zzg("Cannot parse a null byte[]");
      }
      if (paramAnonymousArrayOfByte.length == 0) {
        throw new zzvl.zzg("Cannot parse a 0 length byte[]");
      }
      try
      {
        paramAnonymousArrayOfByte = zzvf.zzdd(new String(paramAnonymousArrayOfByte));
        if (paramAnonymousArrayOfByte != null) {
          zzbf.zzab("The container was successfully parsed from the resource");
        }
        return paramAnonymousArrayOfByte;
      }
      catch (JSONException paramAnonymousArrayOfByte)
      {
        throw new zzvl.zzg("The resource data is corrupted. The container cannot be extracted from the binary data");
      }
      catch (zzvl.zzg paramAnonymousArrayOfByte)
      {
        throw new zzvl.zzg("The resource data is invalid. The container cannot be extracted from the binary data");
      }
    }
  };
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzvi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */