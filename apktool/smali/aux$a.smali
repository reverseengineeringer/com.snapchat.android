.class public final Laux$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laux$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$25e79240:[I

.field public static final enum ACTIVITY_CREATE_CHECKPOINT$6dad94c5:I

.field public static final enum ACTIVITY_RESTART_CHECKPOINT$6dad94c5:I

.field public static final enum APPLICATION_CREATE_CHECKPOINT$6dad94c5:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 22
    sput v3, Laux$a;->APPLICATION_CREATE_CHECKPOINT$6dad94c5:I

    .line 23
    sput v4, Laux$a;->ACTIVITY_CREATE_CHECKPOINT$6dad94c5:I

    .line 24
    sput v0, Laux$a;->ACTIVITY_RESTART_CHECKPOINT$6dad94c5:I

    .line 21
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Laux$a;->APPLICATION_CREATE_CHECKPOINT$6dad94c5:I

    aput v2, v0, v1

    sget v1, Laux$a;->ACTIVITY_CREATE_CHECKPOINT$6dad94c5:I

    aput v1, v0, v3

    sget v1, Laux$a;->ACTIVITY_RESTART_CHECKPOINT$6dad94c5:I

    aput v1, v0, v4

    sput-object v0, Laux$a;->$VALUES$25e79240:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 21
    sget-object v0, Laux$a;->$VALUES$25e79240:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
