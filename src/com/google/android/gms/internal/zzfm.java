package com.google.android.gms.internal;

import android.text.TextUtils;
import android.util.Base64;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;

@zzgi
public class zzfm
{
  public static PublicKey zzN(String paramString)
  {
    try
    {
      paramString = Base64.decode(paramString, 0);
      paramString = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(paramString));
      return paramString;
    }
    catch (NoSuchAlgorithmException paramString)
    {
      throw new RuntimeException(paramString);
    }
    catch (InvalidKeySpecException paramString)
    {
      zzhx.zzZ("Invalid key specification.");
      throw new IllegalArgumentException(paramString);
    }
  }
  
  public static boolean zza(PublicKey paramPublicKey, String paramString1, String paramString2)
  {
    try
    {
      Signature localSignature = Signature.getInstance("SHA1withRSA");
      localSignature.initVerify(paramPublicKey);
      localSignature.update(paramString1.getBytes());
      if (!localSignature.verify(Base64.decode(paramString2, 0)))
      {
        zzhx.zzZ("Signature verification failed.");
        return false;
      }
      return true;
    }
    catch (NoSuchAlgorithmException paramPublicKey)
    {
      zzhx.zzZ("NoSuchAlgorithmException.");
      return false;
    }
    catch (InvalidKeyException paramPublicKey)
    {
      zzhx.zzZ("Invalid key specification.");
      return false;
    }
    catch (SignatureException paramPublicKey)
    {
      zzhx.zzZ("Signature exception.");
    }
    return false;
  }
  
  public static boolean zzc(String paramString1, String paramString2, String paramString3)
  {
    if ((TextUtils.isEmpty(paramString2)) || (TextUtils.isEmpty(paramString1)) || (TextUtils.isEmpty(paramString3)))
    {
      zzhx.zzZ("Purchase verification failed: missing data.");
      return false;
    }
    return zza(zzN(paramString1), paramString2, paramString3);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.zzfm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */