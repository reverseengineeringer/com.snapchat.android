.class final Lcom/snapchat/android/livechat/AdlHelper$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlHelper$3;->onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/addlive/platform/InitProgressChangedEvent;

.field final synthetic b:Lcom/snapchat/android/livechat/AdlHelper$3;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlHelper$3;Lcom/addlive/platform/InitProgressChangedEvent;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlHelper$3$1;->b:Lcom/snapchat/android/livechat/AdlHelper$3;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlHelper$3$1;->a:Lcom/addlive/platform/InitProgressChangedEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlHelper$3$1;->b:Lcom/snapchat/android/livechat/AdlHelper$3;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlHelper$3;->b:Lcom/addlive/platform/PlatformInitListener;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlHelper$3$1;->a:Lcom/addlive/platform/InitProgressChangedEvent;

    invoke-interface {v0, v1}, Lcom/addlive/platform/PlatformInitListener;->onInitProgressChanged(Lcom/addlive/platform/InitProgressChangedEvent;)V

    .line 196
    return-void
.end method
