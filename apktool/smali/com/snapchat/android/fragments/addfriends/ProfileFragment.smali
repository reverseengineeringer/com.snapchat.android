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
.field private static final q:Ljava/util/Set;
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

.field private B:Landroid/view/ViewGroup;

.field private C:Landroid/widget/ImageView;

.field private D:Landroid/widget/ImageView;

.field private E:Landroid/view/View;

.field private F:Landroid/view/ViewStub;

.field private G:Lcom/snapchat/android/ui/ProfileCameraMaskView;

.field private H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

.field private I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

.field private J:Landroid/graphics/drawable/AnimationDrawable;

.field private K:I

.field private L:I

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Landroid/content/res/ColorStateList;

.field private P:Landroid/content/res/ColorStateList;

.field private Q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

.field private final R:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field

.field private final S:Lbgg;

.field private final T:Lbfw;

.field private final U:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

.field private final V:Lazn;

.field private final W:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

.field private final X:Lcom/squareup/otto/Bus;

.field private Y:Laok;

.field a:Ljava/util/List;
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

.field public c:Lwr;

.field final d:Lajx;

.field final e:Lawp;

.field final f:Laol;

.field g:Z

.field protected h:Lcom/snapchat/android/ui/ProfilePictureView;

.field protected i:Landroid/animation/AnimatorSet;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/TextView;

.field protected l:Landroid/view/View;

.field protected m:Landroid/widget/ImageView;

.field final n:Lbgh;

.field final o:Lbfx;

.field p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:I

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/view/View;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/view/View;

.field private x:Landroid/view/View;

.field private y:Landroid/widget/ImageView;

