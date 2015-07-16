.class final Lamu$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lamu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lamu$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field private static b:Lamu;

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    sput v0, Lamu$b;->a:I

    .line 82
    new-array v0, v0, [I

    sget v1, Lamu$b;->a:I

    aput v1, v0, v2

    sput-object v0, Lamu$b;->c:[I

    .line 84
    new-instance v0, Lamu;

    invoke-direct {v0, v2}, Lamu;-><init>(B)V

    sput-object v0, Lamu$b;->b:Lamu;

    return-void
.end method

.method static synthetic a()Lamu;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lamu$b;->b:Lamu;

    return-object v0
.end method
