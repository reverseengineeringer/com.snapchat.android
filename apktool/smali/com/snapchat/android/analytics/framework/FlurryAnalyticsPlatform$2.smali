.class Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;->b(Landroid/app/Activity;)V
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
    .line 40
    iput-object p1, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;->b:Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform;

    iput-object p2, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/snapchat/android/analytics/framework/FlurryAnalyticsPlatform$2;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 44
    return-void
.end method
