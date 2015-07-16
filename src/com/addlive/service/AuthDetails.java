package com.addlive.service;

import java.security.MessageDigest;
import org.json.JSONObject;

public class AuthDetails
{
  private long expires;
  private String mac;
  private String salt;
  private String signature;
  private String token;
  private long userId;
  
  private static String bytesToHexString(byte[] paramArrayOfByte)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int j = paramArrayOfByte.length;
    int i = 0;
    while (i < j)
    {
      String str = Integer.toHexString(paramArrayOfByte[i] & 0xFF);
      if (str.length() == 1) {
        localStringBuilder.append('0');
      }
      localStringBuilder.append(str);
      i += 1;
    }
    return localStringBuilder.toString();
  }
  
  public void calculateSignature(Long paramLong, String paramString1, String paramString2)
  {
    paramLong = String.valueOf(paramLong) + paramString2 + userId + salt + expires + paramString1;
    paramString1 = MessageDigest.getInstance("SHA-256");
    paramString1.update(paramLong.getBytes());
    signature = bytesToHexString(paramString1.digest());
  }
  
  public Long getExpires()
  {
    return Long.valueOf(expires);
  }
  
  public String getMac()
  {
    return mac;
  }
  
  public String getSalt()
  {
    return salt;
  }
  
  public String getSignature()
  {
    return signature;
  }
  
  public String getToken()
  {
    return token;
  }
  
  public Long getUserId()
  {
    return Long.valueOf(userId);
  }
  
  public void setExpires(Long paramLong)
  {
    expires = paramLong.longValue();
  }
  
  public void setMac(String paramString)
  {
    mac = paramString;
  }
  
  public void setSalt(String paramString)
  {
    salt = paramString;
  }
  
  public void setSignature(String paramString)
  {
    signature = paramString;
  }
  
  public void setToken(String paramString)
  {
    token = paramString;
  }
  
  public void setUserId(Long paramLong)
  {
    userId = paramLong.longValue();
  }
  
  public JSONObject toJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("userId", userId);
    localJSONObject.put("expires", expires);
    localJSONObject.put("salt", salt);
    localJSONObject.put("signature", signature);
    return localJSONObject;
  }
  
  public String toString()
  {
    return "AuthDetails{userId=" + userId + ", expires=" + expires + ", salt='" + salt + '\'' + ", signature='" + signature + '\'' + '}';
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.AuthDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */