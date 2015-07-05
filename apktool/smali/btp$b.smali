.class public final Lbtp$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
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

    .line 71
    sput v3, Lbtp$b;->a:I

    .line 72
    sput v4, Lbtp$b;->b:I

    .line 73
    sput v0, Lbtp$b;->c:I

    .line 70
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lbtp$b;->a:I

    aput v2, v0, v1

    sget v1, Lbtp$b;->b:I

    aput v1, v0, v3

    sget v1, Lbtp$b;->c:I

    aput v1, v0, v4

    sput-object v0, Lbtp$b;->d:[I

    return-void
.end method
