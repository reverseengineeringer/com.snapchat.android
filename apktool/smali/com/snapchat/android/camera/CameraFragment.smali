.class public Lcom/snapchat/android/camera/CameraFragment;
.super Lcom/snapchat/android/camera/BaseCameraFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lans;
.implements Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;
.implements Lcom/snapchat/android/camera/cameraview/CameraView$b;
.implements Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;
.implements Lvm;
.implements Lwc$a;
.implements Lwg;


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
.field private final A:Lnf;

.field private final B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

.field private final C:Lno;

.field private final D:Lnp;

.field private final E:Lahs;

.field private F:Lanr;

.field private G:Landroid/widget/ImageView;

.field protected final k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

.field protected l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

.field public m:Lvw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public n:Lvz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public o:Lwl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public p:Lwj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public q:Lwk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public r:Lwn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public s:Lazo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private t:Lbfa;

.field private u:[B

.field private v:Landroid/widget/TextView;

.field private w:Lvv;

.field private x:Z

.field private final y:Landroid/os/Handler;

.field private final z:Lcom/squareup/otto/Bus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 173
    const/4 v0, 0x0

    sput-boolean v0, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    .line 211
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_NEW_FRIEND_REQUEST_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PAGE_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/camera/CameraFragment;->H:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    .line 217
    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {}, Lnf;->a()Lnf;

    move-result-object v3

    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a()Lcom/snapchat/android/analytics/CameraEventAnalytics;

    move-result-object v4

    invoke-static {}, Lno;->a()Lno;

    move-result-object v5

    invoke-static {}, Lnp;->a()Lnp;

    move-result-object v6

    invoke-static {}, Lahs;->c()Lahs;

    move-result-object v7

    new-instance v8, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    invoke-direct {v8}, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/snapchat/android/camera/CameraFragment;-><init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lnf;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lno;Lnp;Lahs;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V

    .line 225
    return-void
.end method

.method private constructor <init>(Lcom/squareup/otto/Bus;Landroid/os/Handler;Lnf;Lcom/snapchat/android/analytics/CameraEventAnalytics;Lno;Lnp;Lahs;Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;-><init>()V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 237
    invoke-static {}, Lcom/snapchat/android/SnapchatApplication;->b()Lcom/snapchat/android/SnapchatApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/SnapchatApplication;->c()Laza;

    move-result-object v0

    invoke-interface {v0, p0}, Laza;->a(Lcom/snapchat/android/camera/CameraFragment;)V

    .line 238
    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    .line 239
    iput-object p2, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    .line 240
    iput-object p3, p0, Lcom/snapchat/android/camera/CameraFragment;->A:Lnf;

    .line 241
    iput-object p4, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    .line 242
    iput-object p5, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lno;

    .line 243
    iput-object p6, p0, Lcom/snapchat/android/camera/CameraFragment;->D:Lnp;

    .line 244
    iput-object p7, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lahs;

    .line 245
    iput-object p8, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    .line 246
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/camera/CameraFragment;)Lcom/snapchat/android/analytics/CameraEventAnalytics;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 434
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 437
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v0}, Lavh;->a(Landroid/view/View;)I

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

    new-instance v0, Lxh;

    invoke-direct {v0}, Lxh;-><init>()V

    iget v0, v0, Lxh;->heightPixels:I

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

    .line 441
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Landroid/view/Surface;Laue;)Z
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Laue;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 842
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v1, v1, Lwk;->a:Z

    if-eqz v1, :cond_0

    .line 850
    :goto_0
    return v0

    .line 846
    :cond_0
    sget-boolean v1, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    .line 847
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->NO_SURFACE_PROVIDED:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    invoke-virtual {v0, p0, v1, p2, p1}, Lvz;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lvv;Laue;Landroid/view/Surface;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/snapchat/android/camera/CameraFragment;)Lvv;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    return-object v0
.end method

.method private c(Z)V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 756
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Lvn;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 760
    :cond_0
    return-void

    .line 758
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1344
    const-string v0, "CameraFragment"

    return-object v0
.end method

.method private u()V
    .locals 3
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lvn;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    new-instance v0, Lvn;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lvn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 431
    :cond_0
    return-void
.end method

.method private v()V
    .locals 3

    .prologue
    .line 739
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 748
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lno;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lno;->a(Z)V

    .line 743
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->SNAP_CAPTURE_ROTATION:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lavh;->d(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 746
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->m:Lvw;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    invoke-virtual {v0, v1, p0, v2}, Lvw;->a(Lvl;Lvm;Lvv;)V

    .line 747
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private w()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 864
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v0, v0, Lwk;->c:Z

    if-eqz v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->C:Lno;

    invoke-virtual {v0, v1}, Lno;->a(Z)V

    .line 868
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iput-boolean v1, v0, Lwk;->c:Z

    .line 870
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lvz;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lvv;Z)V

    .line 871
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    goto :goto_0
.end method

.method private declared-synchronized x()Lanr;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1309
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v2, "x86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1310
    const/4 v0, 0x0

    .line 1332
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1313
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lanr;

    if-nez v1, :cond_1

    .line 1314
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    if-eqz v1, :cond_1

    .line 1318
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v1}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1319
    if-eqz v1, :cond_3

    .line 1320
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v2

    .line 1321
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 1322
    if-eqz v3, :cond_2

    .line 1323
    iget v1, v3, Landroid/hardware/Camera$Size;->width:I

    .line 1324
    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    .line 1327
    :goto_1
    new-instance v3, Lanr;

    invoke-direct {v3, v2, v1, v0, p0}, Lanr;-><init>(IIILans;)V

    iput-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lanr;

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->F:Lanr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1309
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
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1400
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Lanr;

    move-result-object v0

    .line 1401
    if-eqz v0, :cond_0

    .line 1402
    iget-object v1, v0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lanr;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :goto_0
    sget-object v0, Lanr;->a:Ljava/lang/String;

    const-string v1, "Enable Scanner..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1406
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1407
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->G:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1410
    :cond_0
    return-void

    .line 1402
    :cond_1
    iget-object v1, v0, Lanr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 285
    const v0, 0x7f040013

    return v0
.end method

.method protected final a(Lxh;Lwm;Landroid/hardware/Camera$Parameters;)Laue;
    .locals 7
    .param p1    # Lxh;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Lwm;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/Camera$Parameters;
        .annotation build Lcgb;
        .end annotation
    .end param
    .annotation build Lcgb;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 1110
    invoke-virtual {p3}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    sget-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_1

    .line 1111
    const-string v0, "CameraFragment"

    const-string v2, "Preview Size Finding: display [%d,%d]"

    new-array v3, v4, [Ljava/lang/Object;

    iget v4, p1, Lxh;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, p1, Lxh;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->j:Lwq;

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v3, v0, Lcom/snapchat/android/camera/model/CameraModel;->c:I

    invoke-static {p1}, Lvk;->a(Lxh;)D

    move-result-wide v4

    move-object v2, p3

    invoke-virtual/range {v1 .. v6}, Lwq;->a(Landroid/hardware/Camera$Parameters;IDZ)Laue;

    move-result-object v0

    .line 1119
    :goto_1
    return-object v0

    :cond_0
    move v0, v6

    .line 1110
    goto :goto_0

    .line 1117
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lxh;Lwm;Landroid/hardware/Camera$Parameters;)Laue;

    move-result-object v0

    .line 1118
    const-string v2, "CameraFragment"

    const-string v3, "Camera Preview Size: [%d,%d]"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Laue;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v0}, Laue;->b()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Landroid/widget/RelativeLayout;)Lcom/snapchat/android/camera/cameradecor/CameraDecor;
    .locals 3

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 326
    instance-of v0, v1, Lcom/snapchat/android/SnapkidzHomeActivity;

    if-eqz v0, :cond_0

    .line 327
    new-instance v0, Lvs;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lvs;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    .line 329
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lvn;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lvn;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    goto :goto_0
.end method

.method public final a(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 496
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    if-nez v0, :cond_1

    .line 507
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lwl;

    iget v1, v0, Lwl;->a:F

    mul-float/2addr v1, p1

    iput v1, v0, Lwl;->a:F

    iget v1, v0, Lwl;->a:F

    const v2, 0x3fe66666    # 1.8f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Lwl;->a:F

    .line 499
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lwl;

    iget v0, v0, Lwl;->a:F

    sub-float/2addr v0, v4

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    .line 500
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v1}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 501
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v0, 0x0

    .line 502
    :goto_1
    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v0, v1}, Lwc$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 501
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

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->o:Lwl;

    iput v4, v0, Lwl;->a:F

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

    .line 1174
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->g:Z

    if-eqz v0, :cond_1

    .line 1175
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->y()V

    .line 1176
    return-void

    .line 1174
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v0}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

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

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    if-eqz v0, :cond_3

    invoke-interface {v3}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v5

    if-nez v5, :cond_8

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    new-instance v1, Lwf;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    new-instance v4, Lcom/snapchat/android/camera/CameraFragment$4;

    invoke-direct {v4, p0}, Lcom/snapchat/android/camera/CameraFragment$4;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-direct {v1, v2, v3, v4}, Lwf;-><init>(Landroid/os/Handler;Lwc$b;Lwc$c;)V

    invoke-interface {v0, v1}, Lwc$b;->a(Lwf;)V

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

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v3, v0}, Lwc$b;->a(Landroid/hardware/Camera$Parameters;)V

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

    invoke-static {v1, v2}, Lvk;->a(II)I

    move-result v1

    add-int/lit16 v2, p2, -0x85

    add-int/lit16 v7, v8, -0x10a

    invoke-static {v2, v7}, Lvk;->a(II)I

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
    invoke-interface {v3, v4}, Lwc$b;->a(Landroid/hardware/Camera$Parameters;)V

    goto/16 :goto_2
.end method

