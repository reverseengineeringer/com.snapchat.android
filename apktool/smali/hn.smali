.class public final enum Lhn;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lhn;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lhn;

.field public static final enum BRAND:Lhn;

.field public static final enum GEO:Lhn;

.field public static final enum LOCATION:Lhn;

.field public static final enum STANDARD:Lhn;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lhn;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v2}, Lhn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhn;->LOCATION:Lhn;

    .line 6
    new-instance v0, Lhn;

    const-string v1, "GEO"

    invoke-direct {v0, v1, v3}, Lhn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhn;->GEO:Lhn;

    .line 7
    new-instance v0, Lhn;

    const-string v1, "BRAND"

    invoke-direct {v0, v1, v4}, Lhn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhn;->BRAND:Lhn;

    .line 8
    new-instance v0, Lhn;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v5}, Lhn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lhn;->STANDARD:Lhn;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lhn;

    sget-object v1, Lhn;->LOCATION:Lhn;

    aput-object v1, v0, v2

    sget-object v1, Lhn;->GEO:Lhn;

    aput-object v1, v0, v3

    sget-object v1, Lhn;->BRAND:Lhn;

    aput-object v1, v0, v4

    sget-object v1, Lhn;->STANDARD:Lhn;

    aput-object v1, v0, v5

    sput-object v0, Lhn;->$VALUES:[Lhn;

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

.method public static valueOf(Ljava/lang/String;)Lhn;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lhn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lhn;

    return-object v0
.end method

.method public static values()[Lhn;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lhn;->$VALUES:[Lhn;

    invoke-virtual {v0}, [Lhn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lhn;

    return-object v0
.end method
