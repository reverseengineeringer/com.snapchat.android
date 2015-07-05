package com.addlive.platform;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import com.addlive.Constants;
import com.addlive.impl.ADLNativeWrapper;
import com.addlive.impl.ADLNativeWrapperImpl;
import com.addlive.impl.ADLServiceImpl;
import com.addlive.impl.DeviceCompatibilityTest;
import com.addlive.impl.Log;
import com.addlive.service.AddLiveService;
import com.addlive.service.Responder;
import com.addlive.service.ResponderAdapter;

public class ADL
{
  private static final String CONNECTIVITY_TYPE_KEY = "global.service.connectivityType";
  private static final String DEVICE_NAME_KEY = "global.service.userDevice";
  private static final String ENDPOINT_RESOLVER_KEY = "global.service.streamer.endpointResolver";
  private static volatile InitState INIT_STATE = InitState.NOT_INITIALIZED;
  private static volatile ADL INSTANCE;
  private static Handler taskHandler;
  private static HandlerThread taskThread;
  private Context context;
  private PlatformInitListener initListener;
  private PlatformInitOptions initOptions;
  private ADLNativeWrapper nativePlatform;
  private Responder<Void> nullResponder = new ResponderAdapter();
  private volatile AddLiveService service;
  
  public static DeviceSupportLevel assesDeviceCompatibility()
  {
    return DeviceCompatibilityTest.assessCompatibility();
  }
  
  private void cleanupAfterInitError()
  {
    INIT_STATE = InitState.ERROR;
    if (nativePlatform != null) {
      nativePlatform.releasePlatform();
    }
    releaseADLResources();
  }
  
  private void cleanupAfterInitSuccess()
  {
    initOptions = null;
    initListener = null;
  }
  
  public static InitState getInitState()
  {
    return INIT_STATE;
  }
  
  public static AddLiveService getService()
  {
    if (INSTANCE == null) {
      throw new IllegalStateException("ADL not initialized. Initialize the platform first");
    }
    return INSTANCEservice;
  }
  
  public static void init(PlatformInitListener paramPlatformInitListener, PlatformInitOptions paramPlatformInitOptions, Context paramContext)
  {
    try
    {
      if (INSTANCE == null)
      {
        INSTANCE = new ADL();
        HandlerThread localHandlerThread = new HandlerThread("TaskHandler");
        taskThread = localHandlerThread;
        localHandlerThread.start();
        taskHandler = new Handler(taskThread.getLooper());
      }
      INSTANCE.initPlatform(paramPlatformInitListener, paramPlatformInitOptions, paramContext);
      return;
    }
    finally {}
  }
  
  private void initCam()
  {
    nativePlatform.initCamOnNative();
  }
  
  private void initPlatform(final PlatformInitListener paramPlatformInitListener, final PlatformInitOptions paramPlatformInitOptions, final Context paramContext)
  {
    taskHandler.post(new Runnable()
    {
      public void run()
      {
        Log.i("AddLive_SDK", "[App ----- SDK] Init");
        if (nativePlatform != null)
        {
          paramPlatformInitListener.onInitStateChanged(new InitStateChangedEvent(1006, "Platform already initialized", InitState.ERROR));
          return;
        }
        if (paramContext == null)
        {
          paramPlatformInitListener.onInitStateChanged(new InitStateChangedEvent(1002, "Context parameter was null, platform not initialized", InitState.ERROR));
          return;
        }
        ADL.access$102(InitState.INITIALIZING);
        Log.setEnabled(paramPlatformInitOptions.isConsoleLoggingEnabled());
        try
        {
          ADL.access$202(ADL.this, paramContext);
          ADL.access$302(ADL.this, paramPlatformInitOptions);
          ADL.access$402(ADL.this, paramPlatformInitListener);
          ADL.access$002(ADL.this, new ADLNativeWrapperImpl(paramContext, paramPlatformInitOptions, ADL.taskHandler));
          i = nativePlatform.initPlatform();
          if (i == 0)
          {
            ADL.access$602(ADL.this, new ADLServiceImpl(nativePlatform, paramContext, paramPlatformInitOptions.useExternalVideoInput()));
            ADL.this.validateVersion();
            return;
          }
        }
        catch (UnsatisfiedLinkError localUnsatisfiedLinkError)
        {
          int i;
          initListener.onInitStateChanged(new InitStateChangedEvent(1009, "Failed to load the AddLive native components ", InitState.ERROR));
          ADL.this.cleanupAfterInitError();
          return;
          paramPlatformInitListener.onInitStateChanged(new InitStateChangedEvent(i, "", InitState.ERROR));
          ADL.this.cleanupAfterInitError();
          return;
        }
        catch (Exception localException)
        {
          Log.e("AddLive_SDK", "Got an unhandled exception setting up AddLive", localException);
          initListener.onInitStateChanged(new InitStateChangedEvent(1006, "Failed to initialize AddLive due to an internal error: " + localException.getMessage(), InitState.ERROR));
          ADL.this.cleanupAfterInitError();
        }
      }
    });
  }
  
  public static Responder<Void> r()
  {
    if (INSTANCE == null) {
      throw new IllegalStateException("ADL not initialized. Initialize the platform first");
    }
    return INSTANCEnullResponder;
  }
  
