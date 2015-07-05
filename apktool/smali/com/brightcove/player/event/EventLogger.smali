.class public Lcom/brightcove/player/event/EventLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_TAG:Ljava/lang/String; = "EventLogger"


# instance fields
.field private currentListenerToken:I

.field private emitter:Lcom/brightcove/player/event/EventEmitter;

.field private excludeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private genericListener:Lcom/brightcove/player/event/EventListener;

.field private tag:Ljava/lang/String;

.field private verbose:Z


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Z)V
    .locals 1

    .prologue
    .line 39
    const-string v0, "EventLogger"

    invoke-direct {p0, p1, p2, v0}, Lcom/brightcove/player/event/EventLogger;-><init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;ZLjava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/event/EventLogger;->currentListenerToken:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    .line 43
    iput-object p1, p0, Lcom/brightcove/player/event/EventLogger;->emitter:Lcom/brightcove/player/event/EventEmitter;

    .line 44
    iput-boolean p2, p0, Lcom/brightcove/player/event/EventLogger;->verbose:Z

    .line 45
    iput-object p3, p0, Lcom/brightcove/player/event/EventLogger;->tag:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    const-string v1, "bufferedUpdate"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    const-string v1, "progress"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {p0}, Lcom/brightcove/player/event/EventLogger;->start()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/brightcove/player/event/EventLogger;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/brightcove/player/event/EventLogger;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/brightcove/player/event/EventLogger;->verbose:Z

    return v0
.end method

.method static synthetic access$200(Lcom/brightcove/player/event/EventLogger;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->tag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addExclude(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-void
.end method

.method public clearExcludes()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 110
    return-void
.end method

.method public removeExclude(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->excludeList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    return-void
.end method

.method public setVerbose(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/brightcove/player/event/EventLogger;->verbose:Z

    .line 53
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/brightcove/player/event/EventLogger;->stop()V

    .line 58
    new-instance v0, Lcom/brightcove/player/event/EventLogger$1;

    invoke-direct {v0, p0}, Lcom/brightcove/player/event/EventLogger$1;-><init>(Lcom/brightcove/player/event/EventLogger;)V

    iput-object v0, p0, Lcom/brightcove/player/event/EventLogger;->genericListener:Lcom/brightcove/player/event/EventListener;

    .line 88
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->emitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "*"

    iget-object v2, p0, Lcom/brightcove/player/event/EventLogger;->genericListener:Lcom/brightcove/player/event/EventListener;

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->on(Ljava/lang/String;Lcom/brightcove/player/event/EventListener;)I

    move-result v0

    iput v0, p0, Lcom/brightcove/player/event/EventLogger;->currentListenerToken:I

    .line 89
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 92
    iget v0, p0, Lcom/brightcove/player/event/EventLogger;->currentListenerToken:I

    if-lez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/brightcove/player/event/EventLogger;->emitter:Lcom/brightcove/player/event/EventEmitter;

    const-string v1, "*"

    iget v2, p0, Lcom/brightcove/player/event/EventLogger;->currentListenerToken:I

    invoke-interface {v0, v1, v2}, Lcom/brightcove/player/event/EventEmitter;->off(Ljava/lang/String;I)V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/brightcove/player/event/EventLogger;->currentListenerToken:I

    .line 96
    :cond_0
    return-void
.end method
