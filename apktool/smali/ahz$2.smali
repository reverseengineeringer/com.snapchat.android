.class final Lahz$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

.field final synthetic d:Lahz;


# direct methods
.method constructor <init>(Lahz;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lahz$2;->d:Lahz;

    iput-object p2, p0, Lahz$2;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lahz$2;->b:Ljava/util/Set;

    iput-object p4, p0, Lahz$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 515
    iget-object v0, p0, Lahz$2;->d:Lahz;

    iget-object v0, v0, Lahz;->I:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 516
    iget-object v0, p0, Lahz$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 517
    iget-object v1, p0, Lahz$2;->d:Lahz;

    iget-object v1, v1, Lahz;->M:Landroid/content/Context;

    const v2, 0x7f0c0157

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 518
    iget-object v2, p0, Lahz$2;->d:Lahz;

    iget-object v2, v2, Lahz;->M:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lawc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v1, p0, Lahz$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iget-object v1, p0, Lahz$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 524
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lahz$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v1}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->i()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lahz$2;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Lahz$2;->c:Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;

    invoke-interface {v4}, Lcom/snapchat/android/fragments/stories/StoriesAdapter$b;->j()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lahz$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Ljava/lang/String;)V

    .line 531
    :cond_0
    return-void
.end method
