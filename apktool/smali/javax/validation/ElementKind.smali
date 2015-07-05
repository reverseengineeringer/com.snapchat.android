.class public final Ljavax/validation/ElementKind;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/ElementKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$6b00c557:[I

.field public static final enum BEAN$3be69c4:I

.field public static final enum CONSTRUCTOR$3be69c4:I

.field public static final enum CROSS_PARAMETER$3be69c4:I

.field public static final enum METHOD$3be69c4:I

.field public static final enum PARAMETER$3be69c4:I

.field public static final enum PROPERTY$3be69c4:I

.field public static final enum RETURN_VALUE$3be69c4:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 35
    sput v3, Ljavax/validation/ElementKind;->BEAN$3be69c4:I

    .line 40
    sput v4, Ljavax/validation/ElementKind;->PROPERTY$3be69c4:I

    .line 45
    sput v5, Ljavax/validation/ElementKind;->METHOD$3be69c4:I

    .line 50
    sput v6, Ljavax/validation/ElementKind;->CONSTRUCTOR$3be69c4:I

    .line 55
    sput v7, Ljavax/validation/ElementKind;->PARAMETER$3be69c4:I

    .line 60
    const/4 v0, 0x6

    sput v0, Ljavax/validation/ElementKind;->CROSS_PARAMETER$3be69c4:I

    .line 65
    const/4 v0, 0x7

    sput v0, Ljavax/validation/ElementKind;->RETURN_VALUE$3be69c4:I

    .line 31
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ljavax/validation/ElementKind;->BEAN$3be69c4:I

    aput v2, v0, v1

    sget v1, Ljavax/validation/ElementKind;->PROPERTY$3be69c4:I

    aput v1, v0, v3

    sget v1, Ljavax/validation/ElementKind;->METHOD$3be69c4:I

    aput v1, v0, v4

    sget v1, Ljavax/validation/ElementKind;->CONSTRUCTOR$3be69c4:I

    aput v1, v0, v5

    sget v1, Ljavax/validation/ElementKind;->PARAMETER$3be69c4:I

    aput v1, v0, v6

    sget v1, Ljavax/validation/ElementKind;->CROSS_PARAMETER$3be69c4:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Ljavax/validation/ElementKind;->RETURN_VALUE$3be69c4:I

    aput v2, v0, v1

    sput-object v0, Ljavax/validation/ElementKind;->$VALUES$6b00c557:[I

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static values$1b8f9fca()[I
    .locals 1

    .prologue
    .line 31
    sget-object v0, Ljavax/validation/ElementKind;->$VALUES$6b00c557:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
