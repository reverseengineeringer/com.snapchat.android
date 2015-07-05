.class public Lcom/brightcove/player/captioning/LoadCaptionsService;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {}
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {}
.end annotation


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;)V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/brightcove/player/captioning/LoadCaptionsService;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 37
    if-nez p1, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide an EventEmitter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public loadCaptions(Ljava/net/URI;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must provide a valid URI"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    if-eqz p1, :cond_1

    .line 56
    new-instance v0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    iget-object v1, p0, Lcom/brightcove/player/captioning/LoadCaptionsService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    sget-object v2, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->TTML:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;)V

    .line 57
    new-array v1, v4, [Ljava/net/URI;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    new-instance v0, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;

    iget-object v1, p0, Lcom/brightcove/player/captioning/LoadCaptionsService;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    sget-object v2, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;->WEBVTT:Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;

    invoke-direct {v0, v1, v2}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask$CaptionsType;)V

    .line 59
    new-array v1, v4, [Ljava/net/URI;

    aput-object p1, v1, v3

    invoke-virtual {v0, v1}, Lcom/brightcove/player/captioning/tasks/LoadCaptionsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 61
    :cond_1
    return-void
.end method
