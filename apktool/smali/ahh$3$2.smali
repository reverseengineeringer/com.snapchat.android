.class final Lahh$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh$3;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/platform/InitStateChangedEvent;

.field final synthetic b:Lahh$3;


# direct methods
.method constructor <init>(Lahh$3;Lcom/addlive/platform/InitStateChangedEvent;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lahh$3$2;->b:Lahh$3;

    iput-object p2, p0, Lahh$3$2;->a:Lcom/addlive/platform/InitStateChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lahh$3$2;->b:Lahh$3;

    iget-object v0, v0, Lahh$3;->b:Lcom/addlive/platform/PlatformInitListener;

    iget-object v1, p0, Lahh$3$2;->a:Lcom/addlive/platform/InitStateChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitStateChanged(Lcom/addlive/platform/InitStateChangedEvent;)V

    .line 185
    return-void
.end method
