.class public Lcom/brightcove/player/event/RegisteringEventEmitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventEmitter;


# static fields
.field private static ANNOTATION_EVENTS_PROPERTY:Ljava/lang/String;


# instance fields
.field private componentType:Ljava/lang/String;

.field private debug:Z

.field private emit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private emitter:Lcom/brightcove/player/event/EventEmitter;

.field private listenFor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "events"

    sput-object v0, Lcom/brightcove/player/event/RegisteringEventEmitter;->ANNOTATION_EVENTS_PROPERTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->debug:Z

    .line 86
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventEmitterAndComponentRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    iput-object p1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    .line 91
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->componentType:Ljava/lang/String;

    .line 92
    const-class v0, Lcom/brightcove/player/event/Emits;

    invoke-virtual {p0, p2, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->convertEventsFromAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    .line 93
    const-class v0, Lcom/brightcove/player/event/ListensFor;

    invoke-virtual {p0, p2, v0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->convertEventsFromAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->listenFor:Ljava/util/List;

    .line 95
    const-string v0, "debug"

    new-instance v1, Lcom/brightcove/player/event/RegisteringEventEmitter$1;

    invoke-direct {v1, p0}, Lcom/brightcove/player/event/RegisteringEventEmitter$1;-><init>(Lcom/brightcove/player/event/RegisteringEventEmitter;)V

    invoke-interface {p1, v0, v1}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    .line 101
    return-void
.end method

.method static synthetic access$002(Lcom/brightcove/player/event/RegisteringEventEmitter;Z)Z
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->debug:Z

    return p1
.end method

.method private addEmitterIfDebugging(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->debug:Z

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-object p1

    .line 366
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 367
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 368
    const-string v1, "emitter"

    iget-object v2, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->componentType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 369
    goto :goto_0
.end method

.method public static build(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)Lcom/brightcove/player/event/RegisteringEventEmitter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/brightcove/player/event/EventEmitter;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;)",
            "Lcom/brightcove/player/event/RegisteringEventEmitter;"
        }
    .end annotation

    .prologue
    .line 229
    instance-of v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;

    if-eqz v0, :cond_0

    .line 232
    check-cast p0, Lcom/brightcove/player/event/RegisteringEventEmitter;

    invoke-virtual {p0}, Lcom/brightcove/player/event/RegisteringEventEmitter;->getRootEmitter()Lcom/brightcove/player/event/EventEmitter;

    move-result-object p0

    .line 235
    :cond_0
    new-instance v0, Lcom/brightcove/player/event/RegisteringEventEmitter;

    invoke-direct {v0, p0, p1}, Lcom/brightcove/player/event/RegisteringEventEmitter;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    invoke-direct {p0, v1, p2}, Lcom/brightcove/player/event/RegisteringEventEmitter;->getAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 353
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 355
    if-eqz v1, :cond_1

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected convertEventsFromAnnotation(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/brightcove/player/event/Component;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 321
    new-array v0, v4, [Ljava/lang/String;

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/event/RegisteringEventEmitter;->getAnnotations(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 326
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/annotation/Annotation;

    .line 328
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Lcom/brightcove/player/event/RegisteringEventEmitter;->ANNOTATION_EVENTS_PROPERTY:Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 329
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    :goto_1
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object v1, v0

    .line 335
    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error attempting to invoke "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/brightcove/player/event/RegisteringEventEmitter;->ANNOTATION_EVENTS_PROPERTY:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on annotation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    goto :goto_1

    .line 339
    :cond_0
    const-string v0, "annotationRequired"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 340
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 337
    :cond_1
    return-object v2
.end method

.method public disable()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->disable()V

    .line 309
    return-void
.end method

.method public emit(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 184
    iget-boolean v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->debug:Z

    if-eqz v0, :cond_0

    .line 185
    const-string v0, "emitter"

    iget-object v1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->componentType:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 189
    :goto_0
    iget-object v1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v1, p1, v0}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 187
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_1
    const-string v0, "notPermittedToEmit"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public emit(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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

    .prologue
    .line 205
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-direct {p0, p2}, Lcom/brightcove/player/event/RegisteringEventEmitter;->addEmitterIfDebugging(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/brightcove/player/event/EventEmitter;->emit(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 208
    :cond_0
    const-string v0, "notPermittedToEmit"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 209
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->enable()V

    .line 302
    return-void
.end method

.method public getAllowedEmittedEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    return-object v0
.end method

.method public getAllowedListenEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->listenFor:Ljava/util/List;

    return-object v0
.end method

.method public getRootEmitter()Lcom/brightcove/player/event/EventEmitter;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    return-object v0
.end method

.method public off()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0}, Lcom/brightcove/player/event/EventEmitter;->off()V

    .line 165
    return-void
.end method

.method public off(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 175
    return-void
.end method

.method public on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->listenFor:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    return v0

    .line 135
    :cond_0
    const-string v0, "notPermittedToListen"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->listenFor:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    return v0

    .line 155
    :cond_0
    const-string v0, "notPermittedToListen"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 156
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1, p2}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V

    return-void

    .line 253
    :cond_0
    const-string v0, "notPermittedToEmit"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V
    .locals 3
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

    .prologue
    .line 269
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emit:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1, p2, p3}, Lcom/brightcove/player/event/EventEmitter;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    return-void

    .line 272
    :cond_0
    const-string v0, "notPermittedToEmit"

    invoke-static {v0}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public respond(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1}, Lcom/brightcove/player/event/EventEmitter;->respond(Lcom/brightcove/player/event/Event;)V

    .line 295
    return-void
.end method

.method public respond(Ljava/util/Map;)V
    .locals 1
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

    .prologue
    .line 284
    iget-object v0, p0, Lcom/brightcove/player/event/RegisteringEventEmitter;->emitter:Lcom/brightcove/player/event/EventEmitter;

    invoke-interface {v0, p1}, Lcom/brightcove/player/event/EventEmitter;->respond(Ljava/util/Map;)V

    .line 285
    return-void
.end method
