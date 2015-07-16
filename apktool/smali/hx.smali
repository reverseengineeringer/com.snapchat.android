.class public final enum Lhx;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhx;

.field public static final enum GRAYSCALE:Lhx;

.field public static final enum INSTASNAP:Lhx;

.field public static final enum MISS_ETIKATE:Lhx;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhx;

    const-string v1, "MISS_ETIKATE"

    invoke-direct {v0, v1, v2}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->MISS_ETIKATE:Lhx;

    .line 6
    new-instance v0, Lhx;

    const-string v1, "INSTASNAP"

    invoke-direct {v0, v1, v3}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->INSTASNAP:Lhx;

    .line 7
    new-instance v0, Lhx;

    const-string v1, "GRAYSCALE"

    invoke-direct {v0, v1, v4}, Lhx;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhx;->GRAYSCALE:Lhx;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lhx;

    sget-object v1, Lhx;->MISS_ETIKATE:Lhx;

    aput-object v1, v0, v2

    sget-object v1, Lhx;->INSTASNAP:Lhx;

    aput-object v1, v0, v3

    sget-object v1, Lhx;->GRAYSCALE:Lhx;

    aput-object v1, v0, v4

    sput-object v0, Lhx;->$VALUES:[Lhx;

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

.method public static valueOf(Ljava/lang/String;)Lhx;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhx;

    return-object v0
.end method

.method public static values()[Lhx;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhx;->$VALUES:[Lhx;

    invoke-virtual {v0}, [Lhx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhx;

    return-object v0
.end method
