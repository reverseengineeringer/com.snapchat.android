.class final Lcom/snapchat/android/LandingPageActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laim$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/LandingPageActivity;->onSnapCapturedEvent(Lbej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 0

    .prologue
    .line 1813
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$6;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    .prologue
    .line 1816
    if-eqz p1, :cond_0

    .line 1817
    invoke-static {}, Lcom/snapchat/android/analytics/AnalyticsEvents;->g()V

    .line 1818
    new-instance v0, Lpw;

    invoke-direct {v0}, Lpw;-><init>()V

    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpw;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1820
    :cond_0
    return-void
.end method
