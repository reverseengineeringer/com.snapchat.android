.class public final Laog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/snapchat/android/ui/VerticalSwipeLayout$a;


# instance fields
.field private final a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

.field private final b:Lcom/squareup/otto/Bus;

.field private final c:Lcom/snapchat/android/analytics/ProfileEventAnalytics;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;)V
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Laog;-><init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;Lcom/squareup/otto/Bus;)V

    .line 38
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    .line 43
    iput-object p2, p0, Laog;->b:Lcom/squareup/otto/Bus;

    .line 44
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Laog;->c:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 45
    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 49
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, p3, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Laog;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbfk;

    sget-object v3, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v2, v3}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v0, :cond_0

    .line 59
    if-ne p2, v4, :cond_2

    if-eq p3, v4, :cond_2

    .line 60
    iget-object v0, p0, Laog;->b:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeg;

    invoke-direct {v2, v1}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 61
    if-nez p3, :cond_2

    .line 62
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v1}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 66
    :cond_2
    if-nez p2, :cond_0

    if-eqz p3, :cond_0

    .line 67
    sget-object v0, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    .line 69
    if-eqz v0, :cond_4

    .line 70
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 71
    if-nez v0, :cond_3

    move v0, v1

    .line 73
    :goto_1
    sget-object v1, Lkf;->SWIPE_UP:Lkf;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {}, Lakr;->a()Lakr;

    invoke-static {}, Lakr;->C()Z

    move-result v3

    invoke-static {v1, v2, v0, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v0}, Lakp;->h()I

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final c(I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getContext()Landroid/content/Context;

    .line 87
    if-nez p1, :cond_3

    .line 94
    invoke-static {}, Lakr;->aP()Z

    move-result v0

    if-nez v0, :cond_2

    .line 95
    invoke-static {}, Lakr;->aQ()V

    .line 99
    :cond_2
    invoke-static {}, Lakp;->g()Lakp;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lakp;->h()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    .line 101
    :goto_1
    if-eqz v0, :cond_5

    invoke-static {}, Lakr;->aT()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 103
    :goto_2
    if-eqz v0, :cond_3

    .line 104
    invoke-static {}, Lakr;->aU()V

    .line 110
    :cond_3
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    if-nez p1, :cond_6

    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getInProfilePictureView()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 113
    :goto_3
    if-eqz v0, :cond_7

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 116
    :goto_4
    iget-object v3, p0, Laog;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lbfk;

    invoke-direct {v4, v0}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 117
    iget-object v0, p0, Laog;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v3, p0, Laog;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lbeg;

    if-ne p1, v1, :cond_8

    move v0, v1

    :goto_5
    invoke-direct {v4, v0}, Lbeg;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 100
    goto :goto_1

    :cond_5
    move v0, v2

    .line 101
    goto :goto_2

    :cond_6
    move v0, v2

    .line 112
    goto :goto_3

    .line 113
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_4

    :cond_8
    move v0, v2

    .line 118
    goto :goto_5
.end method
