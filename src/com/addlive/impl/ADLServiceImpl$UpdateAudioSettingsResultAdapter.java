package com.addlive.impl;

import com.addlive.service.Responder;

class ADLServiceImpl$UpdateAudioSettingsResultAdapter
  extends BaseResultAdapter<Void>
{
  ADLServiceImpl$UpdateAudioSettingsResultAdapter(Responder<Void> paramResponder)
  {
    super(localResponder);
  }
  
  void handleSuccess(Object paramObject)
  {
    ADLServiceImpl.access$200(this$0).updateAudioSettings();
    if (responder != null) {
      responder.resultHandler(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.addlive.impl.ADLServiceImpl.UpdateAudioSettingsResultAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */