.class final Lcom/snapchat/android/util/fragment/SnapchatFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/fragment/SnapchatFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/snapchat/android/util/fragment/SnapchatFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->this$0:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->this$0:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 355
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->this$0:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    invoke-static {v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->a(Lcom/snapchat/android/util/fragment/SnapchatFragment;)Lnf;

    move-result-object v1

    iget-object v0, v1, Lnf;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_1

    invoke-static {}, Laux;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v2, :cond_0

    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    :cond_0
    iget-object v2, v1, Lnf;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v1, Lnf;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, v1, Lnf;->mStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment$1;->this$0:Lcom/snapchat/android/util/fragment/SnapchatFragment;

    iget v0, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mPageIndex:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 358
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v1, "CAMERA_READY"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;)V

    .line 360
    :cond_2
    return-void
.end method
