.class Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;


# direct methods
.method constructor <init>(Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;->b:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setUseHttps(Z)V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->setReportLocation(Z)V

    .line 33
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$1;->a:Landroid/app/Activity;

    const-string v1, "FRW84M2GG56RMM8VWT5G"

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    return-void
.end method
