.class public final Lcu;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcd;
.end annotation


# static fields
.field static final a:Lch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 323
    const-string v0, ", "

    new-instance v1, Lch;

    invoke-direct {v1, v0}, Lch;-><init>(Ljava/lang/String;)V

    const-string v0, "null"

    invoke-virtual {v1, v0}, Lch;->a(Ljava/lang/String;)Lch;

    move-result-object v0

    sput-object v0, Lcu;->a:Lch;

    return-void
.end method

.method static a(I)Ljava/lang/StringBuilder;
    .locals 6

    .prologue
    .line 312
    const-string v0, "size"

    invoke-static {p0, v0}, Lct;->a(ILjava/lang/String;)I

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    int-to-long v2, p0

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x40000000

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    return-object v0
.end method

.method static a(Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 320
    check-cast p0, Ljava/util/Collection;

    return-object p0
.end method
