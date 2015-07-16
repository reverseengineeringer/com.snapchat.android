.class public final enum Lbqa;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lbqa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lbqa;

.field public static final enum b:Lbqa;

.field private static final synthetic d:[Lbqa;


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
    new-instance v0, Lbqa;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v3, v2}, Lbqa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbqa;->a:Lbqa;

    .line 28
    new-instance v0, Lbqa;

    const-string v1, "NO_STORE"

    invoke-direct {v0, v1, v2, v4}, Lbqa;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lbqa;->b:Lbqa;

    .line 19
    new-array v0, v4, [Lbqa;

    sget-object v1, Lbqa;->a:Lbqa;

    aput-object v1, v0, v3

    sget-object v1, Lbqa;->b:Lbqa;

    aput-object v1, v0, v2

    sput-object v0, Lbqa;->d:[Lbqa;

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
    iput p3, p0, Lbqa;->c:I

    .line 42
    return-void
.end method

.method static a(I)Z
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lbqa;->a:Lbqa;

    iget v0, v0, Lbqa;->c:I

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
    sget-object v0, Lbqa;->b:Lbqa;

    iget v0, v0, Lbqa;->c:I

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lbqa;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lbqa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lbqa;

    return-object v0
.end method

.method public static values()[Lbqa;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lbqa;->d:[Lbqa;

    invoke-virtual {v0}, [Lbqa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbqa;

    return-object v0
.end method
