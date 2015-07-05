.class final Laff$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Lafa$a;

.field final synthetic d:Laff;


# direct methods
.method constructor <init>(Laff;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Lafa$a;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Laff$2;->d:Laff;

    iput-object p2, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Laff$2;->b:Ljava/util/Set;

    iput-object p4, p0, Laff$2;->c:Lafa$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 625
    iget-object v0, p0, Laff$2;->d:Laff;

    iget-object v0, v0, Laff;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 626
    iget-object v0, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 627
    iget-object v1, p0, Laff$2;->d:Laff;

    iget-object v1, v1, Laff;->J:Landroid/content/Context;

    const v2, 0x7f0c0157

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 628
    iget-object v2, p0, Laff$2;->d:Laff;

    iget-object v2, v2, Laff;->J:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lave;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v1, p0, Laff$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 632
    iget-object v1, p0, Laff$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 634
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Laff$2;->c:Lafa$a;

    invoke-interface {v1}, Lafa$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Laff$2;->c:Lafa$a;

    invoke-interface {v4}, Lafa$a;->s_()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, v1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Laff$2;->c:Lafa$a;

    invoke-interface {v2}, Lafa$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/ProfileEventAnalytics$1;->$SwitchMap$com$snapchat$android$analytics$AnalyticsEvents$AnalyticsContext:[I

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Lcom/snapchat/android/analytics/framework/EasyMetric;

    sget-object v3, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->PROFILE_CONTACT_ADD_CLICK:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetrics;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_NAME:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->CONTACT_INFO:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->IDENTITY_PROFILE_PAGE:Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics$ProfilePageMetricParams;->nameInLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_CONTACTS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v2}, Lath;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->d()V

    .line 638
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Laff$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->j(Ljava/lang/String;)V

    .line 643
    :cond_0
    return-void

    .line 636
    :pswitch_1
    new-instance v2, Liw;

    invoke-direct {v2}, Liw;-><init>()V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lig;

    invoke-direct {v2}, Lig;-><init>()V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Llt;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
