.class public final enum Lboz;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lboz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lboz;

.field public static final enum b:Lboz;

.field private static final synthetic d:[Lboz;


# instance fields
.field final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 23
    new-instance v0, Lboz;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v3, v2}, Lboz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lboz;->a:Lboz;

    .line 28
    new-instance v0, Lboz;

    const-string v1, "NO_STORE"

    invoke-direct {v0, v1, v2, v4}, Lboz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lboz;->b:Lboz;

    .line 19
    new-array v0, v4, [Lboz;

    sget-object v1, Lboz;->a:Lboz;

    aput-object v1, v0, v3

    sget-object v1, Lboz;->b:Lboz;

    aput-object v1, v0, v2

    sput-object v0, Lboz;->d:[Lboz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lboz;->c:I

    .line 42
    return-void
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lboz;->a:Lboz;

    iget v0, v0, Lboz;->c:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lboz;->b:Lboz;

    iget v0, v0, Lboz;->c:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lboz;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lboz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lboz;

    return-object v0
.end method

.method public static values()[Lboz;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lboz;->d:[Lboz;

    invoke-virtual {v0}, [Lboz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lboz;

    return-object v0
.end method
