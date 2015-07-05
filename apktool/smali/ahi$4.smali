.class final Lahi$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahi;->onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/service/listener/UserStateChangedEvent;

.field final synthetic b:Lahi;


# direct methods
.method constructor <init>(Lahi;Lcom/addlive/service/listener/UserStateChangedEvent;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lahi$4;->b:Lahi;

    iput-object p2, p0, Lahi$4;->a:Lcom/addlive/service/listener/UserStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lahi$4;->b:Lahi;

    invoke-static {v0}, Lahi;->a(Lahi;)Lcom/addlive/service/listener/AddLiveServiceListener;

    move-result-object v0

    iget-object v1, p0, Lahi$4;->a:Lcom/addlive/service/listener/UserStateChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/service/listener/AddLiveServiceListener;->onUserEvent(Lcom/addlive/service/listener/UserStateChangedEvent;)V

    .line 66
    return-void
.end method
