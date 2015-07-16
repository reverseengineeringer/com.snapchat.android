.class public final Lajl;
.super Lbgm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lajl$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DecryptedSnapVideo"


# instance fields
.field private final mCache:Laxn;

.field private final mKey:Ljava/lang/String;

.field private final mOverlay:Landroid/graphics/Bitmap;
    .annotation build Lchd;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Laxn;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1    # Laxn;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Lbgm;-><init>()V

    .line 27
    iput-object p1, p0, Lajl;->mCache:Laxn;

    .line 28
    iput-object p2, p0, Lajl;->mKey:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lajl;->mOverlay:Landroid/graphics/Bitmap;

    .line 30
    return-void
.end method

.method public synthetic constructor <init>(Laxn;Ljava/lang/String;Landroid/graphics/Bitmap;B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lajl;-><init>(Laxn;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 38
    invoke-virtual {p0}, Lajl;->f()V

    .line 39
    iget-object v0, p0, Lajl;->mCache:Laxn;

    iget-object v1, p0, Lajl;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxn;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0}, Lajl;->f()V

    .line 49
    iget-object v0, p0, Lajl;->mOverlay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method protected final c()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lajl;->mCache:Laxn;

    iget-object v1, p0, Lajl;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Laxn;->c(Ljava/lang/String;)V

    .line 58
    return-void
.end method
