.class public abstract Lcom/brightcove/player/edge/VideoListener;
.super Lcom/brightcove/player/edge/ErrorListener;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/brightcove/player/edge/ErrorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onVideo(Lcom/brightcove/player/model/Video;)V
.end method
