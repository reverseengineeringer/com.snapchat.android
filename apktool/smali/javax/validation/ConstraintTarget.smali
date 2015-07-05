.class public final Ljavax/validation/ConstraintTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/ConstraintTarget;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$5aee401f:[I

.field public static final enum IMPLICIT$5298b61c:I

.field public static final enum PARAMETERS$5298b61c:I

.field public static final enum RETURN_VALUE$5298b61c:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 41
    sput v3, Ljavax/validation/ConstraintTarget;->IMPLICIT$5298b61c:I

    .line 46
    sput v4, Ljavax/validation/ConstraintTarget;->RETURN_VALUE$5298b61c:I

    .line 51
    sput v0, Ljavax/validation/ConstraintTarget;->PARAMETERS$5298b61c:I

    .line 25
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ljavax/validation/ConstraintTarget;->IMPLICIT$5298b61c:I

    aput v2, v0, v1

    sget v1, Ljavax/validation/ConstraintTarget;->RETURN_VALUE$5298b61c:I

    aput v1, v0, v3

    sget v1, Ljavax/validation/ConstraintTarget;->PARAMETERS$5298b61c:I

    aput v1, v0, v4

    sput-object v0, Ljavax/validation/ConstraintTarget;->$VALUES$5aee401f:[I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static values$24e79e()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljavax/validation/ConstraintTarget;->$VALUES$5aee401f:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
