.class public final enum Lhw;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhw;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhw;

.field public static final enum BRAND:Lhw;

.field public static final enum GEO:Lhw;

.field public static final enum LOCATION:Lhw;

.field public static final enum STANDARD:Lhw;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhw;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v2}, Lhw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhw;->LOCATION:Lhw;

    .line 6
    new-instance v0, Lhw;

    const-string v1, "GEO"

    invoke-direct {v0, v1, v3}, Lhw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhw;->GEO:Lhw;

    .line 7
    new-instance v0, Lhw;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v4}, Lhw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhw;->BRAND:Lhw;

    .line 8
    new-instance v0, Lhw;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v5}, Lhw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhw;->STANDARD:Lhw;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lhw;

    sget-object v1, Lhw;->LOCATION:Lhw;

    aput-object v1, v0, v2

    sget-object v1, Lhw;->GEO:Lhw;

    aput-object v1, v0, v3

    sget-object v1, Lhw;->BRAND:Lhw;

    aput-object v1, v0, v4

    sget-object v1, Lhw;->STANDARD:Lhw;

    aput-object v1, v0, v5

    sput-object v0, Lhw;->$VALUES:[Lhw;

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

.method public static valueOf(Ljava/lang/String;)Lhw;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhw;

    return-object v0
.end method

.method public static values()[Lhw;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhw;->$VALUES:[Lhw;

    invoke-virtual {v0}, [Lhw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhw;

    return-object v0
.end method
