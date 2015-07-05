.class public interface abstract Lcom/brightcove/player/event/EventEmitter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract disable()V
.end method

.method public abstract emit(Ljava/lang/String;)V
.end method

.method public abstract emit(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enable()V
.end method

.method public abstract off()V
.end method

.method public abstract off(Ljava/lang/String;I)V
.end method

.method public abstract on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
.end method

.method public abstract once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
.end method

.method public abstract request(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V
.end method

.method public abstract request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/brightcove/player/event/EventListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract respond(Lcom/brightcove/player/event/Event;)V
.end method

.method public abstract respond(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
