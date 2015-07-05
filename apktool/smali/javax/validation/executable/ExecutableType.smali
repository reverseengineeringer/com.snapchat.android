.class public final enum Ljavax/validation/executable/ExecutableType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax/validation/executable/ExecutableType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax/validation/executable/ExecutableType;

.field public static final enum ALL:Ljavax/validation/executable/ExecutableType;

.field public static final enum CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

.field public static final enum GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

.field public static final enum IMPLICIT:Ljavax/validation/executable/ExecutableType;

.field public static final enum NONE:Ljavax/validation/executable/ExecutableType;

.field public static final enum NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "IMPLICIT"

    invoke-direct {v0, v1, v3}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->IMPLICIT:Ljavax/validation/executable/ExecutableType;

    .line 46
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->NONE:Ljavax/validation/executable/ExecutableType;

    .line 51
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "CONSTRUCTORS"

    invoke-direct {v0, v1, v5}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

    .line 61
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "NON_GETTER_METHODS"

    invoke-direct {v0, v1, v6}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    .line 72
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "GETTER_METHODS"

    invoke-direct {v0, v1, v7}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    .line 77
    new-instance v0, Ljavax/validation/executable/ExecutableType;

    const-string v1, "ALL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax/validation/executable/ExecutableType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax/validation/executable/ExecutableType;->ALL:Ljavax/validation/executable/ExecutableType;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/validation/executable/ExecutableType;

    sget-object v1, Ljavax/validation/executable/ExecutableType;->IMPLICIT:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v3

    sget-object v1, Ljavax/validation/executable/ExecutableType;->NONE:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v4

    sget-object v1, Ljavax/validation/executable/ExecutableType;->CONSTRUCTORS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v5

    sget-object v1, Ljavax/validation/executable/ExecutableType;->NON_GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v6

    sget-object v1, Ljavax/validation/executable/ExecutableType;->GETTER_METHODS:Ljavax/validation/executable/ExecutableType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax/validation/executable/ExecutableType;->ALL:Ljavax/validation/executable/ExecutableType;

    aput-object v2, v0, v1

    sput-object v0, Ljavax/validation/executable/ExecutableType;->$VALUES:[Ljavax/validation/executable/ExecutableType;

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

.method public static valueOf(Ljava/lang/String;)Ljavax/validation/executable/ExecutableType;
    .locals 1

    .prologue
    .line 25
    const-class v0, Ljavax/validation/executable/ExecutableType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax/validation/executable/ExecutableType;

    return-object v0
.end method

.method public static values()[Ljavax/validation/executable/ExecutableType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Ljavax/validation/executable/ExecutableType;->$VALUES:[Ljavax/validation/executable/ExecutableType;

    invoke-virtual {v0}, [Ljavax/validation/executable/ExecutableType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/validation/executable/ExecutableType;

    return-object v0
.end method
