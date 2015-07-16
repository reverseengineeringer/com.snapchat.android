.class public final enum Lii;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lii;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lii;

.field public static final enum LOGGED_OUT:Lii;

.field public static final enum NORMAL:Lii;

.field public static final enum NOTIFY:Lii;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lii;

    const-string v1, "LOGGED_OUT"

    invoke-direct {v0, v1, v2}, Lii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lii;->LOGGED_OUT:Lii;

    .line 6
    new-instance v0, Lii;

    const-string v1, "NOTIFY"

    invoke-direct {v0, v1, v3}, Lii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lii;->NOTIFY:Lii;

    .line 7
    new-instance v0, Lii;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lii;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lii;->NORMAL:Lii;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lii;

    sget-object v1, Lii;->LOGGED_OUT:Lii;

    aput-object v1, v0, v2

    sget-object v1, Lii;->NOTIFY:Lii;

    aput-object v1, v0, v3

    sget-object v1, Lii;->NORMAL:Lii;

    aput-object v1, v0, v4

    sput-object v0, Lii;->$VALUES:[Lii;

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

.method public static valueOf(Ljava/lang/String;)Lii;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lii;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lii;

    return-object v0
.end method

.method public static values()[Lii;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lii;->$VALUES:[Lii;

    invoke-virtual {v0}, [Lii;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lii;

    return-object v0
.end method
