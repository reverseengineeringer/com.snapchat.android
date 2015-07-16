.class public final enum Lmm;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmm;

.field public static final enum CUSTOM:Lmm;

.field public static final enum DEFAULT_SUGGESTION:Lmm;

.field public static final enum OTHER_SUGGESTION:Lmm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lmm;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2}, Lmm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmm;->CUSTOM:Lmm;

    .line 6
    new-instance v0, Lmm;

    const-string v1, "DEFAULT_SUGGESTION"

    invoke-direct {v0, v1, v3}, Lmm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmm;->DEFAULT_SUGGESTION:Lmm;

    .line 7
    new-instance v0, Lmm;

    const-string v1, "OTHER_SUGGESTION"

    invoke-direct {v0, v1, v4}, Lmm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmm;->OTHER_SUGGESTION:Lmm;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lmm;

    sget-object v1, Lmm;->CUSTOM:Lmm;

    aput-object v1, v0, v2

    sget-object v1, Lmm;->DEFAULT_SUGGESTION:Lmm;

    aput-object v1, v0, v3

    sget-object v1, Lmm;->OTHER_SUGGESTION:Lmm;

    aput-object v1, v0, v4

    sput-object v0, Lmm;->$VALUES:[Lmm;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmm;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lmm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmm;

    return-object v0
.end method

.method public static values()[Lmm;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lmm;->$VALUES:[Lmm;

    invoke-virtual {v0}, [Lmm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmm;

    return-object v0
.end method
