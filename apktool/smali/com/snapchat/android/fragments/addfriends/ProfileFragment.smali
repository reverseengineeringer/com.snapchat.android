.class public Lcom/snapchat/android/fragments/addfriends/ProfileFragment;
.super Lcom/snapchat/android/util/fragment/SnapchatFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/snapchat/android/ui/ProfilePictureView$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;,
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$d;,
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;,
        Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/snapchat/android/util/fragment/SnapchatFragment;",
        "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/snapchat/android/ui/ProfilePictureView$a;"
    }
.end annotation


# static fields
.field private static final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/ViewStub;

.field private C:Lcom/snapchat/android/ui/ProfileCameraMaskView;

.field private D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

.field private E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

.field private F:Landroid/graphics/drawable/AnimationDrawable;

.field private G:I

.field private H:I

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Landroid/content/res/ColorStateList;

.field private L:Landroid/content/res/ColorStateList;

.field private final M:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final N:Lakr;

.field private final O:Laxn;

.field private final P:Laph;

.field private final Q:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field

.field private final R:Lbhg;

.field private final S:Lbgw;

.field private final T:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private final U:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final V:Lcom/squareup/otto/Bus;

.field private final W:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final X:Lapg;

.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

.field public c:Lxn;

.field d:Z

.field protected e:Lcom/snapchat/android/ui/ProfilePictureView;

.field protected f:Landroid/animation/AnimatorSet;

.field protected g:Landroid/view/View;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/view/View;

.field protected j:Landroid/widget/ImageView;

.field final k:Lbhh;

.field final l:Lbgx;

.field private n:I

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private w:Landroid/view/View;

