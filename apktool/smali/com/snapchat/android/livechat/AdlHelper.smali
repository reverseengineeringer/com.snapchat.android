.class public final Lcom/snapchat/android/livechat/AdlHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;,
        Lcom/snapchat/android/livechat/AdlHelper$a;,
        Lcom/snapchat/android/livechat/AdlHelper$c;,
        Lcom/snapchat/android/livechat/AdlHelper$d;,
        Lcom/snapchat/android/livechat/AdlHelper$b;
    }
.end annotation


# direct methods
.method public static a(Lcom/addlive/service/Responder;Landroid/os/Handler;)Lcom/addlive/service/Responder;
    .locals 1
    .param p0    # Lcom/addlive/service/Responder;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p1    # Landroid/os/Handler;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/addlive/service/Responder",
            "<TT;>;",
            "Landroid/os/Handler;",
            ")",
            "Lcom/addlive/service/Responder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$2;

    invoke-direct {v0, p1, p0}, Lcom/snapchat/android/livechat/AdlHelper$2;-><init>(Landroid/os/Handler;Lcom/addlive/service/Responder;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/snapchat/android/livechat/AdlHelper$c",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$c;

    invoke-direct {v0, p0}, Lcom/snapchat/android/livechat/AdlHelper$c;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
