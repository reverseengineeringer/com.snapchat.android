.class public final Laip;
.super Lbfm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laip$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecryptedSnapVideo"


# instance fields
.field private final mCache:Lawp;

.field private final mKey:Ljava/lang/String;

.field private final mOverlay:Landroid/graphics/Bitmap;
    .annotation build Lcgc;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lawp;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Lawp;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Lbfm;-><init>()V

    .line 27
    iput-object p1, p0, Laip;->mCache:Lawp;

    .line 28
    iput-object p2, p0, Laip;->mKey:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Laip;->mOverlay:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Lawp;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Laip;-><init>(Lawp;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Laip;->f()V

    .line 39
    iget-object v0, p0, Laip;->mCache:Lawp;

    iget-object v1, p0, Laip;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Laip;->f()V

    .line 49
    iget-object v0, p0, Laip;->mOverlay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Laip;->mCache:Lawp;

    iget-object v1, p0, Laip;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lawp;->c(Ljava/lang/String;)V

    .line 58
    return-void
.end method
