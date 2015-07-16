.class final Lagf$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lagf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/model/Friend;

.field final synthetic b:Ljava/util/Set;

.field final synthetic c:Laga$a;

.field final synthetic d:Lagf;


# direct methods
.method constructor <init>(Lagf;Lcom/snapchat/android/model/Friend;Ljava/util/Set;Laga$a;)V
    .locals 0

    .prologue
    .line 647
    iput-object p1, p0, Lagf$2;->d:Lagf;

    iput-object p2, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    iput-object p3, p0, Lagf$2;->b:Ljava/util/Set;

    iput-object p4, p0, Lagf$2;->c:Laga$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 650
    iget-object v0, p0, Lagf$2;->d:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    invoke-virtual {v0}, Laga;->d()Ljava/lang/String;

    move-result-object v0

    .line 651
    if-eqz v0, :cond_0

    iget-object v1, p0, Lagf$2;->d:Lagf;

    iget-object v1, v1, Lagf;->H:Laga;

    iget-boolean v1, v1, Laga;->k:Z

    if-nez v1, :cond_0

    .line 652
    iget-object v1, p0, Lagf$2;->d:Lagf;

    iget-object v2, p0, Lagf$2;->d:Lagf;

    iget-object v2, v2, Lagf;->H:Laga;

    invoke-virtual {v2}, Laga;->b()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v3, p0, Lagf$2;->d:Lagf;

    iget-object v3, v3, Lagf;->H:Laga;

    invoke-virtual {v3}, Laga;->c()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lagf;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;II)V

    .line 654
    iget-object v0, p0, Lagf$2;->d:Lagf;

    iget-object v0, v0, Lagf;->H:Laga;

    iput-boolean v4, v0, Laga;->k:Z

    .line 656
    :cond_0
    iget-object v0, p0, Lagf$2;->d:Lagf;

    iget-object v0, v0, Lagf;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 657
    iget-object v0, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    .line 658
    iget-object v1, p0, Lagf$2;->d:Lagf;

    iget-object v1, v1, Lagf;->J:Landroid/content/Context;

    const v2, 0x7f0c0157

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 659
    iget-object v2, p0, Lagf$2;->d:Lagf;

    iget-object v2, v2, Lagf;->J:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lawc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lagf$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 663
    iget-object v1, p0, Lagf$2;->b:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 665
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    iget-object v1, p0, Lagf$2;->c:Laga$a;

    invoke-interface {v1}, Laga$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    sget-object v3, Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;->CONTACTS:Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;

    iget-object v4, p0, Lagf$2;->c:Laga$a;

    invoke-interface {v4}, Laga$a;->r_()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(Lcom/snapchat/android/model/FriendAction;Ljava/lang/String;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/analytics/AnalyticsEvents$AddFriendSourceType;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0}, Lcom/snapchat/android/model/Friend;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v1, v1, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    iget-object v2, p0, Lagf$2;->c:Laga$a;

    invoke-interface {v2}, Laga$a;->a()Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

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

    invoke-static {v2}, Laug;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 669
    invoke-static {}, Lcom/snapchat/android/analytics/RegistrationAnalytics;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    iget-object v0, p0, Lagf$2;->a:Lcom/snapchat/android/model/Friend;

    iget-object v0, v0, Lcom/snapchat/android/model/Friend;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->i(Ljava/lang/String;)V

    .line 674
    :cond_1
    return-void

    .line 667
    :pswitch_1
    new-instance v2, Lji;

    invoke-direct {v2}, Lji;-><init>()V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lir;

    invoke-direct {v2}, Lir;-><init>()V

    invoke-static {v2}, Lcom/snapchat/android/analytics/framework/ScAnalyticsEventEngine;->a(Lml;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
