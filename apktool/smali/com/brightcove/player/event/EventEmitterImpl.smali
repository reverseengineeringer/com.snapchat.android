.class public Lcom/brightcove/player/event/EventEmitterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventEmitter;


# static fields
.field private static final EVENT_KEY:Ljava/lang/String; = "event"

.field private static final PROPERTY_PREFIX_KEY:Ljava/lang/String; = "prop_"


# instance fields
.field private TAG:Ljava/lang/String;

.field protected handler:Landroid/os/Handler;

.field private isEnabled:Z

.field private listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/brightcove/player/event/InvocationContainer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, "EventEmitterImpl"

    iput-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->TAG:Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/brightcove/player/event/EventEmitterImpl$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/event/EventEmitterImpl$1;-><init>(Lcom/brightcove/player/event/EventEmitterImpl;)V

    iput-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->handler:Landroid/os/Handler;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->listeners:Ljava/util/Map;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/event/EventEmitterImpl;Ljava/util/Map;Lcom/brightcove/player/event/Event;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->unpackProperties(Ljava/util/Map;Lcom/brightcove/player/event/Event;)V

    return-void
.end method

.method static synthetic access$100(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->invokeListenersForEventType(Lcom/brightcove/player/event/Event;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/brightcove/player/event/EventEmitterImpl;->invokeResponseListener(Lcom/brightcove/player/event/Event;)V

    return-void
.end method

.method static synthetic access$300(Lcom/brightcove/player/event/EventEmitterImpl;Lcom/brightcove/player/event/Event;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/brightcove/player/event/EventEmitterImpl;->invokeListenersForEvent(Lcom/brightcove/player/event/Event;)V

    return-void
.end method

.method private getInvocations(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/brightcove/player/event/InvocationContainer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 327
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 333
    :goto_0
    return-object v0

    .line 330
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/brightcove/player/event/EventEmitterImpl;->listeners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private invokeListenersForEvent(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 404
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->invokeListenersForEventType(Lcom/brightcove/player/event/Event;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private invokeListenersForEventType(Lcom/brightcove/player/event/Event;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 417
    invoke-direct {p0, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 419
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 422
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/InvocationContainer;

    .line 430
    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->isDefault()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->isStopped()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->isDefault()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->isPrevented()Z

    move-result v3

    if-nez v3, :cond_0

    .line 433
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->getListener()Lcom/brightcove/player/event/EventListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/brightcove/player/event/EventListener;->processEvent(Lcom/brightcove/player/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    :goto_1
    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->shouldRemove()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    :cond_3
    return-void

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private invokeResponseListener(Lcom/brightcove/player/event/Event;)V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 383
    const-string v1, "requestToken"

    invoke-virtual {p1, v1}, Lcom/brightcove/player/event/Event;->getIntegerProperty(Ljava/lang/String;)I

    move-result v1

    .line 384
    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocationContainerByToken(Ljava/util/List;I)Lcom/brightcove/player/event/InvocationContainer;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_0

    .line 387
    :try_start_0
    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->getListener()Lcom/brightcove/player/event/EventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/brightcove/player/event/EventListener;->processEvent(Lcom/brightcove/player/event/Event;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/brightcove/player/event/EventEmitterImpl;->off(Ljava/lang/String;I)V

    .line 394
    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;Z)I
    .locals 5

    .prologue
    .line 96
    const/4 v0, -0x1

    .line 98
    iget-boolean v1, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    if-eqz v1, :cond_2

    .line 99
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 100
    invoke-direct {p0, p1}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 101
    new-instance v3, Lcom/brightcove/player/event/InvocationContainer;

    invoke-direct {v3, p2, p3}, Lcom/brightcove/player/event/InvocationContainer;-><init>(Lcom/brightcove/player/event/EventListener;Z)V

    .line 103
    invoke-virtual {v3}, Lcom/brightcove/player/event/InvocationContainer;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/InvocationContainer;

    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->isDefault()Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/brightcove/player/event/InvocationContainer;->getToken()I

    move-result v0

    .line 123
    :cond_2
    return v0

    .line 108
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_1

    .line 109
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/InvocationContainer;

    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 118
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid input provided to on: evenType = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eventTypeAndListenerRequired"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private packProperties(Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prop_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    :cond_0
    return-void
.end method

.method private unpackProperties(Ljava/util/Map;Lcom/brightcove/player/event/Event;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/brightcove/player/event/Event;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 312
    const-string v2, "prop_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p2, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 316
    :cond_1
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 1

    .prologue
    .line 456
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    .line 457
    return-void
.end method

.method public emit(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 177
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 178
    return-void
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
    .line 190
    iget-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    if-eqz v0, :cond_1

    .line 191
    if-eqz p1, :cond_2

    .line 192
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 193
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    const-string v2, "event"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    invoke-direct {p0, p2, v1}, Lcom/brightcove/player/event/EventEmitterImpl;->packProperties(Ljava/util/Map;Ljava/util/Map;)V

    .line 199
    :cond_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcom/brightcove/player/event/EventEmitterImpl;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 206
    :cond_1
    return-void

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalidEmit"

    invoke-static {v1}, Lcom/brightcove/player/util/ErrorUtil;->getMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enable()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    .line 450
    return-void
.end method

.method protected getInvocationContainerByToken(Ljava/util/List;I)Lcom/brightcove/player/event/InvocationContainer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/event/InvocationContainer;",
            ">;I)",
            "Lcom/brightcove/player/event/InvocationContainer;"
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0, p1, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocationContainerPositionByToken(Ljava/util/List;I)I

    move-result v1

    .line 367
    const/4 v0, 0x0

    .line 368
    if-ltz v1, :cond_0

    .line 369
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/InvocationContainer;

    .line 371
    :cond_0
    return-object v0
.end method

.method protected getInvocationContainerPositionByToken(Ljava/util/List;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/brightcove/player/event/InvocationContainer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 345
    const/4 v2, -0x1

    .line 346
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 347
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 348
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/event/InvocationContainer;

    invoke-virtual {v0}, Lcom/brightcove/player/event/InvocationContainer;->getToken()I

    move-result v0

    if-ne v0, p2, :cond_0

    move v0, v1

    .line 353
    :goto_1
    return v0

    .line 347
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public off()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 145
    return-void
.end method

.method public off(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 158
    if-ltz p2, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocations(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->getInvocationContainerPositionByToken(Ljava/util/List;I)I

    move-result v1

    .line 161
    if-ltz v1, :cond_0

    .line 162
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 165
    :cond_0
    return-void
.end method

.method public on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;Z)I

    move-result v0

    return v0
.end method

.method public once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;Z)I

    move-result v0

    return v0
.end method

.method public request(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/event/EventEmitterImpl;->request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V

    .line 225
    return-void
.end method

.method public request(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/event/EventListener;)V
    .locals 4
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
    .line 237
    iget-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "response"

    invoke-virtual {p0, v0, p3}, Lcom/brightcove/player/event/EventEmitterImpl;->once(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v2

    .line 239
    if-nez p2, :cond_1

    .line 240
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 243
    :goto_0
    :try_start_0
    const-string v1, "requestToken"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    :cond_0
    return-void

    .line 245
    :catch_0
    move-exception v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 246
    const-string v0, "requestToken"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_0
.end method

.method public respond(Lcom/brightcove/player/event/Event;)V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lcom/brightcove/player/event/EventEmitterImpl;->respond(Ljava/util/Map;)V

    .line 282
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
    .line 263
    iget-boolean v0, p0, Lcom/brightcove/player/event/EventEmitterImpl;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "requestToken"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "response"

    invoke-virtual {p0, v0, p1}, Lcom/brightcove/player/event/EventEmitterImpl;->emit(Ljava/lang/String;Ljava/util/Map;)V

    .line 269
    :cond_0
    return-void
.end method
