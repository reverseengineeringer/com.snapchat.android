.class final enum Lahh$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lahh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lahh$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lahh$b;

.field public static final enum b:Lahh$b;

.field public static final enum c:Lahh$b;

.field public static final enum d:Lahh$b;

.field public static final enum e:Lahh$b;

.field private static final synthetic f:[Lahh$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lahh$b;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lahh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahh$b;->a:Lahh$b;

    .line 40
    new-instance v0, Lahh$b;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lahh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahh$b;->b:Lahh$b;

    .line 43
    new-instance v0, Lahh$b;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lahh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahh$b;->c:Lahh$b;

    .line 46
    new-instance v0, Lahh$b;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lahh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahh$b;->d:Lahh$b;

    .line 49
    new-instance v0, Lahh$b;

    const-string v1, "DEFERRED_DISCONNECTING"

    invoke-direct {v0, v1, v6}, Lahh$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lahh$b;->e:Lahh$b;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lahh$b;

    sget-object v1, Lahh$b;->a:Lahh$b;

    aput-object v1, v0, v2

    sget-object v1, Lahh$b;->b:Lahh$b;

    aput-object v1, v0, v3

    sget-object v1, Lahh$b;->c:Lahh$b;

    aput-object v1, v0, v4

    sget-object v1, Lahh$b;->d:Lahh$b;

    aput-object v1, v0, v5

    sget-object v1, Lahh$b;->e:Lahh$b;

    aput-object v1, v0, v6

    sput-object v0, Lahh$b;->f:[Lahh$b;

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
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lahh$b;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lahh$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lahh$b;

    return-object v0
.end method

.method public static values()[Lahh$b;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lahh$b;->f:[Lahh$b;

    invoke-virtual {v0}, [Lahh$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lahh$b;

    return-object v0
.end method
