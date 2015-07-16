.class public abstract Lasm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public a(ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public final a(Landroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lasm;->a:Landroid/graphics/Paint;

    .line 45
    return-void
.end method

.method public a(ZLandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public abstract b()Lcom/snapchat/android/ui/swipefilters/FilterPageType;
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lasm;->a:Landroid/graphics/Paint;

    return-object v0
.end method

.method public d()Landroid/view/View;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 72
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 79
    :goto_0
    return v0

    .line 74
    :cond_0
    instance-of v0, p1, Lasm;

    if-nez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    goto :goto_0

    .line 78
    :cond_1
    check-cast p1, Lasm;

    .line 79
    invoke-virtual {p0}, Lasm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lasm;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public g()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public h()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lasm;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public i()V
    .locals 0

    .prologue
    .line 122
    return-void
.end method
