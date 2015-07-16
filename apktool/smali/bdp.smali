.class public final Lbdp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final presenceSource:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

.field public final reason:Ljava/lang/String;

.field public final username:Ljava/lang/String;

.field public final videoReceived:Z


# direct methods
.method public constructor <init>(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p2, p0, Lbdp;->username:Ljava/lang/String;

    .line 13
    iput-boolean p3, p0, Lbdp;->videoReceived:Z

    .line 14
    iput-object p4, p0, Lbdp;->reason:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lbdp;->presenceSource:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    .line 16
    return-void
.end method
