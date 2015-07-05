.class public Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$a;,
        Lcom/snapchat/android/discover/ui/OpenChannelAnimationView$b;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Lcom/snapchat/android/discover/ui/ChannelView;

.field public c:Z

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    .line 38
    iput-object p1, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->d:Landroid/content/Context;

    .line 39
    return-void
.end method

.method public static a(FF)F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 202
    float-to-double v0, p0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method static synthetic a(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Z
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->c:Z

    return v0
.end method

.method static synthetic b(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->a:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;)Lcom/snapchat/android/discover/ui/ChannelView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/snapchat/android/discover/ui/OpenChannelAnimationView;->b:Lcom/snapchat/android/discover/ui/ChannelView;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
