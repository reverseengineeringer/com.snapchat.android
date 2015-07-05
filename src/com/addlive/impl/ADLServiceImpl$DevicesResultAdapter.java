package com.addlive.impl;

import com.addlive.service.Device;
import com.addlive.service.Responder;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

class ADLServiceImpl$DevicesResultAdapter
  extends BaseResultAdapter<List<Device>>
{
  ADLServiceImpl$DevicesResultAdapter(Responder<List<Device>> paramResponder)
  {
    super(localResponder);
  }
  
  void handleSuccess(Object paramObject)
  {
    if (responder == null) {
      return;
    }
    paramObject = (JSONObject)paramObject;
    Iterator localIterator = ((JSONObject)paramObject).keys();
    LinkedList localLinkedList = new LinkedList();
    try
    {
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localLinkedList.add(new Device(str, ((JSONObject)paramObject).getString(str)));
      }
      responder.resultHandler(localLinkedList);
    }
    catch (JSONException paramObject)
    {
      responder.errHandler(1006, "Failed to parse devices list");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.DevicesResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */