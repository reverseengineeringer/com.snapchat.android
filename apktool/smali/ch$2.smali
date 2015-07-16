.class final Lch$2;
.super Lch$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lch;->a(CCLjava/lang/String;)Lch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic q:C

.field final synthetic r:C


# direct methods
.method constructor <init>(Ljava/lang/String;CC)V
    .locals 0

    .prologue
    .line 559
    iput-char p2, p0, Lch$2;->q:C

    iput-char p3, p0, Lch$2;->r:C

    invoke-direct {p0, p1}, Lch$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(C)Z
    .locals 1

    .prologue
    .line 561
    iget-char v0, p0, Lch$2;->q:C

    if-gt v0, p1, :cond_0

    iget-char v0, p0, Lch$2;->r:C

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
