.class public final Lvq;
.super Lcom/snapchat/android/camera/cameradecor/CameraDecor;
.source "SourceFile"


# instance fields
.field private final b:F

.field private final c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V
    .locals 4

    .prologue
    .line 32
    invoke-direct {p0, p3}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;-><init>(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 33
    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 35
    invoke-static {p1}, Lvq;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lvq;->b:F

    .line 37
    new-instance v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    .line 38
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    iget v1, p0, Lvq;->b:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setHeightThreshold(I)V

    .line 41
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 42
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->QUICKSNAP_ONBOARDING_REPEATS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 46
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 47
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 56
    :goto_0
    return-void

    .line 48
    :cond_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50
    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->QUICKSNAP_ONBOARDING_REPEATS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 51
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 52
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    sget-object v1, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_SOLID:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setOverlayMode(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    sget-object v1, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_BLINK:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setOverlayMode(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)F
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 86
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 87
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_PORTRAIT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 91
    if-ne v0, v2, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 93
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    .line 96
    :goto_0
    return v0

    .line 95
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 96
    sub-int/2addr v0, v1

    int-to-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return v2

    .line 63
    :pswitch_0
    iget-object v0, p0, Lvq;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->FINGER_UP:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V

    goto :goto_0

    .line 66
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 67
    iget v1, p0, Lvq;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 68
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 69
    iget-object v0, p0, Lvq;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lvq;->c:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 72
    iget-object v0, p0, Lvq;->a:Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-interface {v0, v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
