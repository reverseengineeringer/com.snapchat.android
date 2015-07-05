package com.brightcove.player.event;

import com.brightcove.player.util.ErrorUtil;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class RegisteringEventEmitter
  implements EventEmitter
{
  private static String ANNOTATION_EVENTS_PROPERTY = "events";
  private String componentType;
  private boolean debug = false;
  private List<String> emit;
  private EventEmitter emitter;
  private List<String> listenFor;
  
  public RegisteringEventEmitter(EventEmitter paramEventEmitter, Class<? extends Component> paramClass)
  {
    if ((paramEventEmitter == null) || (paramClass == null)) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("eventEmitterAndComponentRequired"));
    }
    emitter = paramEventEmitter;
    componentType = paramClass.getSimpleName();
    emit = convertEventsFromAnnotation(paramClass, Emits.class);
    listenFor = convertEventsFromAnnotation(paramClass, ListensFor.class);
    paramEventEmitter.on("debug", new EventListener()
    {
      public void processEvent(Event paramAnonymousEvent)
      {
        RegisteringEventEmitter.access$002(RegisteringEventEmitter.this, Boolean.parseBoolean(properties.get("debug").toString()));
      }
    });
  }
  
  private Map<String, Object> addEmitterIfDebugging(Map<String, Object> paramMap)
  {
    if (!debug) {
      return paramMap;
    }
    HashMap localHashMap = new HashMap(paramMap.size() + 1);
    localHashMap.putAll(paramMap);
    localHashMap.put("emitter", componentType);
    return localHashMap;
  }
  
  public static RegisteringEventEmitter build(EventEmitter paramEventEmitter, Class<? extends Component> paramClass)
  {
    EventEmitter localEventEmitter = paramEventEmitter;
    if ((paramEventEmitter instanceof RegisteringEventEmitter)) {
      localEventEmitter = ((RegisteringEventEmitter)paramEventEmitter).getRootEmitter();
    }
    return new RegisteringEventEmitter(localEventEmitter, paramClass);
  }
  
  private List<Annotation> getAnnotations(Class<? extends Object> paramClass, Class<? extends Annotation> paramClass1)
  {
    ArrayList localArrayList = new ArrayList();
    Class localClass = paramClass.getSuperclass();
    if (localClass != null) {
      localArrayList.addAll(getAnnotations(localClass, paramClass1));
    }
    paramClass = paramClass.getAnnotation(paramClass1);
    if (paramClass != null) {
      localArrayList.add(paramClass);
    }
    return localArrayList;
  }
  
  protected List<String> convertEventsFromAnnotation(Class<? extends Component> paramClass, Class<? extends Annotation> paramClass1)
  {
    ArrayList localArrayList = new ArrayList();
    paramClass = getAnnotations(paramClass, paramClass1);
    Iterator localIterator;
    if ((paramClass != null) && (paramClass.size() > 0))
    {
      localIterator = paramClass.iterator();
      paramClass = new String[0];
    }
    while (localIterator.hasNext())
    {
      Object localObject = (Annotation)localIterator.next();
      try
      {
        localObject = (String[])localObject.getClass().getMethod(ANNOTATION_EVENTS_PROPERTY, new Class[0]).invoke(localObject, new Object[0]);
        paramClass = (Class<? extends Component>)localObject;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          new StringBuilder("Error attempting to invoke ").append(ANNOTATION_EVENTS_PROPERTY).append(" on annotation ").append(paramClass1.getName()).append(": ").append(localException.getMessage());
        }
      }
      localArrayList.addAll(Arrays.asList(paramClass));
      continue;
      throw new RuntimeException(String.format(ErrorUtil.getMessage("annotationRequired"), new Object[] { paramClass1.getName() }));
    }
    return localArrayList;
  }
  
  public void disable()
  {
    emitter.disable();
  }
  
  public void emit(String paramString)
  {
    if (debug) {}
    for (Map localMap = Collections.singletonMap("emitter", componentType); emit.contains(paramString); localMap = Collections.emptyMap())
    {
      emitter.emit(paramString, localMap);
      return;
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] { paramString }));
  }
  
  public void emit(String paramString, Map<String, Object> paramMap)
  {
    if (emit.contains(paramString))
    {
      emitter.emit(paramString, addEmitterIfDebugging(paramMap));
      return;
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] { paramString }));
  }
  
  public void enable()
  {
    emitter.enable();
  }
  
  public List<String> getAllowedEmittedEvents()
  {
    return emit;
  }
  
  public List<String> getAllowedListenEvents()
  {
    return listenFor;
  }
  
  public EventEmitter getRootEmitter()
  {
    return emitter;
  }
  
  public void off()
  {
    emitter.off();
  }
  
  public void off(String paramString, int paramInt)
  {
    emitter.off(paramString, paramInt);
  }
  
  public int on(String paramString, EventListener paramEventListener)
  {
    if (listenFor.contains(paramString)) {
      return emitter.on(paramString, paramEventListener);
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToListen"), new Object[] { paramString }));
  }
  
  public int once(String paramString, EventListener paramEventListener)
  {
    if (listenFor.contains(paramString)) {
      return emitter.once(paramString, paramEventListener);
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToListen"), new Object[] { paramString }));
  }
  
  public void request(String paramString, EventListener paramEventListener)
  {
    if (emit.contains(paramString))
    {
      emitter.request(paramString, paramEventListener);
      return;
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] { paramString }));
  }
  
  public void request(String paramString, Map<String, Object> paramMap, EventListener paramEventListener)
  {
    if (emit.contains(paramString))
    {
      emitter.request(paramString, paramMap, paramEventListener);
      return;
    }
    throw new IllegalArgumentException(String.format(ErrorUtil.getMessage("notPermittedToEmit"), new Object[] { paramString }));
  }
  
  public void respond(Event paramEvent)
  {
    emitter.respond(paramEvent);
  }
  
  public void respond(Map<String, Object> paramMap)
  {
    emitter.respond(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.RegisteringEventEmitter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */