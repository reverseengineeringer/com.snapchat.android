.class final Lcom/snapchat/android/livechat/AdlHelper$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/livechat/AdlHelper$2;->resultHandler(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/snapchat/android/livechat/AdlHelper$2;


# direct methods
.method constructor <init>(Lcom/snapchat/android/livechat/AdlHelper$2;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/snapchat/android/livechat/AdlHelper$2$1;->b:Lcom/snapchat/android/livechat/AdlHelper$2;

    iput-object p2, p0, Lcom/snapchat/android/livechat/AdlHelper$2$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/snapchat/android/livechat/AdlHelper$2$1;->b:Lcom/snapchat/android/livechat/AdlHelper$2;

    iget-object v0, v0, Lcom/snapchat/android/livechat/AdlHelper$2;->b:Lcom/addlive/service/Responder;

    iget-object v1, p0, Lcom/snapchat/android/livechat/AdlHelper$2$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/addlive/service/Responder;->resultHandler(Ljava/lang/Object;)V

    .line 172
    return-void
.end method
