.class public final Lep$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lep$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field private static final synthetic e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v0, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 377
    sput v3, Lep$c;->a:I

    .line 378
    sput v4, Lep$c;->b:I

    .line 379
    sput v5, Lep$c;->c:I

    .line 380
    sput v0, Lep$c;->d:I

    .line 376
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lep$c;->a:I

    aput v2, v0, v1

    sget v1, Lep$c;->b:I

    aput v1, v0, v3

    sget v1, Lep$c;->c:I

    aput v1, v0, v4

    sget v1, Lep$c;->d:I

    aput v1, v0, v5

    sput-object v0, Lep$c;->e:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 376
    sget-object v0, Lep$c;->e:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
