package com.addlive.impl;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class ServiceRequest
{
  private static final String gIdPropertyName = "id";
  private static final String gMethodPropertyName = "methodName";
  private static final String gParamsPropertyName = "params";
  private JSONArray params;
  private JSONObject storage;
  
  public ServiceRequest(String paramString)
  {
    try
    {
      storage = new JSONObject();
      storage.put("methodName", paramString);
      params = new JSONArray();
      return;
    }
    catch (JSONException paramString)
    {
      Log.e("AddLive_SDK", "Failed to create service request json", paramString);
    }
  }
  
  public String getMethod()
  {
    try
    {
      String str = storage.getString("methodName");
      return str;
    }
    catch (JSONException localJSONException) {}
    return "undefined";
  }
  
  public JSONArray getParams()
  {
    return params;
  }
  
  public void setId(String paramString)
  {
    try
    {
      storage.put("id", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      Log.e("AddLive_SDK", "Failed to create service request json", paramString);
    }
  }
  
  public String toJSON()
  {
    storage.put("params", params);
    return storage.toString();
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ServiceRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */