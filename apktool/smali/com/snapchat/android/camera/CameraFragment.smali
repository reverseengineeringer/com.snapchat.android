.class public Lcom/snapchat/android/camera/CameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Laop;
.implements Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;
.implements Lcom/snapchat/android/camera/cameraview/CameraView$b;
.implements Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;
.implements Lwi;
.implements Lwy$a;
.implements Lxc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/camera/CameraFragment$6;,
        Lcom/snapchat/android/camera/CameraFragment$a;
    }
.end annotation


# static fields
.field private static final H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static a:Z


# instance fields
.field private final A:Lnw;

.field private final B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final C:Lof;

.field private final D:Log;

.field private final E:Laio;

.field private F:Laoo;

.field private G:Landroid/widget/ImageView;

.field protected final k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

.field protected l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

.field public m:Lws;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lwv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Lxh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Lxf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public q:Lxg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public r:Lxj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public s:Lban;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private t:Lbfz;

.field private u:[B

.field private v:Landroid/widget/TextView;

.field private w:Lwr;

.field private x:Z

.field private final y:Landroid/os/Handler;

.field private final z:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 171
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    .line 209
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment;->H:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 215
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lnw;->a()Lnw;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v4

    invoke-static {}, Lof;->a()Lof;

    move-result-object v5

    invoke-static {}, Log;->a()Log;

    move-result-object v6

    invoke-static {}, Laio;->c()Laio;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    invoke-direct {v8}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/camera/CameraFragment;-><init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lnw;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lof;Log;Laio;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V

    .line 223
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lnw;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lof;Log;Laio;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 235
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Lazy;

    move-result-object v0

    invoke-interface {v0, p0}, Lazy;->a(Lcom/snapchat/android/camera/CameraFragment;)V

    .line 236
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    .line 237
    iput-object p2, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    .line 238
    iput-object p3, p0, Lcom/snapchat/android/camera/CameraFragment;->A:Lnw;

    .line 239
    iput-object p4, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 240
    iput-object p5, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lof;

    .line 241
    iput-object p6, p0, Lcom/snapchat/android/camera/CameraFragment;->D:Log;

    .line 242
    iput-object p7, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Laio;

    .line 243
    iput-object p8, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    .line 244
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/CameraFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 432
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v0}, Lawf;->a(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->KEYBOARD_HEIGHT_PORTRAIT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    new-instance v0, Lyd;

    invoke-direct {v0}, Lyd;-><init>()V

    iget v0, v0, Lyd;->heightPixels:I

    int-to-float v0, v0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :cond_0
    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/Surface;Lavc;)Z
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Lavc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 840
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v1, v1, Lxg;->a:Z

    if-eqz v1, :cond_0

    .line 848
    :goto_0
    return v0

    .line 844
    :cond_0
    sget-boolean v1, Latt;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 845
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->NO_SURFACE_PROVIDED:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 848
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    invoke-virtual {v0, p0, v1, p2, p1}, Lwv;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lwr;Lavc;Landroid/view/Surface;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/CameraFragment;)Lwr;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    return-object v0
.end method

.method private c(Z)V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v0, :cond_0

    .line 756
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lwj;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 758
    :cond_0
    return-void

    .line 756
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1342
    const-string v0, "CameraFragment"

    return-object v0
.end method

.method private u()V
    .locals 3
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 426
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lwj;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lwj;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lwj;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 429
    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lof;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lof;->a(Z)V

    .line 741
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_CAPTURE_ROTATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lawf;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 744
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lws;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    invoke-virtual {v0, v1, p0, v2}, Lws;->a(Lwh;Lwi;Lwr;)V

    .line 745
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 862
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v0, v0, Lxg;->c:Z

    if-eqz v0, :cond_0

    .line 870
    :goto_0
    return-void

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lof;

    invoke-virtual {v0, v1}, Lof;->a(Z)V

    .line 866
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iput-boolean v1, v0, Lxg;->c:Z

    .line 868
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lwv;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lwr;Z)V

    .line 869
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    goto :goto_0
.end method

.method private declared-synchronized x()Laoo;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1307
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1308
    const/4 v0, 0x0

    .line 1330
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1311
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Laoo;

    if-nez v1, :cond_1

    .line 1312
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    if-eqz v1, :cond_1

    .line 1316
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v1}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1317
    if-eqz v1, :cond_3

    .line 1318
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 1319
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1320
    if-eqz v3, :cond_2

    .line 1321
    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1322
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 1325
    :goto_1
    new-instance v3, Laoo;

    invoke-direct {v3, v2, v1, v0, p0}, Laoo;-><init>(IIILaop;)V

    iput-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Laoo;

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Laoo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1307
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    move v2, v0

    goto :goto_1
.end method

.method private y()V
    .locals 4

    .prologue
    .line 1398
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Laoo;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_0

    .line 1400
    iget-object v1, v0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Laoo;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1404
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1408
    :cond_0
    return-void

    .line 1400
    :cond_1
    iget-object v1, v0, Laoo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 283
    const v0, 0x7f040014

    return v0
.end method

.method protected final a(Lyd;Lxi;Landroid/hardware/Camera$Parameters;)Lavc;
    .locals 7
    .param p1    # Lyd;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lxi;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/Camera$Parameters;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation build Lchc;
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1108
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Latt;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 1109
    new-array v0, v2, [Ljava/lang/Object;

    iget v2, p1, Lyd;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v6

    iget v2, p1, Lyd;->widthPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1112
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lxm;

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    invoke-static {p1}, Lwg;->a(Lyd;)D

    move-result-wide v4

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lxm;->a(Landroid/hardware/Camera$Parameters;IDZ)Lavc;

    move-result-object v0

    .line 1117
    :goto_1
    return-object v0

    :cond_0
    move v0, v6

    .line 1108
    goto :goto_0

    .line 1115
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lyd;Lxi;Landroid/hardware/Camera$Parameters;)Lavc;

    move-result-object v0

    .line 1116
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lavc;->a()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0}, Lavc;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    goto :goto_1
.end method

.method public final a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 3

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 324
    instance-of v0, v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Lwo;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lwo;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 327
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lwj;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lwj;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    if-nez v0, :cond_1

    .line 505
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lxh;

    iget v1, v0, Lxh;->a:F

    mul-float/2addr v1, p1

    iput v1, v0, Lxh;->a:F

    iget v1, v0, Lxh;->a:F

    const v2, 0x3fe66666    # 1.8f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lxh;->a:F

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lxh;

    iget v0, v0, Lxh;->a:F

    sub-float/2addr v0, v4

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    .line 498
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v1}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 499
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 500
    :goto_1
    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v0, v1}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 499
    :cond_3
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    const/4 v0, 0x1

    goto :goto_1

    .line 503
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lxh;

    iput v4, v0, Lxh;->a:F

    goto :goto_0
.end method

.method public final a(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x44fa0000    # 2000.0f

    const/high16 v11, 0x40000000    # 2.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1172
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->g:Z

    if-eqz v0, :cond_1

    .line 1173
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->y()V

    .line 1174
    return-void

    .line 1172
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v0}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->g:Z

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1, p2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(II)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v5

    if-nez v5, :cond_8

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    new-instance v1, Lxb;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    new-instance v4, Lcom/snapchat/android/camera/CameraFragment$4;

    invoke-direct {v4, p0}, Lcom/snapchat/android/camera/CameraFragment$4;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lxb;-><init>(Landroid/os/Handler;Lwy$b;Lwy$c;)V

    invoke-interface {v0, v1}, Lwy$b;->a(Lxb;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    const-string v4, "auto"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "auto"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "auto"

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v3, v0}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6, v9, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    const/high16 v9, 0x42b40000    # 90.0f

    invoke-virtual {v6, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float v9, v7

    div-float/2addr v9, v12

    int-to-float v10, v8

    div-float/2addr v10, v12

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v7, v7

    div-float/2addr v7, v11

    int-to-float v8, v8

    div-float/2addr v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v6, v5}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Landroid/hardware/Camera$Area;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v9, v1}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    iget-object v0, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    add-int/lit16 v1, p1, -0x85

    add-int/lit16 v2, v7, -0x10a

    invoke-static {v1, v2}, Lwg;->a(II)I

    move-result v1

    add-int/lit16 v2, p2, -0x85

    add-int/lit16 v7, v8, -0x10a

    invoke-static {v2, v7}, Lwg;->a(II)I

    move-result v2

    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, v1

    int-to-float v9, v2

    add-int/lit16 v1, v1, 0x10a

    int-to-float v1, v1

    add-int/lit16 v2, v2, 0x10a

    int-to-float v2, v2

    invoke-direct {v7, v8, v9, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v7}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget v1, v7, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, v7, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, v7, Landroid/graphics/RectF;->bottom:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4, v6}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_a
    invoke-interface {v3, v4}, Lwy$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2
.end method

.method public final a(IZ)V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfz;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfz;

    invoke-interface {v0, p1, p2}, Lbfz;->a(IZ)V

    .line 479
    :cond_0
    return-void
.end method

.method public final a(I[B)V
    .locals 3

    .prologue
    .line 1335
    if-eqz p2, :cond_0

    .line 1336
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcg;

    const-string v2, "CameraFragment"

    invoke-direct {v1, v2}, Lbcg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1337
    invoke-static {}, Laph;->a()Laph;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Laph;->a(Landroid/content/Context;I[B)I

    .line 1339
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 1219
    if-eqz p1, :cond_0

    .line 1220
    new-instance v0, Lawy;

    new-instance v1, Lyd;

    invoke-direct {v1}, Lyd;-><init>()V

    invoke-direct {v0, p1, v1}, Lawy;-><init>(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)V

    sget-object v1, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lawy;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    instance-of v1, v0, Lwn;

    .line 1227
    new-instance v0, Lakf$a;

    invoke-direct {v0}, Lakf$a;-><init>()V

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lakf$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    check-cast v0, Lakf$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v2, v2, Lxf;->a:Z

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    check-cast v0, Lakf$a;

    iput-boolean v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    check-cast v0, Lakf$a;

    .line 1233
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_1

    .line 1235
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    .line 1238
    :cond_1
    invoke-virtual {v0}, Lakf$a;->c()Lakf;

    move-result-object v0

    .line 1240
    invoke-static {v0}, Log;->a(Laji;)V

    .line 1241
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbej;

    sget-object v3, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v2, v0, v3}, Lbej;-><init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1242
    return-void
.end method

.method protected final a(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v1, v1, Lxf;->a:Z

    invoke-virtual {v0, p1, v1}, Lwr;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 1091
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 954
    invoke-static {}, Lbhp;->a()V

    .line 956
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v1, :cond_0

    .line 957
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 959
    :cond_0
    if-nez p1, :cond_1

    .line 960
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 993
    :goto_0
    return-void

    .line 963
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 964
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    .line 965
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 966
    if-nez v1, :cond_3

    move v1, v0

    .line 967
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iput-boolean v0, v3, Lxg;->a:Z

    .line 968
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iput-boolean v0, v3, Lxg;->c:Z

    .line 969
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 970
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_2

    .line 971
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 972
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 975
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    invoke-virtual {v0}, Lwv;->b()V

    .line 976
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 977
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->e()V

    .line 979
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    instance-of v3, v0, Lwn;

    .line 982
    new-instance v0, Laku$a;

    invoke-direct {v0}, Laku$a;-><init>()V

    iput-object p1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mVideoUri:Landroid/net/Uri;

    check-cast v0, Laku$a;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Laku$a;

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    check-cast v0, Laku$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v2, v2, Lxf;->a:Z

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    check-cast v0, Laku$a;

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    check-cast v0, Laku$a;

    iput-boolean v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    check-cast v0, Laku$a;

    invoke-virtual {v0}, Laku$a;->c()Laku;

    move-result-object v0

    .line 991
    invoke-static {v0}, Log;->a(Laji;)V

    .line 992
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbej;

    sget-object v3, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v2, v0, v3}, Lbej;-><init>(Laji;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 966
    :cond_3
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 12

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lxj;

    invoke-virtual {v0}, Lxj;->a()Lavc;

    move-result-object v2

    .line 1156
    if-nez v2, :cond_0

    .line 1157
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 1162
    :goto_0
    return-void

    .line 1159
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v4, Lyd;

    invoke-direct {v4}, Lyd;-><init>()V

    iget-object v0, v3, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lavc;->b()I

    move-result v5

    invoke-virtual {v2}, Lavc;->a()I

    move-result v6

    iget v1, v4, Lyd;->heightPixels:I

    iget v0, v4, Lyd;->widthPixels:I

    iget v7, v4, Lyd;->heightPixels:I

    int-to-double v8, v7

    iget v4, v4, Lyd;->widthPixels:I

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-virtual {v2}, Lavc;->c()D

    move-result-wide v10

    invoke-static {v10, v11, v8, v9}, Lcom/snapchat/android/camera/cameraview/CameraView;->a(DD)Z

    move-result v4

    if-eqz v4, :cond_2

    int-to-double v6, v6

    int-to-double v8, v0

    int-to-double v4, v5

    div-double v4, v8, v4

    mul-double/2addr v4, v6

    double-to-int v1, v4

    :goto_1
    new-instance v4, Lavc;

    invoke-direct {v4, v0, v1}, Lavc;-><init>(II)V

    iget-object v0, v3, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Lavc;->a()I

    move-result v3

    invoke-virtual {v4}, Lavc;->b()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1160
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Lavc;)Z

    goto :goto_0

    .line 1159
    :cond_2
    int-to-double v4, v5

    int-to-double v8, v1

    int-to-double v6, v6

    div-double v6, v8, v6

    mul-double/2addr v4, v6

    double-to-int v0, v4

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 766
    sget-object v2, Lcom/snapchat/android/camera/CameraFragment$6;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 808
    :goto_0
    return-void

    .line 768
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    sget-object v2, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->PHOTO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    iput-object v2, v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 769
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$1;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    invoke-static {}, Lakr;->L()V

    .line 779
    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 780
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbeg;

    invoke-direct {v2, v1}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 783
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 784
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    iget-object v2, v2, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    sget-object v3, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->VIDEO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    if-ne v2, v3, :cond_1

    .line 786
    :goto_1
    if-eqz v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v0, v0, Lxg;->a:Z

    if-eqz v0, :cond_0

    .line 789
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->w()V

    .line 801
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 805
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 784
    goto :goto_1

    .line 792
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->d()V

    .line 793
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->v()V

    .line 795
    invoke-static {}, Lakn;->a()Lakn;

    move-result-object v0

    const-string v1, "ENABLE_SNAP_TO_SCAN"

    const-string v2, "option"

    const-string v3, "on"

    invoke-virtual {v0, v1, v2, v3}, Lakn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->y()V

    goto :goto_2

    .line 766
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V
    .locals 1
    .annotation build Lawj;
    .end annotation

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 421
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 422
    return-void
.end method

.method public final a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 915
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 914
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 997
    invoke-static {}, Lbhp;->a()V

    .line 999
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v2, :cond_0

    .line 1000
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    invoke-interface {v2, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 1002
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 1003
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iput-boolean v1, v2, Lxg;->a:Z

    .line 1004
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iput-boolean v1, v2, Lxg;->c:Z

    .line 1005
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeg;

    invoke-direct {v3, v0}, Lbeg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1009
    sget-object v2, Lcom/snapchat/android/camera/CameraFragment$6;->c:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1018
    const v2, 0x7f0c02d9

    .line 1021
    :goto_0
    if-eqz v0, :cond_1

    .line 1022
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v3, v4, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1023
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lban;

    new-instance v2, Lox;

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lox;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lban;->a(Ljava/lang/Throwable;)V

    .line 1024
    invoke-static {p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 1027
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_2

    sget-boolean v0, Latt;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    .line 1028
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 1029
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 1030
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    invoke-virtual {v0}, Lwv;->b()V

    .line 1031
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 1032
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    .line 1036
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1037
    return-void

    .line 1011
    :pswitch_0
    invoke-static {}, Lcom/snapchat/android/util/debug/ReleaseManager;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00fa

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v5, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v4, v5, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v2, :pswitch_data_1

    const v2, 0x7f0c0056

    .line 1012
    goto :goto_0

    .line 1011
    :sswitch_0
    const-string v4, "shared"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "checking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v2, v0

    goto :goto_1

    :sswitch_2
    const-string v4, "removed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v2, 0x2

    goto :goto_1

    :pswitch_1
    const v2, 0x7f0c0057

    goto/16 :goto_0

    :pswitch_2
    const v2, 0x7f0c0055

    goto/16 :goto_0

    :pswitch_3
    const v2, 0x7f0c0050

    goto/16 :goto_0

    .line 1015
    :pswitch_4
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->v()V

    move v0, v1

    move v2, v1

    .line 1016
    goto/16 :goto_0

    .line 1009
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1011
    :sswitch_data_0
    .sparse-switch
        -0x35db539b -> :sswitch_0
        0x41141860 -> :sswitch_2
        0x5b9b35da -> :sswitch_1
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Lwy$b;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1050
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lwy$b;I)V

    .line 1051
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwy$b;

    if-nez v0, :cond_1

    .line 1064
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1056
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    invoke-virtual {v0}, Lwv;->a()V

    .line 1057
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->A:Lnw;

    iget-object v0, v1, Lnw;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_3

    invoke-static {}, Lavv;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    :cond_2
    iget-object v2, v1, Lnw;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v1, Lnw;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, v1, Lnw;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1058
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 1059
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraPreviewSize(Lavc;)V

    .line 1060
    new-instance v0, Lawp;

    sget-object v1, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lawp;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->f:Lavc;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-boolean v3, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lavc;->b()I

    move-result v3

    invoke-virtual {v1}, Lavc;->a()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v1, v4}, Lawp;->a(IILandroid/graphics/Bitmap$Config;)V

    :cond_4
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lawp;->a(IILandroid/graphics/Bitmap$Config;)V

    sput-boolean v6, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    .line 1062
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbp;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v2, v2, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-direct {v1, v6, v2}, Lbbp;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1063
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v5, v0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 4

    .prologue
    .line 730
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 733
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbp;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v3, v3, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-direct {v1, v2, v3}, Lbbp;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 734
    return-void
.end method

.method public final a([BLwy$b;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1248
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a([BLwy$b;)V

    .line 1249
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/CameraFragment$5;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    .line 1258
    iget-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    if-eqz v0, :cond_0

    .line 1259
    iput-boolean v6, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 1260
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 1263
    :cond_0
    if-nez p2, :cond_2

    .line 1276
    :cond_1
    :goto_0
    return-void

    .line 1264
    :cond_2
    invoke-static {}, Lbhp;->b()V

    .line 1266
    invoke-static {}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getLastInstance()Lcom/snapchat/android/ui/here/HoldToStreamView;

    move-result-object v0

    .line 1267
    if-eqz v0, :cond_3

    .line 1268
    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a([B)V

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    invoke-interface {p2, v0}, Lwy$b;->a([B)V

    .line 1272
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Laoo;

    move-result-object v0

    .line 1273
    if-eqz v0, :cond_1

    .line 1274
    if-eqz p1, :cond_1

    iget v1, v0, Laoo;->b:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Laoo;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Laoo;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Laoo;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    iput v6, v0, Laoo;->i:I

    iget-object v1, v0, Laoo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Laoo;->h:J

    iget-object v1, v0, Laoo;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v2, v0, Laoo;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_5
    iget-object v1, v0, Laoo;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Laoo;->a(J)D

    move-result-wide v2

    iget-wide v4, v0, Laoo;->c:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Stopped scanning - Scan time is expired: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Laoo;->h:J

    invoke-static {v2, v3}, Laoo;->a(J)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Laoo;->a()V

    :cond_6
    iget-object v1, v0, Laoo;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Laoo$1;

    invoke-direct {v1, v0, p1}, Laoo$1;-><init>(Laoo;[B)V

    iget-object v0, v0, Laoo;->a:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Laoo$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected final a(Lavc;)[B
    .locals 5
    .param p1    # Lavc;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x11

    .line 1095
    invoke-virtual {p1}, Lavc;->d()I

    move-result v0

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Laux;->a(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocating a Callback Buffer of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lavc;->d()I

    move-result v2

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " divided by 8 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 1096
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 1123
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->b(I)V

    .line 1125
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 1127
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_1

    .line 1129
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1130
    const v0, 0x7f0c00da

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1131
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1132
    const v0, 0x7f0c0058

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$2;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1137
    const v0, 0x7f0c0127

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$3;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1142
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1144
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1146
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lban;

    new-instance v1, Loj;

    invoke-direct {v1}, Loj;-><init>()V

    invoke-virtual {v0, v1}, Lban;->a(Ljava/lang/Throwable;)V

    .line 1147
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "CAMERA_FAILED_TO_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->e()V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 1347
    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1348
    if-eqz p1, :cond_1

    .line 1349
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentLayout:Landroid/view/View;

    const v2, 0x7f0a0099

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    .line 1350
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1351
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1352
    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 4

    .prologue
    .line 894
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v0, v0, Lxg;->a:Z

    if-eqz v0, :cond_0

    .line 903
    :goto_0
    return-void

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->a()V

    .line 899
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v2

    .line 900
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    if-eqz p1, :cond_1

    const-string v0, "double_tap"

    move-object v1, v0

    :goto_1
    if-eqz v2, :cond_2

    const-string v0, "front_facing_camera"

    :goto_2
    iget-object v2, v3, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mEasyMetricManager:Lcom/snapchat/android/analytics/framework/EasyMetricManager;

    const-string v3, "CAMERA_SWITCH"

    invoke-virtual {v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetricManager;->b(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v2

    const-string v3, "context"

    invoke-virtual {v2, v3, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v1

    const-string v2, "switch_to"

    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->b()Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 902
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    goto :goto_0

    .line 900
    :cond_1
    const-string v0, "toggle_button"

    move-object v1, v0

    goto :goto_1

    :cond_2
    const-string v0, "back_facing_camera"

    goto :goto_2
.end method

.method protected final d()Z
    .locals 3

    .prologue
    .line 722
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d()Z

    move-result v0

    .line 724
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 725
    :cond_0
    return v0
.end method

.method protected final e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 571
    invoke-static {}, Lnw;->d()V

    .line 573
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Laio;

    invoke-virtual {v0}, Laio;->b()V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 577
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbfk;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbfk;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbed;

    invoke-direct {v1}, Lbed;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->g()Lbdz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lbdz;->mOriginatingFragment:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbea;

    invoke-direct {v1}, Lbea;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 583
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 585
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 586
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 588
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 591
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_4

    .line 592
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 593
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->c()V

    .line 595
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 596
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 599
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    invoke-direct {v1, v3}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 601
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b()V

    .line 603
    invoke-static {}, Lnw;->e()V

    .line 604
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 639
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->f()V

    .line 640
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Laoo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Laoo;->a()V

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdd;

    const-string v2, "CameraFragment"

    invoke-direct {v1, v2}, Lbdd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 644
    return-void
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1281
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_2

    .line 1282
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1283
    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    .line 1285
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1286
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1297
    :goto_0
    return v0

    .line 1289
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1290
    goto :goto_0

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    move v0, v1

    .line 1295
    goto :goto_0

    .line 1297
    :cond_2
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public final i()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 486
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final i_()Z
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v0, v0, Lxf;->a:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 814
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 833
    :goto_0
    return v0

    .line 818
    :cond_0
    sget-boolean v2, Latt;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v2, :cond_2

    .line 819
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lxj;

    invoke-virtual {v1}, Lxj;->a()Lavc;

    move-result-object v1

    .line 820
    if-nez v1, :cond_1

    .line 821
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 824
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Lavc;)Z

    move-result v0

    goto :goto_0

    .line 829
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    invoke-interface {v2, v1}, Lwy$b;->b(Z)V

    .line 830
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v3, Landroid/view/SurfaceView;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    iget-object v3, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->a:Landroid/widget/FrameLayout;

    iget-object v4, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v3, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    new-instance v4, Lcom/snapchat/android/camera/cameraview/CameraView$3;

    invoke-direct {v4, v2, p0}, Lcom/snapchat/android/camera/cameraview/CameraView$3;-><init>(Lcom/snapchat/android/camera/cameraview/CameraView;Lcom/snapchat/android/camera/cameraview/CameraView$b;)V

    invoke-interface {v3, v4}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v3, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, v2, Lcom/snapchat/android/camera/cameraview/CameraView;->c:Landroid/view/TextureView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    move v0, v1

    .line 833
    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 855
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v0, v0, Lxg;->a:Z

    return v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 919
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    invoke-static {}, Lakr;->ab()Z

    move-result v0

    .line 922
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwy$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lwy$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "torch"

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x7f0a0094

    .line 297
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 299
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    invoke-direct {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;-><init>()V

    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iput-object v2, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/snapchat/android/camera/CameraFragment$a;-><init>(Lcom/snapchat/android/camera/CameraFragment;B)V

    iput-object v2, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 300
    :cond_1
    return-void
.end method

.method public onAdjustForQuickSnapEvent(Lbbl;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 362
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-boolean v0, p1, Lbbl;->mShouldPrepare:Z

    if-eqz v0, :cond_1

    .line 359
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 463
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onAttach(Landroid/app/Activity;)V

    .line 464
    instance-of v0, p1, Lbfz;

    if-eqz v0, :cond_0

    .line 465
    check-cast p1, Lbfz;

    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfz;

    .line 467
    :cond_0
    return-void
.end method

.method public onCameraStateEvent(Lbbq;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 675
    invoke-virtual {p1}, Lbbq;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 676
    iget-object v0, p1, Lbbq;->cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eqz v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, p1, Lbbq;->cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    .line 681
    iget-object v0, p1, Lbbq;->displayState:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 682
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 690
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 681
    goto :goto_0

    .line 682
    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    .line 684
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 685
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_4

    .line 686
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    invoke-virtual {v0}, Lwv;->b()V

    goto :goto_2
.end method

.method public onCancelCardLinkEvent(Lbbr;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 380
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-static {v0, v1}, Lawf;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 381
    return-void
.end method

.method public onCancelInChatSnapEvent(Lbbs;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public onCancelQuickSnapEvent(Lbbt;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 374
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public onCancelReplyEvent(Lbbu;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 340
    return-void
.end method

.method public onChangePreviewQualityEvent(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 694
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->a:[I

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;->previewQuality:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 702
    :cond_0
    :goto_0
    return-void

    .line 696
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    goto :goto_0

    .line 699
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->g_()V

    goto :goto_0

    .line 694
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lnw;->d()V

    .line 249
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreate(Landroid/os/Bundle;)V

    .line 250
    invoke-static {}, Lnw;->e()V

    .line 251
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-static {}, Lnw;->d()V

    .line 256
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    sget-boolean v0, Latt;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v0, :cond_0

    .line 261
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_0
    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    .line 265
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 268
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CAMERA_NUMBER_PREFERENCE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 270
    new-instance v0, Lwp;

    const v1, 0x7f0a0096

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lwp;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    .line 271
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    .line 272
    new-instance v0, Lyd;

    invoke-direct {v0}, Lyd;-><init>()V

    .line 273
    iget v1, v0, Lyd;->widthPixels:I

    iget v2, v0, Lyd;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 274
    iget v2, v0, Lyd;->widthPixels:I

    iget v3, v0, Lyd;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 275
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    mul-float/2addr v1, v2

    iget v0, v0, Lyd;->density:F

    div-float v0, v1, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 277
    invoke-static {}, Lnw;->e()V

    .line 278
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 884
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 885
    return-void
.end method

.method public onKeyDownEvent(Lbcv;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 397
    iget-boolean v0, p0, Lcom/snapchat/android/util/fragment/SnapchatFragment;->mIsVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 403
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget v0, p1, Lbcv;->keyCode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    iget-object v0, p1, Lbcv;->event:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1b -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLockScreenOpenedEvent(Lbdg;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->onResume()V

    .line 534
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 648
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    iget-boolean v0, v0, Lxg;->a:Z

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lwv;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lwr;Z)V

    .line 650
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lxg;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lxg;->a:Z

    .line 652
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onPause()V

    .line 653
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lwv;

    invoke-virtual {v0}, Lwv;->b()V

    .line 654
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 655
    :cond_1
    return-void
.end method

.method public onProfileViewScrollEvent(Lbdr;)V
    .locals 4
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget v1, p1, Lbdr;->destinationPage:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 386
    return-void
.end method

.method public onRefreshCameraNotificationBoxesEvent(Lbdv;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 879
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b()V

    .line 880
    return-void
.end method

.method public onReplySnapEvent(Lbdz;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 333
    new-instance v0, Lwn;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lwn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbdz;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 544
    invoke-static {}, Lnw;->d()V

    .line 545
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onResume()V

    .line 547
    invoke-virtual {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v0, "destinationPage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    sget-object v2, Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;->ADD_FRIENDS:Lcom/snapchat/android/notification/AndroidNotificationManager$Destination;

    if-ne v0, v2, :cond_1

    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v0, v0, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v2, v4, v5}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbev;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>()V

    invoke-direct {v2, v3}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "destinationPage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 548
    :cond_1
    invoke-static {}, Lnw;->e()V

    .line 549
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1419
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment;->H:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_0

    .line 1420
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1422
    :cond_0
    return-void
.end method

.method public onSnapViewingEvent(Lbem;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 889
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 890
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 538
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStart()V

    .line 539
    invoke-static {p0}, Lakr;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 540
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 659
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStop()V

    .line 660
    invoke-static {p0}, Lakr;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 663
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 664
    :cond_0
    return-void
.end method

.method public onSwitchToInChatCameraEvent(Lbfe;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 344
    new-instance v0, Lwl;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lwl;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbfe;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 345
    iget-object v0, p1, Lbfe;->mCaptionText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 347
    return-void
.end method

.method public onSwitchToQuickSnapCameraEvent(Lbff;)V
    .locals 3
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 366
    new-instance v0, Lwm;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lwm;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 367
    iget-object v0, p1, Lbff;->mCaptionText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 369
    return-void
.end method

.method public onViewedFriendFeedEvent(Lbbk;)V
    .locals 1
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 874
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 875
    return-void
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 928
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 932
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v0, v1, Lxf;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lxf;->a:Z

    .line 930
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lwr;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lxf;

    iget-boolean v1, v1, Lxf;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lwr;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 931
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    goto :goto_0

    .line 929
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 937
    invoke-static {}, Lbhp;->a()V

    .line 938
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Z)V

    .line 939
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 940
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 947
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 948
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 950
    :cond_1
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 1041
    invoke-static {}, Lbhp;->a()V

    .line 1043
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 1044
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->w()V

    .line 1045
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 1168
    return-void
.end method