.field private z:Landroid/view/View;


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

    invoke-static {v0, v1, v2, v3, v4}, Ldi;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ldi;

    move-result-object v0

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .prologue
    .line 245
    invoke-static {}, Lajx;->a()Lajx;

    move-result-object v1

    sget-object v2, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    invoke-static {}, Laol;->a()Laol;

    move-result-object v3

    sget-object v4, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    new-instance v5, Lbgg;

    invoke-direct {v5}, Lbgg;-><init>()V

    new-instance v6, Lbfw;

    invoke-direct {v6}, Lbfw;-><init>()V

    invoke-static {}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a()Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    move-result-object v7

    invoke-static {}, Lazn;->a()Lazn;

    move-result-object v8

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v9

    invoke-static {}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a()Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    move-result-object v10

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;-><init>(Lajx;Lawp;Laol;Ljavax/inject/Provider;Lbgg;Lbfw;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lazn;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V

    .line 249
    return-void
.end method

.method private constructor <init>(Lajx;Lawp;Laol;Ljavax/inject/Provider;Lbgg;Lbfw;Lcom/snapchat/android/util/profileimages/ProfileImageUtils;Lazn;Lcom/squareup/otto/Bus;Lcom/snapchat/android/analytics/ProfileEventAnalytics;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lajx;",
            "Lawp;",
            "Laol;",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;",
            "Lbgg;",
            "Lbfw;",
            "Lcom/snapchat/android/util/profileimages/ProfileImageUtils;",
            "Lazn;",
            "Lcom/squareup/otto/Bus;",
            "Lcom/snapchat/android/analytics/ProfileEventAnalytics;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-direct {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;-><init>()V

    .line 134
    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    .line 166
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_MAIN_PAGE:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    .line 177
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    .line 192
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Ljava/util/HashSet;

    .line 193
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$1;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Y:Laok;

    .line 229
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Lajx;

    .line 230
    iput-object p2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lawp;

    .line 231
    iput-object p3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    .line 232
    iput-object p4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->R:Ljavax/inject/Provider;

    .line 233
    iput-object p5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->S:Lbgg;

    .line 234
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$b;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:Lbgh;

    .line 235
    iput-object p6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->T:Lbfw;

    .line 236
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;

    invoke-direct {v0, p0, v1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$a;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;B)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Lbfx;

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    .line 238
    iput-object p7, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->U:Lcom/snapchat/android/util/profileimages/ProfileImageUtils;

    .line 239
    iput-object p8, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->V:Lazn;

    .line 240
    iput-object p9, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    .line 241
    iput-object p10, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->W:Lcom/snapchat/android/analytics/ProfileEventAnalytics;

    .line 242
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic a(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lcgb;
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
    const/4 v4, 0x0

    .line 916
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Landroid/graphics/drawable/AnimationDrawable;

    .line 917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 918
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 919
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 922
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 923
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 924
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->J:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 925
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - start animating"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 926
    return-void
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lajx;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->d:Lajx;

    return-object v0
.end method

.method static synthetic b(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic c(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    return-object v0
.end method

.method static synthetic e(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/ProfileCameraMaskView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    return-object v0
.end method

.method static synthetic f(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    return-object v0
.end method

.method static synthetic h(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lwr;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    return-object v0
.end method

.method static synthetic i(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/squareup/otto/Bus;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    return-object v0
.end method

.method static synthetic j(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    return v0
.end method

.method static synthetic k(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->M:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Laol;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    return-object v0
.end method

.method static synthetic m(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 112
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->C:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic n(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->N:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Landroid/view/ViewStub;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/view/ViewStub;

    return-object v0
.end method

.method static synthetic p(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)Lcom/snapchat/android/ui/SharedProfileSnapcodeView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    return-object v0
.end method

.method static synthetic q(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04009a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setUsername(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic r(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V
    .locals 0

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    return-void
.end method

.method static synthetic s(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    return v0
.end method

.method private u()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 369
    invoke-static {}, Lajx;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lajx;->I()I

    move-result v4

    invoke-static {v4}, Laua;->b(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0040

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v5, v6, v2

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->R:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    if-nez v0, :cond_3

    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Landroid/content/res/ColorStateList;

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Landroid/widget/ImageView;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v0, "ProfileFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "refreshNewFriendsButton - LastSeenAddedMeTimestamp: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->j()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " # of unseen friend requests: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 371
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 372
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 373
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-lez v4, :cond_2

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0c01db

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v2

    aput-object v5, v6, v1

    invoke-virtual {v0, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 370
    :cond_3
    invoke-virtual {v0}, Lajv;->h()I

    move-result v0

    move v3, v0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Landroid/content/res/ColorStateList;

    goto :goto_3
.end method

.method private v()V
    .locals 5
    .annotation build Lavl;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 384
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->R:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lajv;

    .line 385
    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lajv;->mInitialized:Z

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - attempting to load snapcode and profile images from cache"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lawp;

    const-string v1, "snaptag"

    invoke-virtual {v0, v1}, Lawp;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 396
    new-instance v0, Lbgi;

    sget-object v1, Lawq;->PROFILE_IMAGE_CACHE:Lawp;

    const-string v2, "snaptag"

    invoke-direct {v0, v1, v2}, Lbgi;-><init>(Lawp;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->S:Lbgg;

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n:Lbgh;

    new-instance v3, Lbgg$1;

    invoke-direct {v3, v1, v0, v2}, Lbgg$1;-><init>(Lbgg;Lbgj;Lbgh;)V

    iget-object v0, v1, Lbgg;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v0, v1}, Lbgg$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->e:Lawp;

    invoke-static {v0}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils;->a(Lawp;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->T:Lbfw;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->o:Lbfx;

    new-instance v2, Lbfw$1;

    invoke-direct {v2, v0, v1}, Lbfw$1;-><init>(Lbfw;Lbfx;)V

    iget-object v0, v0, Lbfw;->mExecutor:Ljava/util/concurrent/Executor;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v0, v1}, Lbfw$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 405
    :cond_2
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - no cached profile images found"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    invoke-static {}, Lajx;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - no cached images found and try downloading from server"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->MEDIUM:Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;

    invoke-virtual {v2}, Lcom/snapchat/android/util/profileimages/ProfileImageUtils$ProfileImageSize;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Laol;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :cond_3
    invoke-static {}, Lajx;->bf()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 414
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lajx;->bf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Laol;->c(Landroid/content/Context;Ljava/lang/String;)I

    .line 417
    :cond_4
    invoke-virtual {p0, v4}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(I)V

    .line 419
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - no cached snapcode showing white ghost only"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 569
    invoke-static {}, Lajx;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 571
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const-string v1, "red"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 576
    :goto_0
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 574
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const-string v1, "not red"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private x()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 804
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v5, v0, Lcom/snapchat/android/ui/ProfilePictureView;->g:Z

    .line 805
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    .line 807
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/view/View;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Landroid/view/View;

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

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    const-string v2, "alpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v2, "y"

    new-array v3, v6, [F

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v4, v4, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->a:F

    aput v4, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v2, "scaleX"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v2, "scaleY"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 820
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$3;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 856
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 857
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 858
    return-void
.end method

.method private y()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1039
    const-string v3, "ProfileFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "profile images - saving profile images with dirty "

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lajx;->B()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1040
    invoke-static {}, Lajx;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    .line 1057
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1039
    goto :goto_0

    .line 1045
    :cond_2
    const-string v0, "ProfileFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "profile images - IsUploading : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1046
    iget-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    if-nez v0, :cond_0

    .line 1049
    iput-boolean v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    .line 1050
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;

    invoke-direct {v0, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$6;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-static {v0}, Lbgp;->b(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 487
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 492
    if-nez p1, :cond_2

    .line 493
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 496
    :cond_2
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 497
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final b()Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;->DRAW_BEHIND:Lcom/snapchat/android/ui/window/WindowConfiguration$StatusBarDrawMode;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 352
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l()Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->g()Z

    move-result v0

    goto :goto_0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 889
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->n()V

    .line 890
    const/4 v0, 0x1

    .line 893
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final j_()Z
    .locals 1

    .prologue
    .line 466
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/ProfilePictureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .prologue
    .line 912
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

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

.method public final n()V
    .locals 1

    .prologue
    .line 938
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()V

    .line 943
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    goto :goto_0
.end method

.method public final o()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const/4 v12, 0x4

    const-wide/16 v10, 0x1c2

    const/4 v9, 0x2

    .line 948
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-interface {v0}, Lwr;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    invoke-static {}, Lajx;->z()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Long;)V

    .line 954
    iput v13, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v14, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 955
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v12}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

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

.method public onClick(Landroid/view/View;)V
    .locals 10

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const v8, 0x3f63d70a    # 0.89f

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 512
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 513
    :goto_0
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v3}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    .line 514
    :goto_1
    const-string v5, "ProfileFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "onClick - animationStarted "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", isCameraViewFlipperScrolling "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", (mCameraViewFlipper == null) "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-nez v4, :cond_4

    move v4, v1

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", view "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v4, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 518
    if-nez v0, :cond_0

    if-eqz v3, :cond_5

    .line 519
    :cond_0
    const-string v0, "ProfileFragment"

    const-string v1, "Ignore the click event when any animation or scroll is going on."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 512
    goto :goto_0

    :cond_3
    move v3, v2

    .line 513
    goto :goto_1

    :cond_4
    move v4, v2

    .line 514
    goto :goto_2

    .line 523
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 524
    const v3, 0x7f0a02f7

    if-ne v0, v3, :cond_6

    .line 525
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADDED_ME_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 527
    :cond_6
    const v3, 0x7f0a02fa

    if-ne v0, v3, :cond_7

    .line 528
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->ADD_FRIENDS_MENU_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 530
    :cond_7
    const v3, 0x7f0a02fb

    if-ne v0, v3, :cond_8

    .line 531
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->FRIENDS_CONTACTS_TOGGLE_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 533
    :cond_8
    const v3, 0x7f0a02fd

    if-ne v0, v3, :cond_a

    .line 535
    invoke-static {}, Lajx;->bl()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 537
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lajx;->j(J)V

    .line 538
    invoke-static {v2}, Lajx;->s(Z)V

    .line 540
    :cond_9
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;->SETTINGS_FRAGMENT:Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/fragments/addfriends/LeftSwipeContentFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 542
    :cond_a
    const v3, 0x7f0a02fc

    if-ne v0, v3, :cond_b

    .line 543
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdw;

    new-instance v2, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;

    invoke-direct {v2}, Lcom/snapchat/android/fragments/addfriends/SnapTagHelpFragment;-><init>()V

    invoke-direct {v1, v2}, Lbdw;-><init>(Lcom/snapchat/android/util/fragment/SnapchatFragment;)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 544
    :cond_b
    const v3, 0x7f0a000a

    if-ne v0, v3, :cond_c

    .line 545
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->X:Lcom/squareup/otto/Bus;

    new-instance v2, Lbcr;

    invoke-direct {v2, v1}, Lbcr;-><init>(I)V

    invoke-virtual {v0, v2}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 546
    :cond_c
    const v3, 0x7f0a007c

    if-eq v0, v3, :cond_d

    const v3, 0x7f0a02f5

    if-ne v0, v3, :cond_e

    .line 547
    :cond_d
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/snapchat/android/model/Friend;

    invoke-static {}, Lajx;->l()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lajx;->y()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/snapchat/android/model/Friend;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Latg;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)Latg;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Q:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    iput-object v1, v0, Latg;->mAnalyticsContext:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f0c0117

    invoke-static {v2, v3, v1}, Latx;->a(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapa;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Lapa;->show()V

    invoke-virtual {v0}, Lapa;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    goto/16 :goto_3

    .line 548
    :cond_e
    const v3, 0x7f0a02f2

    if-eq v0, v3, :cond_f

    const v3, 0x7f0a0310

    if-ne v0, v3, :cond_1

    .line 549
    :cond_f
    const-string v0, "ProfileFragment"

    const-string v3, "profile images - user clicks the snapcode button or profile pics tooltips"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    invoke-static {}, Lajx;->E()Z

    move-result v0

    if-nez v0, :cond_11

    .line 552
    invoke-static {}, Lajx;->E()Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Lqb;

    sget-object v3, Lcom/snapchat/android/database/OnboardingTooltip;->PROFILE_PICTURES:Lcom/snapchat/android/database/OnboardingTooltip;

    invoke-direct {v0, v3}, Lqb;-><init>(Lcom/snapchat/android/database/OnboardingTooltip;)V

    invoke-virtual {v0}, Lqb;->f()V

    :cond_10
    invoke-static {}, Lajx;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->HAS_SEEN_PROFILE_PICTURES_ONBOARDING_MESSAGE:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 553
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    :cond_11
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-nez v0, :cond_15

    move v0, v1

    :goto_4
    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    if-eqz v3, :cond_12

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-interface {v3}, Lwr;->b()Z

    move-result v3

    if-nez v3, :cond_16

    :cond_12
    move v3, v1

    :goto_5
    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->b:Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;

    invoke-virtual {v4}, Lcom/snapchat/android/camera/ui/viewflipper/CameraViewFlipper;->getCurrentPanel()I

    move-result v4

    if-ne v4, v1, :cond_17

    :cond_13
    move v4, v1

    :goto_6
    if-nez v0, :cond_14

    if-nez v3, :cond_14

    if-eqz v4, :cond_18

    :cond_14
    const-string v5, "ProfileFragment"

    const-string v6, "profile images - ignore animateToProfilePictureView if profile picture view is not initialized(%s), or no front camera(%s), or current page is CAMERA_PAGE(%s)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v7, v1

    const/4 v0, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v0

    invoke-static {v5, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_15
    move v0, v2

    goto :goto_4

    :cond_16
    move v3, v2

    goto :goto_5

    :cond_17
    move v4, v2

    goto :goto_6

    :cond_18
    sget-object v0, Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;->PROFILE_PICTURES_PAGE_VIEW:Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;

    invoke-static {v0, v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Lcom/snapchat/android/analytics/AnalyticsEvents$AnalyticsContext;Z)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-interface {v0}, Lwr;->a()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-interface {v0}, Lwr;->b()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c:Lwr;

    invoke-interface {v0}, Lwr;->c()V

    :cond_19
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    if-nez v0, :cond_1a

    new-instance v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    invoke-direct {v0, v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;-><init>(B)V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

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

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    aget v3, v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v9

    add-float/2addr v3, v4

    iget v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->K:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    div-float/2addr v5, v9

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getY()F

    move-result v6

    iput v6, v5, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->a:F

    iget-object v5, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    sub-float v3, v4, v3

    iput v3, v5, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->c:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v5, v0, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v5, v8

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    iput v5, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iput v4, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->d:F

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    div-float/2addr v0, v9

    iput v0, v3, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->e:F

    :cond_1a
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    aput v7, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Landroid/view/View;

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

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    const-string v4, "alpha"

    new-array v5, v1, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v4, "translationY"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->c:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v4, "scaleX"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    const-string v4, "scaleY"

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->I:Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;

    iget v6, v6, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$c;->b:F

    aput v6, v5, v2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    iget-object v0, v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1c

    :goto_7
    if-nez v1, :cond_1b

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

    iget v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->K:I

    iget v4, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->L:I

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

    iget v6, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->L:I

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

    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:Lcom/snapchat/android/ui/ProfileCameraMaskView;

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

    :cond_1b
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$2;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_3

    :cond_1c
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

    .line 619
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 635
    :goto_0
    return-object v0

    .line 621
    :pswitch_0
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "data"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 623
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v4, "display_name"

    aput-object v4, v3, v0

    const/4 v0, 0x1

    const-string v4, "display_name_source"

    aput-object v4, v3, v0

    .line 625
    new-instance v0, Landroid/support/v4/content/CursorLoader;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4, v2, v3, v1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
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

    .line 253
    invoke-static {}, Lnf;->d()V

    .line 255
    const v0, 0x7f040087

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->mFragmentLayout:Landroid/view/View;

    .line 256
    const v0, 0x7f0a007c

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    .line 257
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    const v0, 0x7f0a02f5

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    .line 259
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->s:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 260
    const v0, 0x7f0a02f9

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v0, 0x7f0a02fb

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/View;

    .line 266
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    const v0, 0x7f0a02fd

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    .line 269
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->w()V

    .line 271
    const v0, 0x7f0a02fc

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/view/View;

    .line 272
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->z:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A:Landroid/view/View;

    .line 274
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->A:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    const v0, 0x7f0a02f2

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    .line 276
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0a02f3

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->l:Landroid/view/View;

    .line 278
    const v0, 0x7f0a02f4

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    .line 279
    const v0, 0x7f0a02f8

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->D:Landroid/widget/ImageView;

    .line 280
    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->E:Landroid/view/View;

    .line 282
    const v0, 0x7f0a02fe

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->F:Landroid/view/ViewStub;

    .line 283
    const v0, 0x7f0a02f1

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/ProfileCameraMaskView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->G:Lcom/snapchat/android/ui/ProfileCameraMaskView;

    .line 284
    const v0, 0x7f0a0310

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    .line 285
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->j:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    const v0, 0x7f0a0311

    invoke-virtual {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->c(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->k:Landroid/widget/TextView;

    .line 288
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 289
    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->O:Landroid/content/res/ColorStateList;

    .line 290
    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->P:Landroid/content/res/ColorStateList;

    .line 291
    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->K:I

    .line 293
    const v1, 0x7f090076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->L:I

    .line 295
    const v1, 0x7f0c01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->M:Ljava/lang/String;

    .line 296
    const v1, 0x7f0c01dc

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/snapchat/android/util/emoji/Emoji;->GHOST:Lcom/snapchat/android/util/emoji/Emoji;

    invoke-static {v3}, Lbaj;->a(Lcom/snapchat/android/util/emoji/Emoji;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->N:Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x4b0

    invoke-virtual {v0, v1, p0}, Landroid/support/v4/app/LoaderManager;->initLoader$71be8de6(ILandroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 301
    invoke-static {}, Lnf;->e()V

    .line 302
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->mFragmentLayout:Landroid/view/View;

    return-object v0
.end method

.method public onFriendsWhoAddedMeUpdatedEvent(Lbbp;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u()V

    .line 586
    return-void
.end method

.method public onImageProfileBitmapReadyForProfile(Lbbz;)V
    .locals 5
    .annotation runtime Lboh;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 602
    iget-object v0, p1, Lbbz;->mBitmap:Landroid/graphics/Bitmap;

    .line 603
    iget-object v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 605
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a(Ljava/util/List;)V

    .line 606
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/ProfilePictureView;->a(Z)V

    .line 610
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v4}, Lcom/snapchat/android/ui/ProfilePictureView;->setProfilePicturesControlButtonsVisibility(I)V

    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lajx;->z()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    invoke-static {}, Lajx;->b()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/snapchat/android/database/SharedPreferenceKey;->LAST_PROFILE_IMAGES_TAKEN_TIMESTAMP:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v3}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 612
    :cond_0
    invoke-static {v4}, Lajx;->d(Z)V

    .line 613
    invoke-static {v4}, Lajx;->b(I)V

    .line 615
    :cond_1
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 112
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
    invoke-static {v0}, Lajx;->h(Ljava/lang/String;)V

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
    .line 668
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 327
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onPause()V

    .line 328
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iget-boolean v0, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t()V

    .line 333
    :cond_0
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->y()V

    .line 334
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    const/16 v1, 0x405

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Y:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 336
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    const/16 v1, 0x406

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Y:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->b(ILaok;)V

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    .line 339
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 340
    return-void
.end method

.method public onProfileImagesFetchedEvent(Lbcq;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 598
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 313
    invoke-static {}, Lnf;->d()V

    .line 314
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onResume()V

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->g:Z

    .line 316
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->t()V

    .line 317
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    const/16 v1, 0x405

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Y:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 319
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    const/16 v1, 0x406

    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->Y:Laok;

    invoke-virtual {v0, v1, v2}, Laol;->a(ILaok;)V

    .line 321
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u()V

    .line 322
    invoke-static {}, Lnf;->e()V

    .line 323
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->q:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u()V

    .line 507
    :cond_0
    return-void
.end method

.method public onSnapTagCacheUpdatedEvent(Lbds;)V
    .locals 2
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 590
    iget-object v0, p1, Lbds;->mKey:Ljava/lang/String;

    const-string v1, "snaptag"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->v()V

    .line 593
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStart()V

    .line 308
    invoke-static {p0}, Lajx;->a(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 309
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 344
    invoke-super {p0}, Lcom/snapchat/android/util/fragment/SnapchatFragment;->onStop()V

    .line 345
    invoke-static {p0}, Lajx;->b(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 346
    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->i()Z

    .line 347
    return-void
.end method

.method public onUserLoadedEvent(Lber;)V
    .locals 0
    .annotation runtime Lboh;
    .end annotation

    .prologue
    .line 580
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->u()V

    .line 581
    return-void
.end method

.method public final p()V
    .locals 4

    .prologue
    .line 962
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$4;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 969
    return-void
.end method

.method public final q()V
    .locals 8

    .prologue
    .line 973
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 974
    const-string v2, "ProfileFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "profile images - deleting profile images with timestamp: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    invoke-static {}, Lajx;->z()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->b(Ljava/lang/Long;)V

    .line 977
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 978
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->m:Landroid/widget/ImageView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 979
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->p:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->f:Laol;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Laol;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "op_code"

    const/16 v7, 0x405

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "last_deleted"

    invoke-virtual {v5, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {v3, v4, v5}, Laol;->a(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 980
    invoke-direct {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->x()V

    .line 981
    return-void
.end method

.method public final r()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 985
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - sharing profile images"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 988
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    if-nez v0, :cond_0

    .line 1036
    :goto_0
    return-void

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    invoke-virtual {v0, v6}, Lcom/snapchat/android/ui/ProfilePictureView;->b(Z)V

    .line 995
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 996
    :cond_1
    const-string v0, "ProfileFragment"

    const-string v1, "profile images - sharing without profile images"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 997
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 999
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Boolean;)V

    .line 1011
    :goto_1
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    invoke-virtual {v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->getBitmapFromView()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1013
    new-instance v1, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;

    invoke-virtual {p0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;-><init>(Lcom/snapchat/android/fragments/addfriends/ProfileFragment;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    sget-object v0, Lauh;->HIGH_PRIORITY_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    new-array v2, v5, [Ljava/lang/Void;

    invoke-virtual {v1, v0, v2}, Lcom/snapchat/android/fragments/addfriends/ProfileFragment$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1002
    :cond_2
    invoke-static {}, Lajx;->D()I

    move-result v1

    .line 1003
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int v0, v1, v0

    .line 1004
    const-string v2, "ProfileFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "profile images - sharing with profile image index: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sharing count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1006
    iget-object v2, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->H:Lcom/snapchat/android/ui/SharedProfileSnapcodeView;

    iget-object v3, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Lcom/snapchat/android/ui/SharedProfileSnapcodeView;->setProfileImage(Landroid/graphics/Bitmap;)V

    .line 1007
    add-int/lit8 v0, v1, 0x1

    invoke-static {v0}, Lajx;->b(I)V

    .line 1009
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/snapchat/android/analytics/ProfileEventAnalytics;->a(Ljava/lang/Boolean;)V

    goto :goto_1
.end method

.method protected final t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1079
    iput v1, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->r:I

    .line 1080
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    if-eqz v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/snapchat/android/fragments/addfriends/ProfileFragment;->h:Lcom/snapchat/android/ui/ProfilePictureView;

    iput-boolean v1, v0, Lcom/snapchat/android/ui/ProfilePictureView;->f:Z

    .line 1083
    :cond_0
    return-void
.end method
