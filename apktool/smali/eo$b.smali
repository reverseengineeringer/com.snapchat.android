.class final Leo$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Leo$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field private static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 186
    sput v3, Leo$b;->a:I

    sput v4, Leo$b;->b:I

    sput v0, Leo$b;->c:I

    .line 185
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Leo$b;->a:I

    aput v2, v0, v1

    sget v1, Leo$b;->b:I

    aput v1, v0, v3

    sget v1, Leo$b;->c:I

    aput v1, v0, v4

    sput-object v0, Leo$b;->d:[I

    return-void
.end method
