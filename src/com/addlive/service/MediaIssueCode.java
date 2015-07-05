package com.addlive.service;

public enum MediaIssueCode
{
  CONNECTION_FROZEN,  CPU_LOAD_HIGH,  EXTERNAL_CPU_LOAD_HIGH,  NETWORK_PROBLEM,  UNKNOWN;
  
  private MediaIssueCode() {}
  
  public static MediaIssueCode _fromInt(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return UNKNOWN;
    case 1: 
      return CONNECTION_FROZEN;
    case 2: 
      return CPU_LOAD_HIGH;
    case 3: 
      return EXTERNAL_CPU_LOAD_HIGH;
    }
    return NETWORK_PROBLEM;
  }
}

/* Location:
 * Qualified Name:     com.addlive.service.MediaIssueCode
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */