.class public Lcom/snapchat/android/ui/here/HoldToStreamView;
.super Lcom/snapchat/android/ui/here/StreamView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field private static final l:Ljava/lang/String;

.field private static z:Lcom/snapchat/android/ui/here/HoldToStreamView;


# instance fields
.field private A:Landroid/content/SharedPreferences;

.field private B:Lcom/snapchat/android/model/chat/ChatConversation;

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:F

.field private G:Z

.field private H:Z

.field private I:J

.field private J:Z

.field private K:Lbj;

.field private L:Lbj;

.field private final M:Lcom/squareup/otto/Bus;

.field private final N:Lawf;

.field private O:Z

.field private P:[B

.field private final Q:Lcom/snapchat/android/analytics/HereAnalytics;

.field private R:Z

.field private S:Landroid/app/Activity;

.field private final T:Ljava/lang/Runnable;

.field protected a:Lcom/snapchat/android/ui/here/StreamView$a;

.field protected b:Z

.field protected c:Laih;

.field protected d:Landroid/view/MotionEvent;

.field protected e:Z

.field protected f:Landroid/view/View;

.field protected g:Lcom/snapchat/android/ui/here/LockToStreamView;

.field protected h:Lcom/addlive/view/ALVideoTextureView;

.field protected i:Lcom/snapchat/android/ui/ConnectingRippleView;

.field private m:I

.field private n:J

.field private o:F

.field private p:Landroid/view/MotionEvent;

.field private q:Landroid/view/ViewPropertyAnimator;

.field private r:Landroid/view/GestureDetector;

.field private s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field private t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

.field private u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

.field private v:Z

.field private final w:Landroid/os/Handler;

.field private x:F

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/snapchat/android/ui/here/HoldToStreamView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;)V

    .line 104
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:I

    .line 109
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 111
    new-instance v0, Laif;

    invoke-direct {v0}, Laif;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    .line 124
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    .line 144
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 163
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 170
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 179
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    .line 183
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 185
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    .line 663
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$6;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->T:Ljava/lang/Runnable;

    .line 193
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 194
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 195
    new-instance v0, Lawf;

    invoke-direct {v0, p1}, Lawf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Lawf;

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 104
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:I

    .line 109
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 111
    new-instance v0, Laif;

    invoke-direct {v0}, Laif;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    .line 124
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    .line 144
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 163
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 170
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 179
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    .line 183
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 185
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    .line 663
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$6;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->T:Ljava/lang/Runnable;

    .line 201
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 202
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 203
    new-instance v0, Lawf;

    invoke-direct {v0, p1}, Lawf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Lawf;

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Lcom/snapchat/android/ui/here/StreamView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:I

    .line 109
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 111
    new-instance v0, Laif;

    invoke-direct {v0}, Laif;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    .line 124
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    .line 144
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    .line 163
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 170
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 179
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    .line 183
    new-instance v0, Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0}, Lcom/snapchat/android/analytics/HereAnalytics;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    .line 185
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    .line 663
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$6;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->T:Ljava/lang/Runnable;

    .line 209
    invoke-direct {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/content/Context;)V

    .line 210
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    .line 211
    new-instance v0, Lawf;

    invoke-direct {v0, p1}, Lawf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Lawf;

    .line 212
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/HoldToStreamView;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 215
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    :goto_0
    return-void

    .line 217
    :cond_0
    sput-object p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->z:Lcom/snapchat/android/ui/here/HoldToStreamView;

    .line 220
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->x:F

    .line 222
    new-instance v0, Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/ConnectingRippleView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    .line 223
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 225
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    invoke-virtual {v0, p1}, Lare;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 228
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    .line 230
    new-instance v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-direct {v0, p1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    .line 231
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 235
    new-instance v0, Lbl;

    const-wide/high16 v2, 0x4074000000000000L    # 320.0

    const-wide/high16 v4, 0x4038000000000000L    # 24.0

    invoke-direct {v0, v2, v3, v4, v5}, Lbl;-><init>(DD)V

    .line 236
    invoke-static {}, Lawi;->a()Lbp;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Lbp;->a()Lbj;

    move-result-object v2

    iput-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lbj;

    .line 238
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lbj;

    invoke-virtual {v2, v0}, Lbj;->a(Lbl;)Lbj;

    .line 239
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lbj;

    new-instance v3, Lcom/snapchat/android/ui/here/HoldToStreamView$1;

    invoke-direct {v3, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$1;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v2, v3}, Lbj;->a(Lbn;)Lbj;

    .line 249
    invoke-virtual {v1}, Lbp;->a()Lbj;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lbj;

    .line 250
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lbj;

    invoke-virtual {v1, v0}, Lbj;->a(Lbl;)Lbj;

    .line 251
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lbj;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$5;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$5;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Lbj;->a(Lbn;)Lbj;

    .line 261
    new-instance v0, Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-direct {v0, p1, v1, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/snapchat/android/analytics/HereAnalytics;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0, v0, v6, v6}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;II)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Landroid/view/GestureDetector;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$2;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 263
    invoke-virtual {p0, v6}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setWillNotDraw(Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f()V

    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v1, v1, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v1, :cond_1

    const v0, 0x3e4ccccd    # 0.2f

    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(I)V

    :cond_2
    return-void
.end method

.method private c(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-nez v0, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 460
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 466
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g()V

    .line 467
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 468
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    return v0
.end method

.method static synthetic d(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/model/chat/ChatConversation;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 271
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 272
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 273
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v2, v0, v1}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRippleCenter(FF)V

    .line 274
    return-void
.end method

.method static synthetic f(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->j()V

    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 473
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 474
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 475
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->e()V

    .line 476
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l()V

    .line 477
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    .line 478
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$a;->d(Z)V

    .line 479
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->j()V

    .line 480
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 481
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method static synthetic g(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V

    return-void
.end method

.method public static getLastInstance()Lcom/snapchat/android/ui/here/HoldToStreamView;
    .locals 1

    .prologue
    .line 277
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->z:Lcom/snapchat/android/ui/here/HoldToStreamView;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 675
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    if-eqz v0, :cond_0

    .line 683
    :goto_0
    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    .line 677
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 679
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->i()V

    .line 680
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->v:Z

    .line 682
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h()V

    return-void
.end method

.method static synthetic i(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/analytics/HereAnalytics;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    return-object v0
.end method

.method private i()V
    .locals 4

    .prologue
    .line 706
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 707
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$7;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$7;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 713
    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 806
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 807
    :goto_0
    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v3, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v3, :cond_2

    :cond_0
    move v3, v1

    .line 808
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    move v0, v1

    .line 810
    :goto_2
    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    if-ne v0, v3, :cond_4

    .line 831
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 806
    goto :goto_0

    :cond_2
    move v3, v2

    .line 807
    goto :goto_1

    :cond_3
    move v0, v2

    .line 808
    goto :goto_2

    .line 812
    :cond_4
    if-eqz v0, :cond_5

    .line 813
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v4, Lbft;

    sget-object v5, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->HERE:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-direct {v4, v5}, Lbft;-><init>(Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 817
    :goto_4
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    .line 820
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->N:Lawf;

    if-nez v0, :cond_6

    :goto_5
    invoke-virtual {v3, p0, v1}, Lawf;->a(Landroid/view/View;Z)V

    .line 822
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$11;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$11;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/snapchat/android/ui/here/HoldToStreamView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 815
    :cond_5
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v4, Lbft;

    sget-object v5, Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;->MEDIA:Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;

    invoke-direct {v4, v5}, Lbft;-><init>(Lcom/snapchat/android/ui/CustomVolumeView$VolumeViewType;)V

    invoke-virtual {v3, v4}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    move v1, v2

    .line 820
    goto :goto_5
.end method

.method static synthetic j(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    sget-object v2, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getHeight()I

    move-result v2

    sub-int v0, v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$4;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    goto :goto_0
.end method

.method private k()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1014
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1017
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v2}, Lcom/addlive/view/ALVideoTextureView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    move v2, v1

    .line 1016
    :goto_1
    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setKeepScreenOn(Z)V

    goto :goto_0

    :cond_4
    move v2, v0

    .line 1015
    goto :goto_1
.end method

.method static synthetic k(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    return v0
.end method

.method static synthetic l(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/snapchat/android/camera/model/CameraModel$CameraType;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    return-object v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    .line 1023
    return-void
.end method

.method private m()V
    .locals 4

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->T:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1050
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_0

    .line 1051
    const-wide/16 v0, 0x1388

    .line 1055
    :goto_0
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->w:Landroid/os/Handler;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->T:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1056
    return-void

    .line 1053
    :cond_0
    const-wide/16 v0, 0x7d0

    goto :goto_0
.end method

.method static synthetic m(Lcom/snapchat/android/ui/here/HoldToStreamView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$3;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$3;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/ui/here/HoldToStreamView;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/ui/here/HoldToStreamView;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    .line 845
    return-void
.end method

.method public final a(Landroid/app/Activity;Lcom/snapchat/android/ui/here/StreamView$a;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Lcom/snapchat/android/ui/here/StreamView$a;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 309
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Landroid/app/Activity;

    .line 310
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/addlive/view/ALVideoTextureView;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/addlive/view/ALVideoTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-interface {v0, v1}, Laih;->a(Lcom/addlive/view/ALVideoTextureView;)V

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$8;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$8;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    new-instance v1, Lcom/snapchat/android/ui/here/HoldToStreamView$9;

    invoke-direct {v1, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$9;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    invoke-virtual {v0, v1}, Lcom/addlive/view/ALVideoTextureView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->bringToFront()V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    .line 311
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    .line 313
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 513
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    .line 515
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-nez v0, :cond_4

    .line 519
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-eqz v0, :cond_0

    .line 527
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 530
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 532
    :cond_3
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->HERE_BTN_RELEASED:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbeg;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 522
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 542
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    .line 544
    iget v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 546
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 552
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    sub-long/2addr v2, v4

    .line 554
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eq v1, v0, :cond_7

    .line 557
    iget v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_6

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 560
    :cond_6
    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 563
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    if-eq v0, v1, :cond_13

    const/4 v0, 0x1

    .line 567
    :goto_2
    if-eqz v0, :cond_9

    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->m:I

    int-to-long v0, v0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_8

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_9

    .line 570
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbbq;

    sget-object v2, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v1, v2, v3}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/MotionEvent;

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/MotionEvent;

    :cond_a
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_b

    .line 578
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V

    .line 579
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h()V

    .line 583
    :cond_b
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    iget-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-nez v0, :cond_11

    iget-object v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v0

    if-nez v0, :cond_15

    :cond_c
    :goto_4
    iget-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v0, :cond_e

    iget-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-nez v0, :cond_e

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090047

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float v1, v6, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_16

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getVisibility()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_17

    const/4 v1, 0x1

    :goto_6
    iget-boolean v8, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-nez v8, :cond_d

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v2, v8, v2

    if-lez v2, :cond_18

    :cond_d
    const/4 v2, 0x1

    :goto_7
    iput-boolean v2, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    iget-boolean v2, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->f:Z

    if-eqz v2, :cond_e

    if-eq v0, v1, :cond_e

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    if-eqz v0, :cond_1a

    cmpg-float v2, v6, v7

    if-gez v2, :cond_19

    neg-float v1, v1

    :goto_8
    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v1, Lcom/snapchat/android/ui/here/LockToStreamView$1;

    invoke-direct {v1, v3, v0}, Lcom/snapchat/android/ui/here/LockToStreamView$1;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;Z)V

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x96

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;Z)V

    invoke-virtual {v3, v4}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-boolean v1, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eq v0, v1, :cond_10

    iput-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_1f

    iget-object v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v1, v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v2, v5

    int-to-float v0, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float v6, v1, v6

    add-float/2addr v0, v6

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    cmpl-float v4, v4, v5

    if-lez v4, :cond_f

    sub-float v0, v2, v0

    :cond_f
    iget-object v2, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getX()F

    move-result v4

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getRadius()F

    move-result v5

    add-float/2addr v4, v5

    iget-object v5, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    iget-object v4, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->g:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v1, v4

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v1, v5

    invoke-virtual {v2, v5}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/snapchat/android/ui/here/LockToStreamView$2;

    invoke-direct {v0, v3}, Lcom/snapchat/android/ui/here/LockToStreamView$2;-><init>(Lcom/snapchat/android/ui/here/LockToStreamView;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const-wide/16 v0, 0x12c

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/16 v0, 0xff

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(II)V

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    const/4 v0, 0x1

    :goto_9
    new-instance v1, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v2, "HERE_PUBLISH_LOCKED"

    invoke-direct {v1, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    const-string v2, "position"

    if-eqz v0, :cond_1e

    const-string v0, "bottom"

    :goto_a
    invoke-virtual {v1, v2, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    :cond_10
    :goto_b
    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    .line 585
    :cond_11
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    goto/16 :goto_0

    .line 548
    :cond_12
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setUpperRegionHighlight(Z)V

    .line 549
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->BACK_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    goto/16 :goto_1

    .line 563
    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 577
    :cond_14
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->p:Landroid/view/MotionEvent;

    const/4 v0, 0x1

    goto/16 :goto_3

    .line 583
    :cond_15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    iget-object v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020151

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v0, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    iget v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->i:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iput v0, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->h:F

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    goto/16 :goto_4

    :cond_16
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_6

    :cond_18
    const/4 v2, 0x0

    goto/16 :goto_7

    :cond_19
    add-float/2addr v1, v5

    goto/16 :goto_8

    :cond_1a
    cmpg-float v2, v6, v7

    if-gez v2, :cond_1c

    neg-float v1, v1

    invoke-virtual {v3, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    :goto_c
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setVisibility(I)V

    iget-object v1, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    if-eqz v1, :cond_1b

    iget-object v1, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->c:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1b
    invoke-virtual {v3, v6, v7}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v1

    goto/16 :goto_8

    :cond_1c
    add-float/2addr v1, v5

    invoke-virtual {v3, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    goto/16 :goto_9

    :cond_1e
    const-string v0, "top"

    goto/16 :goto_a

    :cond_1f
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-virtual {v3, v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(II)V

    const/4 v0, 0x1

    invoke-virtual {v3, v4, v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;Z)V

    invoke-virtual {v3}, Lcom/snapchat/android/ui/here/LockToStreamView;->invalidate()V

    goto/16 :goto_b
.end method

.method public final a(Lcom/snapchat/android/model/chat/ChatConversation;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 338
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Landroid/app/Activity;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-interface {v0, v1, p0, v2}, Laih;->a(Landroid/app/Activity;Laih$a;Lcom/snapchat/android/analytics/HereAnalytics;)V

    .line 346
    :cond_2
    iget-object v0, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    .line 347
    if-nez v0, :cond_3

    .line 348
    new-instance v0, Lbjc;

    invoke-direct {v0}, Lbjc;-><init>()V

    .line 350
    :try_start_0
    const-string v1, "Zk7iW21C8v4zt5xJlpZX~{0}~WFrs1P2KHtzADoxWMaa7"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    sget-object v3, Lci;->c:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-static {}, Lej;->a()Lej;

    move-result-object v1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lej;->a([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjc;->a(Ljava/lang/String;)V

    .line 351
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-virtual {v1}, Lbjy;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjc;->b(Ljava/lang/String;)V

    .line 353
    iget-object v1, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mMessagingAuthToken:Lbjy;

    invoke-virtual {v1}, Lbjy;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjc;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :cond_3
    :goto_1
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    .line 359
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v1, v0}, Laih;->a(Lbjc;)V

    .line 360
    iput-boolean v5, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    goto :goto_0

    .line 354
    :catch_0
    move-exception v1

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error generating scope for conversation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/snapchat/android/model/chat/ChatConversation;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public final a(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 849
    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    .line 850
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/snapchat/android/model/chat/ChatConversation;->mHereAuth:Lbjc;

    .line 851
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    iput-boolean v2, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    invoke-virtual {v0, p1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 852
    invoke-virtual {p0, v2, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 853
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-nez v0, :cond_0

    .line 790
    :goto_0
    return-void

    .line 770
    :cond_0
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$10;

    invoke-direct {v0, p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView$10;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;Z)V

    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a([B)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 868
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 869
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setCameraInfo() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v0}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v0

    if-nez v0, :cond_2

    .line 872
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must call setCameraPreviewSize() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 877
    :cond_2
    if-nez p1, :cond_4

    .line 917
    :cond_3
    :goto_0
    return-void

    .line 880
    :cond_4
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-nez v0, :cond_5

    .line 881
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-eqz v0, :cond_3

    .line 882
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_3

    .line 885
    :cond_5
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    if-eqz v0, :cond_6

    .line 886
    iput-boolean v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->H:Z

    .line 889
    new-instance v0, Lcom/snapchat/android/ui/here/HoldToStreamView$12;

    invoke-direct {v0, p0}, Lcom/snapchat/android/ui/here/HoldToStreamView$12;-><init>(Lcom/snapchat/android/ui/here/HoldToStreamView;)V

    .line 895
    invoke-virtual {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->post(Ljava/lang/Runnable;)Z

    .line 899
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    sget-object v1, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-interface {v0, p1, v1}, Laih;->a([BLcom/addlive/service/AddLiveService$VideoFrameMetadata;)V

    .line 900
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    sget-object v1, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v1}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getWidth()I

    move-result v1

    sget-object v2, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v2}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget-object v5, Lcom/snapchat/android/ui/here/HoldToStreamView;->j:Lcom/addlive/service/AddLiveService$VideoFrameMetadata;

    invoke-virtual {v5}, Lcom/addlive/service/AddLiveService$VideoFrameMetadata;->getInfo()Landroid/hardware/Camera$CameraInfo;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lare;->a(IIIILandroid/hardware/Camera$CameraInfo;)V

    .line 902
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:[B

    if-eqz v0, :cond_7

    .line 903
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:[B

    invoke-virtual {v0, v1}, Lare;->a([B)V

    .line 908
    :goto_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    if-eqz v0, :cond_3

    .line 910
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:[B

    .line 913
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->LOW:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 915
    iput-boolean v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    goto :goto_0

    .line 905
    :cond_7
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    invoke-virtual {v0, p1}, Lare;->a([B)V

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 320
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    sget-object v1, Lcom/snapchat/android/ui/here/DisconnectReason;->L2S_SWIPE_OUT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-interface {v0, v1}, Laih;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->a()V

    .line 325
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0, v3}, Lcom/snapchat/android/ui/here/StreamView$a;->c(Z)V

    .line 327
    iput-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->S:Landroid/app/Activity;

    .line 328
    iput-object v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    .line 329
    iput-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    goto :goto_0
.end method

.method public final b(Lcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 3
    .param p1    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 366
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v1, v2}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 368
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->R:Z

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0, p1}, Laih;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 374
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->l()V

    .line 376
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    .line 377
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$a;->c(Z)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 857
    if-nez p1, :cond_0

    .line 858
    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->REMOTE_PEER_LEFT:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-virtual {p0, v5, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdp;

    sget-object v2, Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;->ADDLIVE:Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->B:Lcom/snapchat/android/model/chat/ChatConversation;

    iget-object v3, v3, Lcom/snapchat/android/model/chat/ChatConversation;->mTheirUsername:Ljava/lang/String;

    const-string v4, "onUserEvent"

    invoke-direct {v1, v2, v3, v5, v4}, Lbdp;-><init>(Lcom/snapchat/android/livechat/AdlHelper$PresenceSource;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 861
    return-void
.end method

.method public final c()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 385
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->O:Z

    .line 386
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 387
    sget-object v0, Lcom/snapchat/android/camera/model/CameraModel$CameraType;->FRONT_FACING:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->s:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    .line 388
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lbbq;

    sget-object v6, Lcom/snapchat/android/util/eventbus/CameraDisplayState;->SHOW:Lcom/snapchat/android/util/eventbus/CameraDisplayState;

    iget-object v7, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->t:Lcom/snapchat/android/camera/model/CameraModel$CameraType;

    invoke-direct {v3, v6, v7}, Lbbq;-><init>(Lcom/snapchat/android/util/eventbus/CameraDisplayState;Lcom/snapchat/android/camera/model/CameraModel$CameraType;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->I:J

    .line 391
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_0

    const-string v1, "Cannot connect"

    invoke-static {v1, v0}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-nez v0, :cond_0

    .line 399
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 402
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    invoke-virtual {v0}, Lare;->a()V

    .line 405
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    .line 406
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleY(F)V

    .line 408
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f090049

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 411
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 412
    const v6, 0x3ecccccd    # 0.4f

    mul-float/2addr v3, v6

    .line 413
    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    add-float/2addr v0, v3

    .line 415
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v7, v0

    float-to-int v0, v0

    invoke-direct {v6, v7, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v6}, Lcom/snapchat/android/ui/here/HoldToStreamView;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 419
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lbj;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getMeasuredWidth()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v0, v6, v7}, Lbj;->a(D)Lbj;

    .line 420
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lbj;

    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getMeasuredHeight()I

    move-result v3

    int-to-double v6, v3

    invoke-virtual {v0, v6, v7}, Lbj;->a(D)Lbj;

    .line 422
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->d()V

    .line 423
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->q:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_2
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget-object v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/view/View;->setX(F)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget-object v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-virtual {v0, v3}, Landroid/view/View;->setY(F)V

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f()V

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->bringToFront()V

    .line 424
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->k()V

    .line 425
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0}, Lcom/snapchat/android/ui/here/StreamView$a;->p()V

    .line 426
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->a:Lcom/snapchat/android/ui/here/StreamView$a;

    invoke-interface {v0, v1}, Lcom/snapchat/android/ui/here/StreamView$a;->d(Z)V

    .line 427
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->j()V

    .line 428
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    if-nez v0, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 429
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    .line 430
    iput-boolean v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    .line 432
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lwm;->a(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:F

    .line 435
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 436
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    iget v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->o:F

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setHeightThreshold(I)V

    .line 437
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0, v2}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setVisibility(I)V

    .line 438
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->bringToFront()V

    .line 439
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_CHAT_ONBOARDING_REPEATS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_7

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->A:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    sget-object v6, Lcom/snapchat/android/database/SharedPreferenceKey;->VIDEO_CHAT_ONBOARDING_REPEATS:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v6}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v3, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v0, v1

    .line 440
    :goto_2
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->u:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_SOLID_EXPIRE:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    :goto_3
    invoke-virtual {v3, v0}, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay;->setOverlayMode(Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;)V

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeg;

    invoke-direct {v3, v2}, Lbeg;-><init>(Z)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 446
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    .line 448
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    const-string v6, "startHoldingToStream()"

    iget-object v0, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v7, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->DISCONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-eq v0, v7, :cond_9

    :goto_4
    if-nez v1, :cond_0

    sget-object v0, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v0, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iget-wide v0, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    move-wide v0, v4

    :goto_5
    iget-boolean v2, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mAdlConnectedToScope:Z

    new-instance v7, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v8, "HERE_OUTGOING_SESSION_START"

    invoke-direct {v7, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    cmp-long v8, v0, v4

    if-eqz v8, :cond_5

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_5
    const-string v0, "is_connected_to_scope"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    iput-wide v4, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    invoke-virtual {v3, v6}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 428
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 439
    goto :goto_2

    .line 440
    :cond_8
    sget-object v0, Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;->MODE_BLINK:Lcom/snapchat/android/ui/QuickSnapOnboardingOverlay$OverlayMode;

    goto :goto_3

    :cond_9
    move v1, v2

    .line 448
    goto :goto_4

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v8, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    sub-long/2addr v0, v8

    goto :goto_5
.end method

.method public final c(Z)V
    .locals 6

    .prologue
    .line 837
    iput-boolean p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    .line 838
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->C:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRipplesEnabled(Z)V

    .line 839
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    iget-object v1, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    sget-object v2, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTING:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;->CONNECTED:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    iput-object v1, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mOutgoingVideoState:Lcom/snapchat/android/analytics/HereAnalytics$OutgoingVideoState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/snapchat/android/analytics/HereAnalytics;->mVideoOutgoingStart:J

    sub-long/2addr v2, v4

    sget-object v1, Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;->HERE_CONFIRMED:Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;

    invoke-virtual {v0, v1}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/analytics/HereAnalytics$SetupPhase;)V

    new-instance v0, Lcom/snapchat/android/analytics/framework/EasyMetric;

    const-string v1, "HERE_OUTGOING_ACKED"

    invoke-direct {v0, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(J)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v0

    invoke-virtual {v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->e()V

    .line 840
    :cond_0
    return-void

    .line 838
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 452
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->y:Z

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const v10, 0x3da3d70a    # 0.08f

    const/4 v1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 928
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    if-nez v3, :cond_1

    .line 929
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 930
    return-void

    .line 928
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->n:J

    sub-long/2addr v4, v6

    long-to-float v3, v4

    const/high16 v4, 0x43c80000    # 400.0f

    div-float/2addr v3, v4

    sub-float v4, v3, v0

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v3, v3, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v3, :cond_5

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    cmpg-float v3, v4, v0

    if-gez v3, :cond_5

    float-to-double v6, v4

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-float v3, v6

    :goto_1
    cmpl-float v4, v4, v1

    if-lez v4, :cond_2

    iput-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    :cond_2
    iget v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-boolean v5, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    if-eqz v5, :cond_6

    :goto_2
    const v1, 0x3d23d70a    # 0.04f

    invoke-static {v4, v0, v1}, Lauq;->a(FFF)F

    move-result v0

    iput v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    sget-object v0, Lcom/snapchat/android/ui/here/DisconnectReason;->CONNECTION_LOST:Lcom/snapchat/android/ui/here/DisconnectReason;

    invoke-direct {p0, v0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->c(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->h:Lcom/addlive/view/ALVideoTextureView;

    invoke-virtual {v0}, Lcom/addlive/view/ALVideoTextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const v4, 0x3e99999a    # 0.3f

    invoke-static {v1, v4, v10}, Lauq;->a(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    :goto_3
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_4
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    mul-float/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setScaleY(F)V

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()V

    :cond_4
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->i:Lcom/snapchat/android/ui/ConnectingRippleView;

    invoke-virtual {v2, v1}, Lcom/snapchat/android/ui/ConnectingRippleView;->setRippleScale(F)V

    sget-object v1, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    invoke-virtual {v1}, Lare;->a()V

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->K:Lbj;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lbj;->b(D)Lbj;

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v1, v1, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->f()V

    :goto_5
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->invalidate()V

    goto/16 :goto_0

    :cond_5
    move v3, v0

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto/16 :goto_2

    :cond_7
    iget v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->F:F

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    const v4, 0x3ecccccd    # 0.4f

    invoke-static {v1, v4, v10}, Lauq;->a(FFF)F

    move-result v1

    mul-float/2addr v0, v1

    goto :goto_3

    :cond_8
    move v1, v2

    goto :goto_4

    :cond_9
    const v1, 0x3f666666    # 0.9f

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->L:Lbj;

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->d:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v0, v2, v0

    float-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lbj;->b(D)Lbj;

    goto :goto_5
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->e:Z

    return v0
.end method

.method public getPresence()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    invoke-interface {v0}, Laih;->c()Z

    move-result v0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Lcom/snapchat/android/ui/here/StreamView;->onAttachedToWindow()V

    .line 283
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->c(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public onCameraReadyEvent(Lbbp;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 651
    iget-boolean v0, p1, Lbbp;->ready:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lbbp;->isChangingQuality:Z

    if-nez v0, :cond_0

    .line 653
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->n:J

    .line 661
    :goto_0
    return-void

    .line 655
    :cond_0
    iget-boolean v0, p1, Lbbp;->ready:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lbbp;->isChangingQuality:Z

    if-eqz v0, :cond_1

    .line 657
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->P:[B

    .line 659
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->G:Z

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lcom/snapchat/android/ui/here/StreamView;->onDetachedFromWindow()V

    .line 289
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    invoke-virtual {v0, p0}, Lcom/squareup/otto/Bus;->b(Ljava/lang/Object;)V

    .line 290
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v1, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getY()F

    move-result v1

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->getParentHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/here/LockToStreamView;->setY(F)V

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->b()V

    .line 299
    sget-object v0, Lcom/snapchat/android/ui/here/HoldToStreamView;->k:Lare;

    invoke-virtual {v0}, Lare;->b()V

    .line 300
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 597
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/snapchat/android/ui/here/StreamView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 644
    :cond_0
    :goto_0
    return v0

    .line 600
    :cond_1
    iget-object v1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v1, v1, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v1, :cond_2

    .line 601
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->h()V

    .line 602
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->m()V

    .line 605
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 606
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v2, v2, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v2, p1}, Lcom/snapchat/android/ui/here/LockToStreamView;->a(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    if-eqz v2, :cond_6

    .line 610
    :cond_4
    sparse-switch v1, :sswitch_data_0

    .line 617
    :goto_1
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    .line 618
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->b:Z

    .line 619
    invoke-virtual {p0, p1}, Lcom/snapchat/android/ui/here/HoldToStreamView;->a(Landroid/view/MotionEvent;)V

    .line 622
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    if-eq v1, v0, :cond_5

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 625
    :cond_5
    iput-boolean v4, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->J:Z

    goto :goto_0

    .line 613
    :sswitch_0
    iget-object v2, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lbeg;

    invoke-direct {v3, v4}, Lbeg;-><init>(Z)V

    invoke-virtual {v2, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 629
    :cond_6
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->r:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 641
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    if-eqz v0, :cond_7

    .line 642
    invoke-virtual {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 644
    :cond_7
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/here/LockToStreamView;->d:Z

    goto :goto_0

    .line 610
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method public setCanStreamVideo(ZLcom/snapchat/android/ui/here/DisconnectReason;)V
    .locals 8
    .param p2    # Lcom/snapchat/android/ui/here/DisconnectReason;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 794
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->D:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->E:Z

    .line 795
    if-nez p1, :cond_0

    .line 796
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    invoke-virtual {v0, p2}, Lcom/snapchat/android/analytics/HereAnalytics;->a(Lcom/snapchat/android/ui/here/DisconnectReason;)V

    .line 797
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->g:Lcom/snapchat/android/ui/here/LockToStreamView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/here/LockToStreamView;->a()V

    .line 798
    invoke-direct {p0}, Lcom/snapchat/android/ui/here/HoldToStreamView;->g()V

    .line 799
    iget-object v0, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->M:Lcom/squareup/otto/Bus;

    new-instance v3, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;

    sget-object v6, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;->HIGH:Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;

    invoke-direct {v3, v6}, Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent;-><init>(Lcom/snapchat/android/util/eventbus/ChangePreviewQualityEvent$PreviewQuality;)V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 802
    :cond_0
    iget-object v3, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->Q:Lcom/snapchat/android/analytics/HereAnalytics;

    iget-wide v6, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    :goto_1
    if-eq p1, v1, :cond_1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_2
    iput-wide v0, v3, Lcom/snapchat/android/analytics/HereAnalytics;->mTimeStartCanStreamVideo:J

    .line 803
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 794
    goto :goto_0

    :cond_3
    move v1, v2

    .line 802
    goto :goto_1

    :cond_4
    move-wide v0, v4

    goto :goto_2
.end method

.method public setLiveChatProvider(Laih;)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/snapchat/android/ui/here/HoldToStreamView;->c:Laih;

    .line 268
    return-void
.end method
