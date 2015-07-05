.class final Lahh$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lahh$3;->onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/platform/InitProgressChangedEvent;

.field final synthetic b:Lahh$3;


# direct methods
.method constructor <init>(Lahh$3;Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lahh$3$1;->b:Lahh$3;

    iput-object p2, p0, Lahh$3$1;->a:Lcom/addlive/platform/InitProgressChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lahh$3$1;->b:Lahh$3;

    iget-object v0, v0, Lahh$3;->b:Lcom/addlive/platform/PlatformInitListener;

    iget-object v1, p0, Lahh$3$1;->a:Lcom/addlive/platform/InitProgressChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V

    .line 176
    return-void
.end method
