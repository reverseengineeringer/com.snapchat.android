.class final Lcom/snapchat/android/LandingPageActivity$4;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/LandingPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/LandingPageActivity;

.field private b:I

.field private c:I

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Lcom/snapchat/android/LandingPageActivity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1074
    iput-object p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 1077
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    .line 1080
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    .line 1082
    iput v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    .line 1084
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    return-void
.end method

.method private a(I)V
    .locals 6
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1160
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v3, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1162
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 1163
    :goto_0
    if-eqz v0, :cond_1

    .line 1195
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 1162
    goto :goto_0

    .line 1166
    :cond_1
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-ne p1, v0, :cond_3

    .line 1167
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    .line 1168
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v4, "CAMERA_DELAY"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 1172
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v4

    .line 1174
    if-eqz v4, :cond_5

    .line 1176
    invoke-virtual {v4, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1179
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    .line 1180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 1181
    instance-of v3, v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    if-eqz v3, :cond_4

    invoke-virtual {v4, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1182
    check-cast v0, Lcom/snapchat/android/util/fragment/SnapchatFragment;

    .line 1183
    invoke-virtual {v0, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    goto :goto_2

    .line 1187
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markFragmentVisibilityChanged to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1188
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    .line 1190
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 1191
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->d(Lcom/snapchat/android/LandingPageActivity;)V

    .line 1194
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v0, v0, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Lcom/snapchat/android/util/SnapchatViewPager;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(II)V

    goto/16 :goto_1
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 1136
    if-nez p1, :cond_1

    .line 1137
    iput-boolean v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    .line 1138
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->c(Lcom/snapchat/android/LandingPageActivity;)Lbbb;

    move-result-object v0

    iget-boolean v0, v0, Lbbb;->mDeferPause:Z

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->c(Lcom/snapchat/android/LandingPageActivity;)Lbbb;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "HORIZONTAL"

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lbbb;->b([Ljava/lang/String;)V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->e()V

    .line 1150
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity$4;->a(I)V

    .line 1151
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/AnalyticsEvents;->a(II)V

    .line 1152
    iget-object v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v0}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v0

    iget v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    if-ne v2, v5, :cond_2

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CameraEventAnalytics::onFeedPageSelected: EXIT_CAMERA_VIEW has not been created."

    invoke-static {v1, v2}, Lco;->a(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "context"

    const-string v3, "feed"

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    .line 1155
    :cond_1
    :goto_0
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    .line 1156
    return-void

    .line 1152
    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-ne v1, v4, :cond_1

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "CameraEventAnalytics::onStoryPageSelected: EXIT_CAMERA_VIEW has not been created."

    invoke-static {v1, v2}, Lco;->a(ZLjava/lang/Object;)V

    iget-object v1, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v2, "EXIT_CAMERA_VIEW"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "context"

    const-string v3, "story"

    invoke-virtual {v1, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v0, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v1, "EXIT_CAMERA_VIEW"

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->c(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    goto :goto_0
.end method

.method public final onPageScrolled(IFI)V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1103
    if-nez p3, :cond_3

    .line 1105
    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    if-eqz v2, :cond_0

    .line 1106
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v2, v2, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v2, v3}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v3

    .line 1107
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v2}, Lcom/snapchat/android/LandingPageActivity;->f()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v1

    .line 1108
    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    .line 1109
    invoke-virtual {v3, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->f(Z)V

    .line 1112
    :cond_0
    iput-boolean v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    .line 1132
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    .line 1107
    goto :goto_0

    .line 1113
    :cond_3
    iget-boolean v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    if-nez v2, :cond_1

    .line 1115
    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->c:I

    if-eq v2, v3, :cond_5

    if-eq p1, v1, :cond_4

    if-ne p1, v3, :cond_5

    .line 1117
    :cond_4
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v2}, Lcom/snapchat/android/LandingPageActivity;->b(Lcom/snapchat/android/LandingPageActivity;)Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;->SWIPE:Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/analytics/CameraEventAnalytics$CameraContext;)V

    .line 1119
    :cond_5
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v2, v2, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    invoke-virtual {v2}, Lcom/snapchat/android/util/SnapchatViewPager;->getWidth()I

    move-result v2

    .line 1120
    div-int/lit8 v2, v2, 0x2

    if-ge p3, v2, :cond_6

    move v0, v1

    .line 1121
    :cond_6
    iput-boolean v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->e:Z

    .line 1122
    iget-object v1, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    iget-object v1, v1, Lcom/snapchat/android/LandingPageActivity;->a:Lcom/snapchat/android/util/SnapchatViewPager;

    iget v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v1, v2}, Lcom/snapchat/android/util/SnapchatViewPager;->a(I)Lcom/snapchat/android/util/fragment/SnapchatFragment;

    move-result-object v1

    .line 1123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScrollStart from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1124
    if-eqz v1, :cond_1

    .line 1128
    invoke-virtual {v1, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->e(Z)V

    .line 1129
    iget-object v2, p0, Lcom/snapchat/android/LandingPageActivity$4;->a:Lcom/snapchat/android/LandingPageActivity;

    invoke-static {v2, v1, v0}, Lcom/snapchat/android/LandingPageActivity;->a(Lcom/snapchat/android/LandingPageActivity;Lcom/snapchat/android/util/fragment/SnapchatFragment;Z)V

    goto :goto_1
.end method

.method public final onPageSelected(I)V
    .locals 1

    .prologue
    .line 1093
    iput p1, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    .line 1096
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->d:I

    if-nez v0, :cond_0

    .line 1097
    iget v0, p0, Lcom/snapchat/android/LandingPageActivity$4;->b:I

    invoke-direct {p0, v0}, Lcom/snapchat/android/LandingPageActivity$4;->a(I)V

    .line 1099
    :cond_0
    return-void
.end method