  /* Error */
  public static void release()
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: getstatic 142	com/addlive/platform/ADL:INSTANCE	Lcom/addlive/platform/ADL;
    //   6: astore_0
    //   7: aload_0
    //   8: ifnonnull +7 -> 15
    //   11: ldc 2
    //   13: monitorexit
    //   14: return
    //   15: getstatic 142	com/addlive/platform/ADL:INSTANCE	Lcom/addlive/platform/ADL;
    //   18: invokespecial 191	com/addlive/platform/ADL:releasePlatform	()V
    //   21: goto -10 -> 11
    //   24: astore_0
    //   25: ldc 2
    //   27: monitorexit
    //   28: aload_0
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   6	2	0	localADL	ADL
    //   24	5	0	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   3	7	24	finally
    //   15	21	24	finally
  }
  
  private void releaseADLResources()
  {
    nativePlatform = null;
    service = null;
    initOptions = null;
    initListener = null;
    context = null;
  }
  
  private void releasePlatform()
  {
    taskHandler.post(new Runnable()
    {
      public void run()
      {
        Log.i("AddLive_SDK", "[App ----- SDK] Release");
        if ((ADL.INIT_STATE == InitState.NOT_INITIALIZED) || (ADL.INIT_STATE == InitState.ERROR))
        {
          Log.w("AddLive_SDK", "Trying to release already released platform");
          return;
        }
        ADL.access$102(InitState.RELEASING);
        ((ADLServiceImpl)service).release();
        nativePlatform.releasePlatform();
        ADL.this.releaseADLResources();
        ADL.access$102(InitState.NOT_INITIALIZED);
      }
    });
  }
  
  private void setApplicationIdMaybe()
  {
    initCam();
    if (initOptions.getApplicationId() == null)
    {
      initListener.onInitStateChanged(new InitStateChangedEvent(1002, "Application id property not given", InitState.ERROR));
      cleanupAfterInitError();
      return;
    }
    Responder local3 = new Responder()
    {
      public void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        initListener.onInitStateChanged(new InitStateChangedEvent(paramAnonymousInt, "Failed to set application id due to: " + paramAnonymousString, InitState.ERROR));
        ADL.this.cleanupAfterInitError();
      }
      
      public void resultHandler(Void paramAnonymousVoid)
      {
        ADL.this.setStreamerEndpointResolvers();
      }
    };
    ((ADLServiceImpl)service).setApplicationId(local3, initOptions.getApplicationId());
  }
  
  private void setStreamerEndpointResolvers()
  {
    Responder local4 = new Responder()
    {
      public void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        initListener.onInitStateChanged(new InitStateChangedEvent(paramAnonymousInt, "Failed to set application id due to: " + paramAnonymousString, InitState.ERROR));
        ADL.this.cleanupAfterInitError();
      }
      
      public void resultHandler(Void paramAnonymousVoid)
      {
        ADL.access$102(InitState.INITIALIZED);
        initListener.onInitStateChanged(new InitStateChangedEvent(0, "", InitState.INITIALIZED));
        ADL.this.cleanupAfterInitSuccess();
      }
    };
    service.setProperty(r(), "global.service.userDevice", Build.MODEL + "|" + Build.VERSION.RELEASE);
    String str = initOptions.getStreamerEndpointResolver();
    if (str == null)
    {
      local4.resultHandler(null);
      return;
    }
    service.setProperty(local4, "global.service.streamer.endpointResolver", str);
  }
  
  private void updateNetworkConnectivity(Context paramContext)
  {
    if (paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") != 0)
    {
      Log.i("AddLive_SDK", "We don't have permission to check network state. Type of network used will remain unknown");
      return;
    }
    paramContext = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    Object localObject;
    if (paramContext != null)
    {
      localObject = paramContext.getTypeName();
      paramContext = paramContext.getSubtypeName();
    }
    for (;;)
    {
      Log.i("AddLive_SDK", "Updating connectivity info: " + (String)localObject + " / " + paramContext);
      AddLiveService localAddLiveService = service;
      Responder localResponder = r();
      if ("WIFI".equals(localObject)) {}
      for (;;)
      {
        localAddLiveService.setProperty(localResponder, "global.service.connectivityType", (String)localObject);
        return;
        localObject = paramContext;
      }
      paramContext = "Unknown";
      localObject = "Not-Connected";
    }
  }
  
  private void validateVersion()
  {
    service.getVersion(new Responder()
    {
      public void errHandler(int paramAnonymousInt, String paramAnonymousString)
      {
        initListener.onInitStateChanged(new InitStateChangedEvent(1006, "Failed to validate version of the native component due to an internal error.", InitState.ERROR));
        ADL.access$402(ADL.this, null);
      }
      
      public void resultHandler(String paramAnonymousString)
      {
        if (paramAnonymousString.equals(Constants.SDK_VERSION()))
        {
          ADL.this.setApplicationIdMaybe();
          return;
        }
        initListener.onInitStateChanged(new InitStateChangedEvent(1006, "The version of the native component mismatch the Java bindings and thus the platform cannot be used. Please verify your libraries. This error should never reach the production environments. Java bindings version: " + Constants.SDK_VERSION() + " native component version: " + paramAnonymousString, InitState.ERROR));
        ADL.access$402(ADL.this, null);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.addlive.platform.ADL
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */