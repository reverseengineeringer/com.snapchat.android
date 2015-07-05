.class public final Ljavax/validation/metadata/Scope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/metadata/Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES$4fcfc03b:[I

.field public static final enum HIERARCHY$6a7af6ca:I

.field public static final enum LOCAL_ELEMENT$6a7af6ca:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x2

    const/4 v3, 0x1

    .line 31
    sput v3, Ljavax/validation/metadata/Scope;->LOCAL_ELEMENT$6a7af6ca:I

    .line 37
    sput v0, Ljavax/validation/metadata/Scope;->HIERARCHY$6a7af6ca:I

    .line 24
    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Ljavax/validation/metadata/Scope;->LOCAL_ELEMENT$6a7af6ca:I

    aput v2, v0, v1

    sget v1, Ljavax/validation/metadata/Scope;->HIERARCHY$6a7af6ca:I

    aput v1, v0, v3

    sput-object v0, Ljavax/validation/metadata/Scope;->$VALUES$4fcfc03b:[I

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static values$d98bb04()[I
    .locals 1

    .prologue
    .line 24
    sget-object v0, Ljavax/validation/metadata/Scope;->$VALUES$4fcfc03b:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
