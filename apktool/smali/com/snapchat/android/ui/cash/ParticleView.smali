.class public Lcom/snapchat/android/ui/cash/ParticleView;
.super Landroid/widget/ImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/ui/cash/ParticleView$a;
    }
.end annotation


# static fields
.field static a:Ljava/util/Random;


# instance fields
.field private b:Landroid/graphics/Point;
    .annotation build Lchc;
    .end annotation
.end field

.field private c:I
    .annotation build Lchc;
    .end annotation
.end field

.field private d:Lcom/snapchat/android/ui/cash/ParticleView$a;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/snapchat/android/ui/cash/ParticleView;->a:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/snapchat/android/ui/cash/ParticleView;)Lcom/snapchat/android/ui/cash/ParticleView$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->d:Lcom/snapchat/android/ui/cash/ParticleView$a;

    return-object v0
.end method


# virtual methods
.method public getCenterPoint()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFinalSize()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/snapchat/android/ui/cash/ParticleView;->c:I

    return v0
.end method

.method public setAnimationListener(Lcom/snapchat/android/ui/cash/ParticleView$a;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->d:Lcom/snapchat/android/ui/cash/ParticleView$a;

    .line 57
    return-void
.end method

.method public setCenterPoint(Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->b:Landroid/graphics/Point;

    .line 45
    return-void
.end method

.method public setFinalSize(I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/snapchat/android/ui/cash/ParticleView;->c:I

    .line 53
    return-void
.end method
