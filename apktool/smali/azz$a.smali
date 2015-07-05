.class final Lazz$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lazz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lazz$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$16eae95:[I

.field public static final enum BEGIN$1a20a190:I

.field public static final enum END$1a20a190:I

.field public static final enum ONE_TIME_EVENT$1a20a190:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 25
    sput v3, Lazz$a;->BEGIN$1a20a190:I

    .line 26
    sput v4, Lazz$a;->END$1a20a190:I

    .line 27
    sput v0, Lazz$a;->ONE_TIME_EVENT$1a20a190:I

    .line 24
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lazz$a;->BEGIN$1a20a190:I

    aput v2, v0, v1

    sget v1, Lazz$a;->END$1a20a190:I

    aput v1, v0, v3

    sget v1, Lazz$a;->ONE_TIME_EVENT$1a20a190:I

    aput v1, v0, v4

    sput-object v0, Lazz$a;->$VALUES$16eae95:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lazz$a;->$VALUES$16eae95:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
