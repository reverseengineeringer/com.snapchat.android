package com.brightcove.player.event;

@Emits(events={"sample", "event", "list"})
@ListensFor(events={"play", "stop"})
public abstract interface Component {}

/* Location:
 * Qualified Name:     com.brightcove.player.event.Component
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */