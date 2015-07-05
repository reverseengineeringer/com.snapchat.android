.class public Lcom/brightcove/player/edge/Catalog;
.super Lcom/brightcove/player/event/AbstractComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/brightcove/player/event/Emits;
    events = {
        "error"
    }
.end annotation

.annotation runtime Lcom/brightcove/player/event/ListensFor;
    events = {}
.end annotation


# static fields
.field public static final DEFAULT_EDGE_BASE_URL:Ljava/lang/String; = "https://edge.api.brightcove.com/v1/"


# instance fields
.field private account:Ljava/lang/String;

.field private baseURL:Ljava/lang/String;

.field private policy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://edge.api.brightcove.com/v1/"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/brightcove/player/edge/Catalog;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/brightcove/player/edge/Catalog;

    invoke-direct {p0, p1, v0}, Lcom/brightcove/player/event/AbstractComponent;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/Class;)V

    .line 55
    iput-object p2, p0, Lcom/brightcove/player/edge/Catalog;->account:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/brightcove/player/edge/Catalog;->policy:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/brightcove/player/edge/Catalog;->baseURL:Ljava/lang/String;

    .line 58
    return-void
.end method


# virtual methods
.method public findVideoByID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/edge/Catalog;->findVideoByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/edge/VideoListener;)V

    .line 68
    return-void
.end method

.method public findVideoByID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/edge/VideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Lcom/brightcove/player/edge/GetVideoTask;

    iget-object v1, p0, Lcom/brightcove/player/edge/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v2, p0, Lcom/brightcove/player/edge/Catalog;->baseURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/brightcove/player/edge/Catalog;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/brightcove/player/edge/Catalog;->policy:Ljava/lang/String;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/brightcove/player/edge/GetVideoTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Lcom/brightcove/player/edge/GetVideoTask;->getById(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 79
    return-void
.end method

.method public findVideoByReferenceID(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/brightcove/player/edge/Catalog;->findVideoByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/edge/VideoListener;)V

    .line 89
    return-void
.end method

.method public findVideoByReferenceID(Ljava/lang/String;Ljava/util/Map;Lcom/brightcove/player/edge/VideoListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/brightcove/player/edge/VideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/brightcove/player/edge/GetVideoTask;

    iget-object v1, p0, Lcom/brightcove/player/edge/Catalog;->eventEmitter:Lcom/brightcove/player/event/EventEmitter;

    iget-object v2, p0, Lcom/brightcove/player/edge/Catalog;->baseURL:Ljava/lang/String;

    iget-object v4, p0, Lcom/brightcove/player/edge/Catalog;->account:Ljava/lang/String;

    iget-object v5, p0, Lcom/brightcove/player/edge/Catalog;->policy:Ljava/lang/String;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/brightcove/player/edge/GetVideoTask;-><init>(Lcom/brightcove/player/event/EventEmitter;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p3}, Lcom/brightcove/player/edge/GetVideoTask;->getByReferenceId(Ljava/lang/String;Lcom/brightcove/player/edge/VideoListener;)V

    .line 101
    return-void
.end method
