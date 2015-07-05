.class final Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;


# direct methods
.method constructor <init>(Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$1;->this$0:Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static initialValue()Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>(B)V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/net/TrafficStatsCompat$BaseTrafficStatsCompatImpl$SocketTags;-><init>(B)V

    return-object v0
.end method
