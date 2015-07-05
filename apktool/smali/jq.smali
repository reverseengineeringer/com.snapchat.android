.class public final enum Ljq;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljq;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljq;

.field public static final enum ADD_BY_NUMBER:Ljq;

.field public static final enum ADD_BY_SNAP:Ljq;

.field public static final enum ADD_BY_USERNAME:Ljq;

.field public static final enum ADD_NEARBY:Ljq;

.field public static final enum ADD_YOU_BACK:Ljq;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Ljq;

    const-string v1, "ADD_YOU_BACK"

    invoke-direct {v0, v1, v2}, Ljq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljq;->ADD_YOU_BACK:Ljq;

    .line 6
    new-instance v0, Ljq;

    const-string v1, "ADD_BY_NUMBER"

    invoke-direct {v0, v1, v3}, Ljq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljq;->ADD_BY_NUMBER:Ljq;

    .line 7
    new-instance v0, Ljq;

    const-string v1, "ADD_BY_SNAP"

    invoke-direct {v0, v1, v4}, Ljq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljq;->ADD_BY_SNAP:Ljq;

    .line 8
    new-instance v0, Ljq;

    const-string v1, "ADD_BY_USERNAME"

    invoke-direct {v0, v1, v5}, Ljq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljq;->ADD_BY_USERNAME:Ljq;

    .line 9
    new-instance v0, Ljq;

    const-string v1, "ADD_NEARBY"

    invoke-direct {v0, v1, v6}, Ljq;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljq;->ADD_NEARBY:Ljq;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Ljq;

    sget-object v1, Ljq;->ADD_YOU_BACK:Ljq;

    aput-object v1, v0, v2

    sget-object v1, Ljq;->ADD_BY_NUMBER:Ljq;

    aput-object v1, v0, v3

    sget-object v1, Ljq;->ADD_BY_SNAP:Ljq;

    aput-object v1, v0, v4

    sget-object v1, Ljq;->ADD_BY_USERNAME:Ljq;

    aput-object v1, v0, v5

    sget-object v1, Ljq;->ADD_NEARBY:Ljq;

    aput-object v1, v0, v6

    sput-object v0, Ljq;->$VALUES:[Ljq;

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

.method public static valueOf(Ljava/lang/String;)Ljq;
    .locals 1

    .prologue
    .line 4
    const-class v0, Ljq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljq;

    return-object v0
.end method

.method public static values()[Ljq;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ljq;->$VALUES:[Ljq;

    invoke-virtual {v0}, [Ljq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljq;

    return-object v0
.end method