.field private x:Landroid/view/ViewGroup;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 124
    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->USERNAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_SEEN_ADDED_ME_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v1}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/database/SharedPreferenceKey;->DISPLAY_NAME:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v2}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->IDENTITY_RED_GEAR_IS_ON:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_PROFILE_IMAGES:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v4}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ldr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldr;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .prologue
    .line 241
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v1

    sget-object v2, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    invoke-static {}, Laph;->a()Laph;

    move-result-object v3

    sget-object v4, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v5, Lbhg;

    invoke-direct {v5}, Lbhg;-><init>()V

    new-instance v6, Lbgw;

    invoke-direct {v6}, Lbgw;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v7

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v8

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;-><init>(Lakr;Laxn;Laph;Ljavax/inject/Provider;Lbhg;Lbgw;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 244
    return-void
.end method

.method private constructor <init>(Lakr;Laxn;Laph;Ljavax/inject/Provider;Lbhg;Lbgw;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lakr;",
            "Laxn;",
            "Laph;",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;",
            "Lbhg;",
            "Lbgw;",
            "Lcom/snapchat/android/util/profileimages/ProfileImageUtils;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 225
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 135
    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    .line 167
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->M:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 177
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Ljava/util/HashSet;

    .line 193
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lapg;

    .line 226
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->N:Lakr;

    .line 227
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Laxn;

    .line 228
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    .line 229
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Q:Ljavax/inject/Provider;

    .line 230
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->R:Lbhg;

    .line 231
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Lbhh;

    .line 232
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->S:Lbgw;

    .line 233
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Lbgx;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    .line 235
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->T:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 236
    iput-object p8, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    .line 237
    iput-object p9, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->U:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 238
    return-void
.end method

.method private A()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "profile images - saving profile images with dirty "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->B()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1101
    invoke-static {}, Lakr;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    .line 1118
    :cond_0
    :goto_1
    return-void

    .line 1100
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1106
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "profile images - IsUploading : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1107
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    if-nez v0, :cond_0

    .line 1110
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    .line 1111
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-static {v0}, Lbhp;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lakr;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->N:Lakr;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lxn;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    return v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Laph;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 113
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009c

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setUsername(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    return v0
.end method

.method private w()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-static {}, Lakr;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lakr;->I()I

    move-result v4

    invoke-static {v4}, Lauy;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0040

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    :goto_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->K:Landroid/content/res/ColorStateList;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/widget/ImageView;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "refreshNewFriendsButton - LastSeenAddedMeTimestamp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lakr;->j()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " # of unseen friend requests: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 366
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    .line 367
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z()V

    .line 368
    return-void

    .line 364
    :cond_0
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0c01db

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    aput-object v5, v6, v0

    invoke-virtual {v2, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 365
    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->L:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method private x()V
    .locals 5
    .annotation build Lawj;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 379
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 380
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lakp;->mInitialized:Z

    if-nez v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Laxn;

    const-string v1, "snaptag"

    invoke-virtual {v0, v1}, Laxn;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    new-instance v0, Lbhi;

    sget-object v1, Laxo;->PROFILE_IMAGE_CACHE:Laxn;

    const-string v2, "snaptag"

    invoke-direct {v0, v1, v2}, Lbhi;-><init>(Laxn;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->R:Lbhg;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Lbhh;

    new-instance v3, Lbhg$1;

    invoke-direct {v3, v1, v0, v2}, Lbhg$1;-><init>(Lbhg;Lbhj;Lbhh;)V

    iget-object v0, v1, Lbhg;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Lbhg$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Laxn;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Laxn;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->S:Lbgw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Lbgx;

    new-instance v2, Lbgw$1;

    invoke-direct {v2, v0, v1}, Lbgw$1;-><init>(Lbgw;Lbgx;)V

    iget-object v0, v0, Lbgw;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lbgw$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 401
    invoke-static {}, Lakr;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laph;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 409
    :cond_3
    invoke-static {}, Lakr;->bc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 410
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lakr;->bc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laph;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 413
    :cond_4
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(I)V

    goto :goto_0
.end method

.method private y()I
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Q:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lakp;

    .line 465
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lakp;->h()I

    move-result v0

    goto :goto_0
.end method

.method private z()V
    .locals 2

    .prologue
    .line 598
    invoke-static {}, Lakr;->bi()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 600
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 605
    :goto_0
    return-void

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const-string v1, "not red"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 493
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 498
    if-nez p1, :cond_2

    .line 499
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lchc;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 971
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    :goto_0
    return-void

    .line 976
    :cond_0
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/graphics/drawable/AnimationDrawable;

    move v1, v2

    .line 977
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 978
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 979
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v4, 0xc8

    invoke-virtual {v0, v3, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 981
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 984
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 985
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 347
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m()Z

    move-result v1

    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    move-result v1

    if-nez v1, :cond_0

    .line 354
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method protected final h_()Z
    .locals 1

    .prologue
    .line 472
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method protected final i()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 858
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 859
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    .line 861
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v2, "y"

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v4, v4, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->a:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v2, "scaleX"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v2, "scaleY"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 874
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 910
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 911
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 912
    return-void
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o()V

    .line 944
    const/4 v0, 0x1

    .line 947
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 966
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    :goto_0
    return-void

    .line 1003
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A()V

    .line 1004
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f63d70a    # 0.89f

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 518
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 519
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    .line 520
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onClick - animationStarted "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCameraViewFlipperScrolling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", (mCameraViewFlipper == null) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-nez v4, :cond_3

    move v4, v1

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 524
    if-nez v0, :cond_0

    if-eqz v3, :cond_4

    .line 586
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v0, v2

    .line 518
    goto :goto_0

    :cond_2
    move v3, v2

    .line 519
    goto :goto_1

    :cond_3
    move v4, v2

    .line 520
    goto :goto_2

    .line 529
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 530
    const v3, 0x7f0a02f6

    if-ne v0, v3, :cond_5

    .line 531
    sget-object v0, Lkf;->OTHER:Lkf;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADDED_ME_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v2

    invoke-static {}, Lakr;->C()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 535
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDED_ME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 537
    :cond_5
    const v3, 0x7f0a02f9

    if-ne v0, v3, :cond_6

    .line 538
    sget-object v0, Lkf;->OTHER:Lkf;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_ADD_FRIENDS_MENU_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v2

    invoke-static {}, Lakr;->C()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 542
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_MENU_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 544
    :cond_6
    const v3, 0x7f0a02fa

    if-ne v0, v3, :cond_7

    .line 545
    sget-object v0, Lkf;->OTHER:Lkf;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MY_FRIENDS_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v2

    invoke-static {}, Lakr;->C()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 549
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->FRIENDS_CONTACTS_TOGGLE_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 551
    :cond_7
    const v3, 0x7f0a02fc

    if-ne v0, v3, :cond_9

    .line 552
    sget-object v0, Lkf;->OTHER:Lkf;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->SETTINGS:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v3

    invoke-static {}, Lakr;->C()Z

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 557
    invoke-static {}, Lakr;->bi()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 559
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lakr;->j(J)V

    .line 560
    invoke-static {v2}, Lakr;->r(Z)V

    .line 562
    :cond_8
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 564
    :cond_9
    const v3, 0x7f0a02fb

    if-ne v0, v3, :cond_a

    .line 565
    sget-object v0, Lkf;->OTHER:Lkf;

    sget-object v1, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->HELP_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v2

    invoke-static {}, Lakr;->C()Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 569
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lbev;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;-><init>()V

    invoke-direct {v1, v2}, Lbev;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 570
    :cond_a
    const v3, 0x7f0a000b

    if-ne v0, v3, :cond_b

    .line 571
    sget-object v0, Lkf;->BACK_BUTTON:Lkf;

    sget-object v2, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->CAMERA_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()I

    move-result v3

    invoke-static {}, Lakr;->C()Z

    move-result v4

    invoke-static {v0, v2, v3, v4}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lkf;Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;IZ)V

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v2, Lbdr;

    invoke-direct {v2, v1}, Lbdr;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 575
    :cond_b
    const v3, 0x7f0a007c

    if-eq v0, v3, :cond_c

    const v3, 0x7f0a02f4

    if-ne v0, v3, :cond_d

    .line 576
    :cond_c
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-static {}, Lakr;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lakr;->y()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lauf;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)Lauf;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->M:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, v0, Lauf;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c0116

    invoke-static {v2, v3, v1}, Lauv;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapw;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lapw;->show()V

    invoke-virtual {v0}, Lapw;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_3

    .line 577
    :cond_d
    const v3, 0x7f0a02f1

    if-eq v0, v3, :cond_e

    const v3, 0x7f0a030f

    if-ne v0, v3, :cond_0

    .line 578
    :cond_e
    invoke-static {}, Lakr;->E()Z

    move-result v0

    if-nez v0, :cond_10

    .line 581
    invoke-static {}, Lakr;->E()Z

    move-result v0

    if-nez v0, :cond_f

    new-instance v0, Lqr;

    sget-object v3, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE_PICTURES:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v3}, Lqr;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqr;->execute()V

    :cond_f
    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 582
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 584
    :cond_10
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-nez v0, :cond_14

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-interface {v3}, Lxn;->b()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_11
    move v3, v1

    :goto_5
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v4}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v4

    if-ne v4, v1, :cond_16

    :cond_12
    move v4, v1

    :goto_6
    if-nez v0, :cond_13

    if-nez v3, :cond_13

    if-eqz v4, :cond_17

    :cond_13
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v0

    goto/16 :goto_3

    :cond_14
    move v0, v2

    goto :goto_4

    :cond_15
    move v3, v2

    goto :goto_5

    :cond_16
    move v4, v2

    goto :goto_6

    :cond_17
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-interface {v0}, Lxn;->a()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-interface {v0}, Lxn;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-interface {v0}, Lxn;->c()V

    :cond_18
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    if-nez v0, :cond_19

    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;-><init>(B)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v3, v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    iput v6, v5, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->a:F

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    sub-float v3, v4, v3

    iput v3, v5, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->c:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iput v4, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->d:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iput v0, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    :cond_19
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v4, "translationY"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->c:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    const-string v4, "scaleY"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    iget-object v0, v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1b

    :goto_7
    if-nez v1, :cond_1a

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    const v1, 0x3e333334    # 0.17500001f

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    iget v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:I

    iget v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:I

    add-int/2addr v3, v4

    const v4, 0x3f266666    # 0.65f

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v5, v6

    iget v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v1

    int-to-float v8, v3

    add-int/2addr v1, v4

    int-to-float v1, v1

    add-int/2addr v3, v5

    int-to-float v3, v3

    invoke-direct {v6, v7, v8, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f080001

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-virtual {v3, v5, v7, v8, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v3, v6, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iput-object v0, v1, Lcom/snapchat/android/ui/ProfileCameraMaskView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->invalidate()V

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Lcom/snapchat/android/ui/ProfileCameraMaskView;->setVisibility(I)V

    :cond_1a
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    :cond_1b
    move v1, v2

    goto/16 :goto_7
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 672
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 688
    :goto_0
    return-object v0

    .line 674
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 676
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "display_name"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "display_name_source"

    aput-object v4, v3, v0

    .line 678
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 248
    invoke-static {}, Lnw;->d()V

    .line 250
    const v0, 0x7f040089

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->mFragmentLayout:Landroid/view/View;

    .line 251
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    const v0, 0x7f0a02f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:Landroid/widget/TextView;

    .line 256
    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/view/View;

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/view/View;

    .line 261
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z()V

    .line 266
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/view/View;

    .line 267
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const v0, 0x7f0a02f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    .line 271
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    const v0, 0x7f0a02f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/view/View;

    .line 273
    const v0, 0x7f0a02f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/widget/ImageView;

    .line 275
    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A:Landroid/view/View;

    .line 277
    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewStub;

    .line 278
    const v0, 0x7f0a02f0

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    .line 279
    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/view/View;

    .line 280
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Landroid/widget/TextView;

    .line 283
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->K:Landroid/content/res/ColorStateList;

    .line 285
    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->L:Landroid/content/res/ColorStateList;

    .line 286
    const v1, 0x7f09007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:I

    .line 288
    const v1, 0x7f090077

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:I

    .line 290
    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Ljava/lang/String;

    .line 291
    const v1, 0x7f0c01dc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->GHOST:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbbj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Ljava/lang/String;

    .line 294
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 296
    invoke-static {}, Lnw;->e()V

    .line 297
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onFriendsWhoAddedMeUpdatedEvent(Lbcp;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 615
    return-void
.end method

.method public onImageProfileBitmapReadyForProfile(Lbcz;)V
    .locals 5
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profile images - received ImageProfileBitmapReadyForProfileEvent for image at index : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lbcz;->mProfileImageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 634
    iget-object v0, p1, Lbcz;->mBitmap:Landroid/graphics/Bitmap;

    .line 635
    if-eqz v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profile images - adding bitmap into mProfileImagesList with mProfileImagesList size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 642
    :cond_0
    iget v0, p1, Lbcz;->mProfileImageIndex:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 643
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 645
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 647
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 649
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Ljava/util/List;)V

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    invoke-static {}, Lakr;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    :cond_1
    invoke-static {v4}, Lakr;->d(Z)V

    .line 654
    invoke-static {v4}, Lakr;->b(I)V

    .line 668
    :cond_2
    :goto_0
    return-void

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c00df

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 661
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V

    .line 663
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "profile images - failed to process new set of pics with size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 113
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "display_name_source"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    :cond_1
    const-string v0, "display_name"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lakr;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4b0
        :pswitch_0
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 322
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 323
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 328
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A()V

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    const/16 v1, 0x405

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 331
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    const/16 v1, 0x406

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->b(ILapg;)V

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 335
    return-void
.end method

.method public onProfileImagesFetchedEvent(Lbdq;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    .line 627
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lnw;->d()V

    .line 309
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Z

    .line 311
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 312
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    const/16 v1, 0x405

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 314
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    const/16 v1, 0x406

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lapg;

    invoke-virtual {v0, v1, v2}, Laph;->a(ILapg;)V

    .line 316
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 317
    invoke-static {}, Lnw;->e()V

    .line 318
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 510
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 513
    :cond_0
    return-void
.end method

.method public onSnapTagCacheUpdatedEvent(Lbes;)V
    .locals 2
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 619
    iget-object v0, p1, Lbes;->mKey:Ljava/lang/String;

    const-string v1, "snaptag"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    .line 622
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 302
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 303
    invoke-static {p0}, Lakr;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 304
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 339
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 340
    invoke-static {p0}, Lakr;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 341
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    .line 342
    return-void
.end method

.method public onUserLoadedEvent(Lbfq;)V
    .locals 0
    .annotation runtime Lbpi;
    .end annotation

    .prologue
    .line 609
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 610
    return-void
.end method

.method public final p()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x4

    const-wide/16 v10, 0x1c2

    const/4 v9, 0x2

    .line 1009
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lxn;

    invoke-interface {v0}, Lxn;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1019
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    invoke-static {}, Lakr;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Long;)V

    .line 1015
    iput v13, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v14, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 1016
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v12}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 1018
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v2, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v3, "alpha"

    new-array v4, v9, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v4, "scaleX"

    new-array v5, v9, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    iget-object v3, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v4, "scaleY"

    new-array v5, v9, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v1, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v3, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v9, [F

    fill-array-data v5, :array_3

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v5, "scaleX"

    new-array v6, v9, [F

    fill-array-data v6, :array_4

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->b:Landroid/widget/TextView;

    const-string v5, "scaleY"

    new-array v6, v9, [F

    fill-array-data v6, :array_5

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_6

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v5, "scaleX"

    new-array v6, v9, [F

    fill-array-data v6, :array_7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v5, "scaleY"

    new-array v6, v9, [F

    fill-array-data v6, :array_8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v2, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v4, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_9

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v6, "scaleX"

    new-array v7, v9, [F

    fill-array-data v7, :array_a

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->c:Landroid/widget/TextView;

    const-string v6, "scaleY"

    new-array v7, v9, [F

    fill-array-data v7, :array_b

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_c

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v6, "scaleX"

    new-array v7, v9, [F

    fill-array-data v7, :array_d

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v6, "scaleY"

    new-array v7, v9, [F

    fill-array-data v7, :array_e

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v6, "alpha"

    new-array v7, v9, [F

    fill-array-data v7, :array_f

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v7, "scaleX"

    new-array v8, v9, [F

    fill-array-data v8, :array_10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    iget-object v6, v0, Lcom/snapchat/android/ui/ProfilePictureView;->d:Landroid/widget/TextView;

    const-string v7, "scaleY"

    new-array v8, v9, [F

    fill-array-data v8, :array_11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v4, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/snapchat/android/ui/ProfilePictureView$1;

    invoke-direct {v5, v0}, Lcom/snapchat/android/ui/ProfilePictureView$1;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/snapchat/android/ui/ProfilePictureView$2;

    invoke-direct {v5, v0}, Lcom/snapchat/android/ui/ProfilePictureView$2;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/snapchat/android/ui/ProfilePictureView$3;

    invoke-direct {v5, v0}, Lcom/snapchat/android/ui/ProfilePictureView$3;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v3, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v5, Lcom/snapchat/android/ui/ProfilePictureView$4;

    invoke-direct {v5, v0}, Lcom/snapchat/android/ui/ProfilePictureView$4;-><init>(Lcom/snapchat/android/ui/ProfilePictureView;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v12, [Landroid/animation/Animator;

    aput-object v1, v5, v13

    aput-object v2, v5, v14

    aput-object v3, v5, v9

    const/4 v1, 0x3

    aput-object v4, v5, v1

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_b
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_d
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_e
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_f
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_10
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data

    :array_11
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public final q()V
    .locals 4

    .prologue
    .line 1023
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1030
    return-void
.end method

.method public final r()V
    .locals 8

    .prologue
    .line 1034
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1035
    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->b(Ljava/lang/Long;)V

    .line 1038
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1039
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/widget/ImageView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1040
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "op_code"

    const/16 v7, 0x405

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "last_deleted"

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1041
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()V

    .line 1042
    return-void
.end method

.method public final t()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1046
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    if-nez v0, :cond_0

    .line 1097
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v5}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 1056
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 1057
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 1060
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Boolean;)V

    .line 1072
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getBitmapFromView()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1074
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    sget-object v0, Lavf;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1063
    :cond_2
    invoke-static {}, Lakr;->D()I

    move-result v1

    .line 1064
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    .line 1065
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "profile images - sharing with profile image index: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sharing count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 1068
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lakr;->b(I)V

    .line 1070
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method protected final u()V
    .locals 5
    .annotation build Lcbr;
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1125
    invoke-static {}, Lakr;->z()J

    move-result-wide v2

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Laxn;

    invoke-static {v0, v2, v3, v1}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Ljava/util/List;JLaxn;)V

    .line 1129
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Laph;

    iget-object v2, v1, Laph;->c:Landroid/content/Context;

    invoke-virtual {v1, v2}, Laph;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "op_code"

    const/16 v4, 0x406

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, v1, Laph;->c:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Laph;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1130
    return-void
.end method

.method protected final v()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1141
    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:I

    .line 1142
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    .line 1143
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 1145
    :cond_0
    return-void
.end method
