.class public final Lanj;
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
    .line 33
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lanj;-><init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;Lcom/squareup/otto/Bus;)V

    .line 34
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    .line 39
    iput-object p2, p0, Lanj;->b:Lcom/squareup/otto/Bus;

    .line 40
    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v0

    iput-object v0, p0, Lanj;->c:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(III)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p2, p3, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    iget-object v0, p0, Lanj;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v0, :cond_0

    if-ne p2, v3, :cond_0

    if-eq p3, v3, :cond_0

    .line 55
    iget-object v0, p0, Lanj;->b:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 61
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getContext()Landroid/content/Context;

    .line 66
    if-nez p1, :cond_3

    .line 73
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    .line 75
    invoke-static {}, Lajx;->aS()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    invoke-static {}, Lajx;->aT()V

    .line 80
    :cond_2
    invoke-static {}, Lajv;->g()Lajv;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lajv;->h()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    .line 82
    :goto_1
    if-eqz v0, :cond_5

    invoke-static {}, Lajx;->aW()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 84
    :goto_2
    if-eqz v0, :cond_3

    .line 85
    invoke-static {}, Lajx;->aX()V

    .line 91
    :cond_3
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    if-nez p1, :cond_6

    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getInProfilePictureView()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 94
    :goto_3
    if-eqz v0, :cond_7

    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->VISIBLE:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    .line 97
    :goto_4
    iget-object v3, p0, Lanj;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lbel;

    invoke-direct {v4, v0}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lanj;->a:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/VerticalSwipeLayout;->b:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v3, p0, Lanj;->b:Lcom/squareup/otto/Bus;

    new-instance v4, Lbdg;

    if-ne p1, v1, :cond_8

    move v0, v1

    :goto_5
    invoke-direct {v4, v0}, Lbdg;-><init>(Z)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 81
    goto :goto_1

    :cond_5
    move v0, v2

    .line 82
    goto :goto_2

    :cond_6
    move v0, v2

    .line 93
    goto :goto_3

    .line 94
    :cond_7
    sget-object v0, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    goto :goto_4

    :cond_8
    move v0, v2

    .line 99
    goto :goto_5
.end method
