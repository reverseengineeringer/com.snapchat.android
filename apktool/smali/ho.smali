.class public final enum Lho;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lho;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lho;

.field public static final enum GRAYSCALE:Lho;

.field public static final enum INSTASNAP:Lho;

.field public static final enum MISS_ETIKATE:Lho;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lho;

    const-string v1, "MISS_ETIKATE"

    invoke-direct {v0, v1, v2}, Lho;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lho;->MISS_ETIKATE:Lho;

    .line 6
    new-instance v0, Lho;

    const-string v1, "INSTASNAP"

    invoke-direct {v0, v1, v3}, Lho;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lho;->INSTASNAP:Lho;

    .line 7
    new-instance v0, Lho;

    const-string v1, "GRAYSCALE"

    invoke-direct {v0, v1, v4}, Lho;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lho;->GRAYSCALE:Lho;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lho;

    sget-object v1, Lho;->MISS_ETIKATE:Lho;

    aput-object v1, v0, v2

    sget-object v1, Lho;->INSTASNAP:Lho;

    aput-object v1, v0, v3

    sget-object v1, Lho;->GRAYSCALE:Lho;

    aput-object v1, v0, v4

    sput-object v0, Lho;->$VALUES:[Lho;

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

.method public static valueOf(Ljava/lang/String;)Lho;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lho;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lho;

    return-object v0
.end method

.method public static values()[Lho;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lho;->$VALUES:[Lho;

    invoke-virtual {v0}, [Lho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lho;

    return-object v0
.end method
