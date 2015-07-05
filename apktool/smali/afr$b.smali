.class final Lafr$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lafr$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field public static final enum g:I

.field public static final enum h:I

.field public static final enum i:I

.field private static final synthetic j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1125
    sput v3, Lafr$b;->a:I

    sput v4, Lafr$b;->b:I

    sput v5, Lafr$b;->c:I

    sput v6, Lafr$b;->d:I

    sput v7, Lafr$b;->e:I

    const/4 v0, 0x6

    sput v0, Lafr$b;->f:I

    const/4 v0, 0x7

    sput v0, Lafr$b;->g:I

    const/16 v0, 0x8

    sput v0, Lafr$b;->h:I

    .line 1126
    const/16 v0, 0x9

    sput v0, Lafr$b;->i:I

    .line 1124
    const/16 v0, 0x9

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lafr$b;->a:I

    aput v2, v0, v1

    sget v1, Lafr$b;->b:I

    aput v1, v0, v3

    sget v1, Lafr$b;->c:I

    aput v1, v0, v4

    sget v1, Lafr$b;->d:I

    aput v1, v0, v5

    sget v1, Lafr$b;->e:I

    aput v1, v0, v6

    sget v1, Lafr$b;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lafr$b;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lafr$b;->h:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lafr$b;->i:I

    aput v2, v0, v1

    sput-object v0, Lafr$b;->j:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 1124
    sget-object v0, Lafr$b;->j:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
