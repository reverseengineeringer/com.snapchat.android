.class final Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;


# direct methods
.method constructor <init>(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->d(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)V

    .line 552
    new-instance v0, Lpr;

    const-string v1, "updateSearchableByPhoneNumber"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lpr;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 553
    sget-object v1, Lavf;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lpr;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 554
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    invoke-static {v0}, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->c(Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;)Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment$8;->a:Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;

    iget-object v0, v0, Lcom/snapchat/android/fragments/addfriends/AddFriendsFragment;->D:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onProfileContactPermissionContinue  - Unknown context "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 555
    :goto_0
    return-void

    .line 554
    :pswitch_1
    new-instance v0, Lis;

    invoke-direct {v0}, Lis;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljj;

    invoke-direct {v0}, Ljj;-><init>()V

    invoke-static {v0}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
