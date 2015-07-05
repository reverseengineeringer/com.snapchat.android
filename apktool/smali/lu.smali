.class public final enum Llu;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Llu;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Llu;

.field public static final enum CUSTOM:Llu;

.field public static final enum DEFAULT_SUGGESTION:Llu;

.field public static final enum OTHER_SUGGESTION:Llu;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Llu;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->CUSTOM:Llu;

    .line 6
    new-instance v0, Llu;

    const-string v1, "DEFAULT_SUGGESTION"

    invoke-direct {v0, v1, v3}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->DEFAULT_SUGGESTION:Llu;

    .line 7
    new-instance v0, Llu;

    const-string v1, "OTHER_SUGGESTION"

    invoke-direct {v0, v1, v4}, Llu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Llu;->OTHER_SUGGESTION:Llu;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Llu;

    sget-object v1, Llu;->CUSTOM:Llu;

    aput-object v1, v0, v2

    sget-object v1, Llu;->DEFAULT_SUGGESTION:Llu;

    aput-object v1, v0, v3

    sget-object v1, Llu;->OTHER_SUGGESTION:Llu;

    aput-object v1, v0, v4

    sput-object v0, Llu;->$VALUES:[Llu;

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

.method public static valueOf(Ljava/lang/String;)Llu;
    .locals 1

    .prologue
    .line 4
    const-class v0, Llu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Llu;

    return-object v0
.end method

.method public static values()[Llu;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Llu;->$VALUES:[Llu;

    invoke-virtual {v0}, [Llu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Llu;

    return-object v0
.end method