.method public final a(IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfa;

    if-eqz v0, :cond_1

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfa;

    invoke-interface {v0, p1, p2}, Lbfa;->a(IZ)V

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    const-string v0, "CameraFragment"

    const-string v1, "FragmentPageChangeCallback is null. Is it implemented by your Activity?"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(I[B)V
    .locals 3

    .prologue
    .line 1337
    if-eqz p2, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbg;

    const-string v2, "CameraFragment"

    invoke-direct {v1, v2}, Lbbg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1339
    invoke-static {}, Laol;->a()Laol;

    move-result-object v0

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Laol;->a(Landroid/content/Context;I[B)I

    .line 1341
    :cond_0
    return-void
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 1221
    if-eqz p1, :cond_0

    .line 1222
    new-instance v0, Lawa;

    new-instance v1, Lxh;

    invoke-direct {v1}, Lxh;-><init>()V

    invoke-direct {v0, p1, v1}, Lawa;-><init>(Landroid/graphics/Bitmap;Landroid/util/DisplayMetrics;)V

    sget-object v1, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lawa;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    instance-of v1, v0, Lvr;

    .line 1229
    new-instance v0, Lajj$a;

    invoke-direct {v0}, Lajj$a;-><init>()V

    sget-object v2, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lajj$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    check-cast v0, Lajj$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v2, v2, Lwj;->a:Z

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    check-cast v0, Lajj$a;

    iput-boolean v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    check-cast v0, Lajj$a;

    .line 1235
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 1236
    if-eqz v1, :cond_1

    .line 1237
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    .line 1240
    :cond_1
    invoke-virtual {v0}, Lajj$a;->c()Lajj;

    move-result-object v0

    .line 1242
    invoke-static {v0}, Lnp;->a(Laim;)V

    .line 1243
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdj;

    sget-object v3, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v2, v0, v3}, Lbdj;-><init>(Laim;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1244
    return-void
.end method

.method protected final a(Landroid/hardware/Camera$Parameters;)V
    .locals 2

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v1, v1, Lwj;->a:Z

    invoke-virtual {v0, p1, v1}, Lvv;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 1093
    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 956
    invoke-static {}, Lbgp;->a()V

    .line 958
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v1, :cond_0

    .line 959
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 961
    :cond_0
    if-nez p1, :cond_1

    .line 962
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->VIDEO_STORAGE_EXCEPTION:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 995
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 966
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v2

    .line 967
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v1

    .line 968
    if-nez v1, :cond_3

    move v1, v0

    .line 969
    :goto_1
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iput-boolean v0, v3, Lwk;->a:Z

    .line 970
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iput-boolean v0, v3, Lwk;->c:Z

    .line 971
    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 972
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_2

    .line 973
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 974
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    invoke-virtual {v0}, Lvz;->b()V

    .line 978
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 979
    invoke-static {}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->e()V

    .line 981
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    instance-of v3, v0, Lvr;

    .line 984
    new-instance v0, Lajm$a;

    invoke-direct {v0}, Lajm$a;-><init>()V

    iput-object p1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mVideoUri:Landroid/net/Uri;

    check-cast v0, Lajm$a;

    sget-object v4, Lcom/snapchat/android/model/Mediabryo$SnapType;->SNAP:Lcom/snapchat/android/model/Mediabryo$SnapType;

    iput-object v4, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapType:Lcom/snapchat/android/model/Mediabryo$SnapType;

    check-cast v0, Lajm$a;

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFrontFacingSnap:Z

    check-cast v0, Lajm$a;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v2, v2, Lwj;->a:Z

    iput-boolean v2, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsFlashOn:Z

    check-cast v0, Lajm$a;

    iput v1, v0, Lcom/snapchat/android/model/Mediabryo$a;->mSnapOrientation:I

    check-cast v0, Lajm$a;

    iput-boolean v3, v0, Lcom/snapchat/android/model/Mediabryo$a;->mIsReply:Z

    check-cast v0, Lajm$a;

    invoke-virtual {v0}, Lajm$a;->c()Lajm;

    move-result-object v0

    .line 993
    invoke-static {v0}, Lnp;->a(Laim;)V

    .line 994
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdj;

    sget-object v3, Lcom/snapchat/android/util/eventbus/SnapCaptureContext;->CAMERA:Lcom/snapchat/android/util/eventbus/SnapCaptureContext;

    invoke-direct {v2, v0, v3}, Lbdj;-><init>(Laim;Lcom/snapchat/android/util/eventbus/SnapCaptureContext;)V

    invoke-virtual {v1, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 968
    :cond_3
    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    goto :goto_1
.end method

.method public final a(Landroid/view/Surface;)V
    .locals 12

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lwn;

    invoke-virtual {v0}, Lwn;->a()Laue;

    move-result-object v2

    .line 1158
    if-nez v2, :cond_0

    .line 1159
    sget-object v0, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 1164
    :goto_0
    return-void

    .line 1161
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    new-instance v4, Lxh;

    invoke-direct {v4}, Lxh;-><init>()V

    iget-object v0, v3, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Laue;->b()I

    move-result v5

    invoke-virtual {v2}, Laue;->a()I

    move-result v6

    iget v1, v4, Lxh;->heightPixels:I

    iget v0, v4, Lxh;->widthPixels:I

    iget v7, v4, Lxh;->heightPixels:I

    int-to-double v8, v7

    iget v4, v4, Lxh;->widthPixels:I

    int-to-double v10, v4

    div-double/2addr v8, v10

    invoke-virtual {v2}, Laue;->c()D

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
    new-instance v4, Laue;

    invoke-direct {v4, v0, v1}, Laue;-><init>(II)V

    iget-object v0, v3, Lcom/snapchat/android/camera/cameraview/CameraView;->b:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v4}, Laue;->a()I

    move-result v3

    invoke-virtual {v4}, Laue;->b()I

    move-result v4

    invoke-direct {v1, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Laue;)Z

    goto :goto_0

    .line 1161
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

    .line 768
    sget-object v2, Lcom/snapchat/android/camera/CameraFragment$6;->b:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface$TakeSnapButtonAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 810
    :goto_0
    return-void

    .line 770
    :pswitch_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    sget-object v2, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->PHOTO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    iput-object v2, v0, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    .line 771
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$1;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$1;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 780
    invoke-static {}, Lajx;->L()V

    .line 781
    invoke-direct {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 782
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdg;

    invoke-direct {v2, v1}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 786
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->k:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;

    iget-object v2, v2, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent;->a:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    sget-object v3, Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;->VIDEO:Lcom/snapchat/android/camera/TakeSnapButtonTouchIntent$MediaCaptureType;

    if-ne v2, v3, :cond_1

    .line 788
    :goto_1
    if-eqz v0, :cond_2

    .line 790
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v0, v0, Lwk;->a:Z

    if-eqz v0, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->w()V

    .line 803
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 807
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->y:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 786
    goto :goto_1

    .line 794
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->d()V

    .line 795
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->v()V

    .line 797
    invoke-static {}, Lajt;->a()Lajt;

    move-result-object v0

    const-string v1, "ENABLE_SNAP_TO_SCAN"

    const-string v2, "option"

    const-string v3, "on"

    invoke-virtual {v0, v1, v2, v3}, Lajt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 799
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->y()V

    goto :goto_2

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V
    .locals 1
    .annotation build Lavl;
    .end annotation

    .prologue
    .line 421
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 423
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(Z)V

    .line 424
    return-void
.end method

.method public final a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 915
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 916
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    goto :goto_0
.end method

.method public final a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V
    .locals 6
    .param p1    # Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 999
    invoke-static {}, Lbgp;->a()V

    .line 1001
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v2, :cond_0

    .line 1002
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    invoke-interface {v2, v0}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 1004
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 1005
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iput-boolean v1, v2, Lwk;->a:Z

    .line 1006
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iput-boolean v1, v2, Lwk;->c:Z

    .line 1007
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v3, Lbdg;

    invoke-direct {v3, v0}, Lbdg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1011
    sget-object v2, Lcom/snapchat/android/camera/CameraFragment$6;->c:[I

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1020
    const v2, 0x7f0c02db

    .line 1023
    :goto_0
    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v4, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    invoke-direct {v3, v4, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1025
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lazo;

    new-instance v2, Log;

    invoke-virtual {p1}, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Log;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 1026
    invoke-static {p1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    .line 1029
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_2

    sget-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-nez v0, :cond_2

    .line 1030
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->a()V

    .line 1031
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 1032
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    invoke-virtual {v0}, Lvz;->b()V

    .line 1033
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 1034
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    .line 1038
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1039
    return-void

    .line 1013
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

    .line 1014
    goto :goto_0

    .line 1013
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

    .line 1017
    :pswitch_4
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->v()V

    move v0, v1

    move v2, v1

    .line 1018
    goto/16 :goto_0

    .line 1011
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1013
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

.method public final a(Lwc$b;I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1052
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Lwc$b;I)V

    .line 1053
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->h:Lwc$b;

    if-nez v0, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1058
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    invoke-virtual {v0}, Lvz;->a()V

    .line 1059
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->A:Lnf;

    iget-object v0, v1, Lnf;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    if-eqz v0, :cond_3

    invoke-static {}, Laux;->b()Lcom/snapchat/android/util/StartupPath;

    move-result-object v0

    sget-object v2, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    :cond_2
    iget-object v2, v1, Lnf;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v3, "type"

    invoke-virtual {v2, v3, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    iget-object v0, v1, Lnf;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    const/4 v0, 0x0

    iput-object v0, v1, Lnf;->mOldStartupMetric:Lcom/snapchat/android/analytics/framework/EasyMetric;

    .line 1060
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->e()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraInfo(Landroid/hardware/Camera$CameraInfo;)V

    .line 1061
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->f:Laue;

    invoke-static {v0}, Lcom/snapchat/android/ui/here/StreamView;->setCameraPreviewSize(Laue;)V

    .line 1062
    new-instance v0, Lavr;

    sget-object v1, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, v1}, Lavr;-><init>(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->f:Laue;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    sget-boolean v3, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Laue;->b()I

    move-result v3

    invoke-virtual {v1}, Laue;->a()I

    move-result v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v1, v4}, Lavr;->a(IILandroid/graphics/Bitmap$Config;)V

    :cond_4
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lavr;->a(IILandroid/graphics/Bitmap$Config;)V

    sput-boolean v6, Lcom/snapchat/android/camera/CameraFragment;->a:Z

    .line 1064
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbao;

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v2, v2, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-direct {v1, v6, v2}, Lbao;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 1065
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v5, v0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    goto :goto_0
.end method

.method protected final a(Z)V
    .locals 4

    .prologue
    .line 732
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->a(Z)V

    .line 733
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 735
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbao;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v3, v3, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-direct {v1, v2, v3}, Lbao;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 736
    return-void
.end method

.method public final a([BLwc$b;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1250
    invoke-super {p0, p1, p2}, Lcom/snapchat/android/camera/BaseCameraFragment;->a([BLwc$b;)V

    .line 1251
    new-instance v0, Lcom/snapchat/android/camera/CameraFragment$5;

    invoke-direct {v0, p0}, Lcom/snapchat/android/camera/CameraFragment$5;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    .line 1260
    iget-boolean v0, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    if-eqz v0, :cond_0

    .line 1261
    iput-boolean v6, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 1262
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->c()V

    .line 1265
    :cond_0
    if-nez p2, :cond_2

    .line 1278
    :cond_1
    :goto_0
    return-void

    .line 1266
    :cond_2
    invoke-static {}, Lbgp;->b()V

    .line 1268
    invoke-static {}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getLastInstance()Lcom/snapchat/android/ui/here/HoldToStreamView;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_3

    .line 1270
    invoke-virtual {v0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a([B)V

    .line 1272
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    invoke-interface {p2, v0}, Lwc$b;->a([B)V

    .line 1274
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Lanr;

    move-result-object v0

    .line 1275
    if-eqz v0, :cond_1

    .line 1276
    if-eqz p1, :cond_1

    iget v1, v0, Lanr;->c:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lanr;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/snapchat/android/scan/SnapScan;->a()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lanr;->a:Ljava/lang/String;

    const-string v2, "SnapScan native lib failed to load! -- Scanning disabled!!"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lanr;->a()V

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lanr;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lanr;->a:Ljava/lang/String;

    const-string v2, "Started scanning..."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v6, v0, Lanr;->j:I

    iget-object v1, v0, Lanr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, v0, Lanr;->i:J

    iget-object v1, v0, Lanr;->h:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v2, v0, Lanr;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_5
    iget-object v1, v0, Lanr;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Lanr;->a(J)D

    move-result-wide v2

    iget-wide v4, v0, Lanr;->d:D

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_6

    sget-object v1, Lanr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopped scanning - Scan time is expired: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, v0, Lanr;->i:J

    invoke-static {v4, v5}, Lanr;->a(J)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lanr;->a()V

    :cond_6
    iget-object v1, v0, Lanr;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lanr$1;

    invoke-direct {v1, v0, p1}, Lanr$1;-><init>(Lanr;[B)V

    iget-object v0, v0, Lanr;->b:Ljava/util/concurrent/Executor;

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lanr$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected final a(Laue;)[B
    .locals 5
    .param p1    # Laue;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    const/16 v4, 0x11

    .line 1097
    invoke-virtual {p1}, Laue;->d()I

    move-result v0

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    invoke-static {v0}, Latz;->a(I)I

    move-result v0

    const-string v1, "CameraUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Allocating a Callback Buffer of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Laue;->d()I

    move-result v3

    invoke-static {v4}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " divided by 8 = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    .line 1098
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->u:[B

    return-object v0
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 1125
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->b(I)V

    .line 1127
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1129
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 1130
    if-eqz v0, :cond_1

    .line 1131
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1132
    const v0, 0x7f0c00da

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1133
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1134
    const v0, 0x7f0c0058

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$2;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$2;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1139
    const v0, 0x7f0c0128

    new-instance v2, Lcom/snapchat/android/camera/CameraFragment$3;

    invoke-direct {v2, p0}, Lcom/snapchat/android/camera/CameraFragment$3;-><init>(Lcom/snapchat/android/camera/CameraFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1144
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1148
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->s:Lazo;

    new-instance v1, Lns;

    invoke-direct {v1}, Lns;-><init>()V

    invoke-virtual {v0, v1}, Lazo;->a(Ljava/lang/Throwable;)V

    .line 1149
    new-instance v0, Lcom/snapchat/android/analytics/framework/ErrorMetric;

    const-string v1, "CAMERA_FAILED_TO_OPEN"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/ErrorMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/ErrorMetric;->d()V

    goto :goto_0
.end method

.method public final b(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 1349
    sget-object v0, Lcom/snapchat/android/util/Property;->ENABLE_SNAPSCAN_DEBUG:Lcom/snapchat/android/util/Property;

    invoke-virtual {v0}, Lcom/snapchat/android/util/Property;->getBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1350
    if-eqz p1, :cond_2

    .line 1351
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

    .line 1352
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1353
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1358
    :cond_1
    :goto_0
    return-void

    .line 1355
    :cond_2
    const-string v0, "CameraFragment"

    const-string v1, "The debug scanner image was null."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 896
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v0, v0, Lwk;->a:Z

    if-eqz v0, :cond_0

    .line 905
    :goto_0
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/model/CameraModel;->a()V

    .line 901
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget v1, v1, Lcom/snapchat/android/camera/model/CameraModel;->b:I

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->b(I)Z

    move-result v1

    .line 902
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    iget-object v0, v2, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v3, "CAMERA_SWITCH"

    invoke-virtual {v0, v3, v6}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Z)V

    if-eqz p1, :cond_1

    const-string v0, "double_tap"

    :goto_1
    iget-object v3, v2, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v4, "CAMERA_SWITCH"

    const-string v5, "context"

    invoke-virtual {v3, v4, v5, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    if-eqz v1, :cond_2

    const-string v0, "front_facing_camera"

    :goto_2
    iget-object v1, v2, Lcom/snapchat/android/analytics/CameraEventAnalytics;->mDictionaryEasyMetric:Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    const-string v2, "CAMERA_SWITCH"

    const-string v3, "switch_to"

    invoke-virtual {v1, v2, v3, v0}, Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/DictionaryEasyMetric;

    .line 903
    iput-boolean v6, p0, Lcom/snapchat/android/camera/CameraFragment;->x:Z

    .line 904
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    goto :goto_0

    .line 902
    :cond_1
    const-string v0, "toggle_button"

    goto :goto_1

    :cond_2
    const-string v0, "back_facing_camera"

    goto :goto_2
.end method

.method protected final d()Z
    .locals 3

    .prologue
    .line 724
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->d()Z

    move-result v0

    .line 726
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 727
    :cond_0
    return v0
.end method

.method protected final e()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 573
    invoke-static {}, Lnf;->d()V

    .line 575
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;)V

    .line 576
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->E:Lahs;

    invoke-virtual {v0}, Lahs;->b()V

    .line 578
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 579
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbel;

    sget-object v2, Lcom/snapchat/android/util/TitleBarManager$Visibility;->HIDDEN:Lcom/snapchat/android/util/TitleBarManager$Visibility;

    invoke-direct {v1, v2}, Lbel;-><init>(Lcom/snapchat/android/util/TitleBarManager$Visibility;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdd;

    invoke-direct {v1}, Lbdd;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/snapchat/android/LandingPageActivity;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/snapchat/android/LandingPageActivity;

    invoke-virtual {v0}, Lcom/snapchat/android/LandingPageActivity;->g()Lbcz;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v0, v0, Lbcz;->mOriginatingFragment:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbda;

    invoke-direct {v1}, Lbda;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 585
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbap;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    invoke-direct {v1, v2}, Lbap;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 587
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 588
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 590
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 595
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->c()V

    .line 597
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_5

    .line 598
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 601
    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    invoke-direct {v1, v3}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->b()V

    .line 605
    invoke-static {}, Lnf;->e()V

    .line 606
    return-void
.end method

.method public final f()V
    .locals 3

    .prologue
    .line 641
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->f()V

    .line 642
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->x()Lanr;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lanr;->a()V

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbcd;

    const-string v2, "CameraFragment"

    invoke-direct {v1, v2}, Lbcd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public final g()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1283
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-nez v0, :cond_2

    .line 1284
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 1285
    const v2, 0x7f0a0094

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;

    .line 1287
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1288
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1299
    :goto_0
    return v0

    .line 1291
    :cond_0
    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 1292
    goto :goto_0

    .line 1296
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    move v0, v1

    .line 1297
    goto :goto_0

    .line 1299
    :cond_2
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public final i()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 488
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public final k_()Z
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v0, v0, Lwj;->a:Z

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 530
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

    .line 816
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v2}, Lcom/snapchat/android/camera/model/CameraModel;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 835
    :goto_0
    return v0

    .line 820
    :cond_0
    sget-boolean v2, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v2, :cond_2

    .line 821
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->r:Lwn;

    invoke-virtual {v1}, Lwn;->a()Laue;

    move-result-object v1

    .line 822
    if-nez v1, :cond_1

    .line 823
    sget-object v1, Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;->INITIALIZATION_ERROR:Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$VideoFailureType;)V

    goto :goto_0

    .line 826
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Landroid/view/Surface;Laue;)Z

    move-result v0

    goto :goto_0

    .line 831
    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    invoke-interface {v2, v1}, Lwc$b;->b(Z)V

    .line 832
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

    .line 835
    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v0, v0, Lwk;->a:Z

    return v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 921
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    invoke-virtual {v1}, Lcom/snapchat/android/camera/model/CameraModel;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    invoke-static {}, Lajx;->ac()Z

    move-result v0

    .line 924
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->c:Lwc$b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lwc$b;->c()Landroid/hardware/Camera$Parameters;

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

    .line 299
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 301
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

    iput-object v2, v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-virtual {v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1, v4, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 302
    :cond_1
    return-void
.end method

.method public onAdjustForQuickSnapEvent(Lbal;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-boolean v0, p1, Lbal;->mShouldPrepare:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    sget-object v1, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onAttach(Landroid/app/Activity;)V

    .line 466
    instance-of v0, p1, Lbfa;

    if-eqz v0, :cond_0

    .line 467
    check-cast p1, Lbfa;

    iput-object p1, p0, Lcom/snapchat/android/camera/CameraFragment;->t:Lbfa;

    .line 469
    :cond_0
    return-void
.end method

.method public onCameraStateEvent(Lbap;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 677
    invoke-virtual {p1}, Lbap;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    iget-object v0, p1, Lbap;->cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v2, p1, Lbap;->cameraToResume:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/camera/model/CameraModel;->a(Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    .line 681
    :cond_0
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    .line 683
    iget-object v0, p1, Lbap;->displayState:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 684
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 692
    :goto_2
    return-void

    :cond_1
    move v0, v1

    .line 683
    goto :goto_0

    .line 684
    :cond_2
    const/4 v1, 0x4

    goto :goto_1

    .line 686
    :cond_3
    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    .line 687
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 690
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    invoke-virtual {v0}, Lvz;->b()V

    goto :goto_2
.end method

.method public onCancelCardLinkEvent(Lbaq;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 382
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-static {v0, v1}, Lavh;->a(Landroid/content/Context;Landroid/view/View;)V

    .line 383
    return-void
.end method

.method public onCancelInChatSnapEvent(Lbar;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 354
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public onCancelQuickSnapEvent(Lbas;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public onCancelReplyEvent(Lbat;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 341
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->u()V

    .line 342
    return-void
.end method

.method public onChangePreviewQualityEvent(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 696
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment$6;->a:[I

    iget-object v1, p1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;->previewQuality:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-virtual {v1}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 698
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

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    goto :goto_0

    .line 701
    :pswitch_1
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-boolean v0, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->j:Z

    invoke-virtual {p0, v2}, Lcom/snapchat/android/camera/CameraFragment;->a(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iput-boolean v2, v0, Lcom/snapchat/android/camera/model/CameraModel;->i:Z

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->i_()V

    goto :goto_0

    .line 696
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 250
    invoke-static {}, Lnf;->d()V

    .line 251
    invoke-super {p0, p1}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreate(Landroid/os/Bundle;)V

    .line 252
    invoke-static {}, Lnf;->e()V

    .line 253
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 257
    invoke-static {}, Lnf;->d()V

    .line 258
    invoke-super {p0, p1, p2, p3}, Lcom/snapchat/android/camera/BaseCameraFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_0

    sget-boolean v0, Lasu;->HAS_SURFACE_TEXTURE_RECORDING:Z

    if-eqz v0, :cond_0

    .line 263
    const v0, 0x7f0a0097

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    :cond_0
    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0, v3}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setEnabled(Z)V

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->setScrollable(Z)V

    .line 270
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->i:Lcom/snapchat/android/camera/model/CameraModel;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->g:Landroid/content/SharedPreferences;

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->CAMERA_NUMBER_PREFERENCE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/model/CameraModel;->a(I)V

    .line 272
    new-instance v0, Lvt;

    const v1, 0x7f0a0096

    invoke-virtual {p0, v1}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lvt;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    .line 273
    const v0, 0x7f0a0098

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    .line 274
    new-instance v0, Lxh;

    invoke-direct {v0}, Lxh;-><init>()V

    .line 275
    iget v1, v0, Lxh;->widthPixels:I

    iget v2, v0, Lxh;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 276
    iget v2, v0, Lxh;->widthPixels:I

    iget v3, v0, Lxh;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 277
    iget-object v3, p0, Lcom/snapchat/android/camera/CameraFragment;->v:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3d59999a

    mul-float/2addr v1, v2

    iget v0, v0, Lxh;->density:F

    div-float v0, v1, v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 279
    invoke-static {}, Lnf;->e()V

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onFeedRefreshedEvent(Lcom/snapchat/android/util/eventbus/SnapMessageFeedRefreshedEvent;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 886
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 887
    return-void
.end method

.method public onKeyDownEvent(Lbbv;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->h_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    iget v0, p1, Lbbv;->keyCode:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    iget-object v0, p1, Lbbv;->event:Landroid/view/KeyEvent;

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

.method public onLockScreenOpenedEvent(Lbcg;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 535
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->onResume()V

    .line 536
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 650
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    iget-boolean v0, v0, Lwk;->a:Z

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lvz;->a(Lcom/snapchat/android/camera/videocamera/VideoCameraHandler$c;Lvv;Z)V

    .line 652
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->q:Lwk;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lwk;->a:Z

    .line 654
    :cond_0
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onPause()V

    .line 655
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->n:Lvz;

    invoke-virtual {v0}, Lvz;->b()V

    .line 656
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/camera/cameraview/CameraView;->setAlpha(F)V

    .line 657
    :cond_1
    return-void
.end method

.method public onProfileViewScrollEvent(Lbcr;)V
    .locals 4
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    iget v1, p1, Lbcr;->destinationPage:I

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 388
    return-void
.end method

.method public onRefreshCameraNotificationBoxesEvent(Lbcv;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->b()V

    .line 882
    return-void
.end method

.method public onReplySnapEvent(Lbcz;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lvr;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lvr;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbcz;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 337
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 546
    invoke-static {}, Lnf;->d()V

    .line 547
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onResume()V

    .line 549
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

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v2, Lbdw;

    new-instance v3, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;

    invoke-direct {v3}, Lcom/snapchat/android/fragments/addfriends/AddedMeFragment;-><init>()V

    invoke-direct {v2, v3}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "destinationPage"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 550
    :cond_1
    invoke-static {}, Lnf;->e()V

    .line 551
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1421
    sget-object v0, Lcom/snapchat/android/camera/CameraFragment;->H:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    if-eqz v0, :cond_0

    .line 1422
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 1424
    :cond_0
    return-void
.end method

.method public onSnapViewingEvent(Lbdm;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 891
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 892
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 540
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStart()V

    .line 541
    invoke-static {p0}, Lajx;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 542
    return-void
.end method

.method public onStop()V
    .locals 4

    .prologue
    .line 661
    invoke-super {p0}, Lcom/snapchat/android/camera/BaseCameraFragment;->onStop()V

    .line 662
    invoke-static {p0}, Lajx;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 665
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->l:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    const/4 v1, 0x1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2, v3}, Lcom/snapchat/android/ui/VerticalSwipeLayout;->a(ID)V

    .line 666
    :cond_0
    return-void
.end method

.method public onSwitchToInChatCameraEvent(Lbef;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 346
    new-instance v0, Lvp;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0, p1}, Lvp;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;Lbef;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 347
    iget-object v0, p1, Lbef;->mCaptionText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public onSwitchToQuickSnapCameraEvent(Lbeg;)V
    .locals 3
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 368
    new-instance v0, Lvq;

    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/snapchat/android/camera/CameraFragment;->e:Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1, v2, p0}, Lvq;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Lcom/snapchat/android/camera/cameradecor/CameraDecor$CameraDecorInterface;)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Lcom/snapchat/android/camera/cameradecor/CameraDecor;)V

    .line 369
    iget-object v0, p1, Lbeg;->mCaptionText:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->a(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->z:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdg;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lbdg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 371
    return-void
.end method

.method public onViewedFriendFeedEvent(Lbak;)V
    .locals 1
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 876
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    .line 877
    return-void
.end method

.method public final p()V
    .locals 3

    .prologue
    .line 930
    invoke-virtual {p0}, Lcom/snapchat/android/camera/CameraFragment;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v0, v1, Lwj;->a:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lwj;->a:Z

    .line 932
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->w:Lvv;

    iget-object v1, p0, Lcom/snapchat/android/camera/CameraFragment;->p:Lwj;

    iget-boolean v1, v1, Lwj;->a:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lvv;->a(Landroid/hardware/Camera$Parameters;Z)V

    .line 933
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->a()V

    goto :goto_0

    .line 931
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 939
    invoke-static {}, Lbgp;->a()V

    .line 940
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->B:Lcom/snapchat/android/analytics/CameraEventAnalytics;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/CameraEventAnalytics;->a(Z)V

    .line 941
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->d()V

    .line 942
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->mFragmentInterface:Lcom/snapchat/android/util/fragment/SnapchatFragment$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/util/fragment/SnapchatFragment$a;->a(Z)V

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->b:Lcom/snapchat/android/camera/cameraview/CameraView;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameraview/CameraView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 950
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

    .line 952
    :cond_1
    return-void
.end method

.method public final r()V
    .locals 1

    .prologue
    .line 1043
    invoke-static {}, Lbgp;->a()V

    .line 1045
    iget-object v0, p0, Lcom/snapchat/android/camera/CameraFragment;->d:Lcom/snapchat/android/camera/cameradecor/CameraDecor;

    invoke-virtual {v0}, Lcom/snapchat/android/camera/cameradecor/CameraDecor;->e()V

    .line 1046
    invoke-direct {p0}, Lcom/snapchat/android/camera/CameraFragment;->w()V

    .line 1047
    return-void
.end method

.method public final s()V
    .locals 1

    .prologue
    .line 1169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/camera/CameraFragment;->b(Z)V

    .line 1170
    return-void
.end method
