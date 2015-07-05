package com.addlive.impl;

import org.json.JSONException;
import org.json.JSONObject;

public class ServiceResponse
{
  private static final String gErrorCodePropertyName = "errorCode";
  private static final String gErrorMessagePropertyName = "errorMessage";
  private static final String gIdPropertyName = "id";
  private static final String gResultPropertyName = "result";
  private static final String gStatusPropertyName = "status";
  private int errorCode;
  private String errorMessage;
  private String id;
  private Object result;
  private boolean status;
  
  public ServiceResponse() {}
  
  public ServiceResponse(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      id = localJSONObject.getString("id");
      status = localJSONObject.getBoolean("status");
      errorCode = localJSONObject.getInt("errorCode");
      errorMessage = localJSONObject.getString("errorMessage");
      result = localJSONObject.get("result");
      return;
    }
    catch (JSONException localJSONException)
    {
      Log.e("AddLive_SDK", "Failed to parse JSON response", localJSONException);
      status = false;
      errorCode = 1006;
      errorMessage = ("Failed to parse AddLiveService response. This is caused by an SDK error, please report it to AddLive. Faulty input:" + paramString);
    }
  }
  
  public int getErrorCode()
  {
    return errorCode;
  }
  
  public String getErrorMessage()
  {
    return errorMessage;
  }
  
  public String getId()
  {
    return id;
  }
  
  public Object getResult()
  {
    return result;
  }
  
  public boolean getStatus()
  {
    return status;
  }
  
  public void setErrorCode(int paramInt)
  {
    errorCode = paramInt;
  }
  
  public void setErrorMessage(String paramString)
  {
    errorMessage = paramString;
  }
  
  public void setId(String paramString)
  {
    id = paramString;
  }
  
  public void setResult(Object paramObject)
  {
    result = paramObject;
  }
  
  public void setStatus(boolean paramBoolean)
  {
    status = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ServiceResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */