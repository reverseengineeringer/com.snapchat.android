.class final Lch$10;
.super Lch$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lch$a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lch;)Lch;
    .locals 1

    .prologue
    .line 401
    invoke-static {p1}, Lco;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch;

    return-object v0
.end method

.method public final a(C)Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method
