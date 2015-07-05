.class public final Ljavax/validation/metadata/MethodType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/metadata/MethodType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$51f8f374:[I

.field public static final enum GETTER$3aaf2871:I

.field public static final enum NON_GETTER$3aaf2871:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 35
    sput v3, Ljavax/validation/metadata/MethodType;->GETTER$3aaf2871:I

    .line 45
    sput v0, Ljavax/validation/metadata/MethodType;->NON_GETTER$3aaf2871:I

    .line 25
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ljavax/validation/metadata/MethodType;->GETTER$3aaf2871:I

    aput v2, v0, v1

    sget v1, Ljavax/validation/metadata/MethodType;->NON_GETTER$3aaf2871:I

    aput v1, v0, v3

    sput-object v0, Ljavax/validation/metadata/MethodType;->$VALUES$51f8f374:[I

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

.method private static values$6526a795()[I
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljavax/validation/metadata/MethodType;->$VALUES$51f8f374:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
