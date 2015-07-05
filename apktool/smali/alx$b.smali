.class final Lalx$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lalx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lalx$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static b:Lalx;

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    sput v0, Lalx$b;->a:I

    .line 82
    new-array v0, v0, [I

    sget v1, Lalx$b;->a:I

    aput v1, v0, v2

    sput-object v0, Lalx$b;->c:[I

    .line 84
    new-instance v0, Lalx;

    invoke-direct {v0, v2}, Lalx;-><init>(B)V

    sput-object v0, Lalx$b;->b:Lalx;

    return-void
.end method

.method static synthetic a()Lalx;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lalx$b;->b:Lalx;

    return-object v0
.end method
