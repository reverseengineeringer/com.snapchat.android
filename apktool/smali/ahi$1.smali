.class final Lahi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahi;->onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;

.field final synthetic b:Lahi;


# direct methods
.method constructor <init>(Lahi;Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lahi$1;->b:Lahi;

    iput-object p2, p0, Lahi$1;->a:Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lahi$1;->b:Lahi;

    invoke-static {v0}, Lahi;->a(Lahi;)Lcom/addlive/service/listener/AddLiveServiceListener;

    move-result-object v0

    iget-object v1, p0, Lahi$1;->a:Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/service/listener/AddLiveServiceListener;->onVideoFrameSizeChanged(Lcom/addlive/service/listener/VideoFrameSizeChangedEvent;)V

    .line 36
    return-void
.end method
