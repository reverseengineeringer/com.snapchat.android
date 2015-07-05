.class final enum Lawp$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lawp$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lawp$a;

.field public static final enum DECODING_ERROR:Lawp$a;

.field public static final enum EMPTY_FILE:Lawp$a;

.field public static final enum EXPIRED:Lawp$a;

.field public static final enum FILE_NOT_EXIST:Lawp$a;

.field public static final enum UNKNOWN:Lawp$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lawp$a;

    const-string v1, "FILE_NOT_EXIST"

    invoke-direct {v0, v1, v2}, Lawp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp$a;->FILE_NOT_EXIST:Lawp$a;

    .line 63
    new-instance v0, Lawp$a;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Lawp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp$a;->EXPIRED:Lawp$a;

    .line 64
    new-instance v0, Lawp$a;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v4}, Lawp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp$a;->DECODING_ERROR:Lawp$a;

    .line 65
    new-instance v0, Lawp$a;

    const-string v1, "EMPTY_FILE"

    invoke-direct {v0, v1, v5}, Lawp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp$a;->EMPTY_FILE:Lawp$a;

    .line 66
    new-instance v0, Lawp$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lawp$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lawp$a;->UNKNOWN:Lawp$a;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lawp$a;

    sget-object v1, Lawp$a;->FILE_NOT_EXIST:Lawp$a;

    aput-object v1, v0, v2

    sget-object v1, Lawp$a;->EXPIRED:Lawp$a;

    aput-object v1, v0, v3

    sget-object v1, Lawp$a;->DECODING_ERROR:Lawp$a;

    aput-object v1, v0, v4

    sget-object v1, Lawp$a;->EMPTY_FILE:Lawp$a;

    aput-object v1, v0, v5

    sget-object v1, Lawp$a;->UNKNOWN:Lawp$a;

    aput-object v1, v0, v6

    sput-object v0, Lawp$a;->$VALUES:[Lawp$a;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lawp$a;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lawp$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lawp$a;

    return-object v0
.end method

.method public static values()[Lawp$a;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lawp$a;->$VALUES:[Lawp$a;

    invoke-virtual {v0}, [Lawp$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lawp$a;

    return-object v0
.end method
