.class final enum Laxn$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Laxn$b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Laxn$b;

.field public static final enum DECODING_ERROR:Laxn$b;

.field public static final enum EMPTY_FILE:Laxn$b;

.field public static final enum EXPIRED:Laxn$b;

.field public static final enum FILE_NOT_EXIST:Laxn$b;

.field public static final enum UNKNOWN:Laxn$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Laxn$b;

    const-string v1, "FILE_NOT_EXIST"

    invoke-direct {v0, v1, v2}, Laxn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxn$b;->FILE_NOT_EXIST:Laxn$b;

    .line 89
    new-instance v0, Laxn$b;

    const-string v1, "EXPIRED"

    invoke-direct {v0, v1, v3}, Laxn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxn$b;->EXPIRED:Laxn$b;

    .line 90
    new-instance v0, Laxn$b;

    const-string v1, "DECODING_ERROR"

    invoke-direct {v0, v1, v4}, Laxn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxn$b;->DECODING_ERROR:Laxn$b;

    .line 91
    new-instance v0, Laxn$b;

    const-string v1, "EMPTY_FILE"

    invoke-direct {v0, v1, v5}, Laxn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxn$b;->EMPTY_FILE:Laxn$b;

    .line 92
    new-instance v0, Laxn$b;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Laxn$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Laxn$b;->UNKNOWN:Laxn$b;

    .line 87
    const/4 v0, 0x5

    new-array v0, v0, [Laxn$b;

    sget-object v1, Laxn$b;->FILE_NOT_EXIST:Laxn$b;

    aput-object v1, v0, v2

    sget-object v1, Laxn$b;->EXPIRED:Laxn$b;

    aput-object v1, v0, v3

    sget-object v1, Laxn$b;->DECODING_ERROR:Laxn$b;

    aput-object v1, v0, v4

    sget-object v1, Laxn$b;->EMPTY_FILE:Laxn$b;

    aput-object v1, v0, v5

    sget-object v1, Laxn$b;->UNKNOWN:Laxn$b;

    aput-object v1, v0, v6

    sput-object v0, Laxn$b;->$VALUES:[Laxn$b;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Laxn$b;
    .locals 1

    .prologue
    .line 87
    const-class v0, Laxn$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Laxn$b;

    return-object v0
.end method

.method public static values()[Laxn$b;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Laxn$b;->$VALUES:[Laxn$b;

    invoke-virtual {v0}, [Laxn$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Laxn$b;

    return-object v0
.end method
