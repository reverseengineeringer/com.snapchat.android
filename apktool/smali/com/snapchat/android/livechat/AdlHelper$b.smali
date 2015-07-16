.class public final enum Lcom/snapchat/android/livechat/AdlHelper$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/livechat/AdlHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/livechat/AdlHelper$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/livechat/AdlHelper$b;

.field public static final enum b:Lcom/snapchat/android/livechat/AdlHelper$b;

.field public static final enum c:Lcom/snapchat/android/livechat/AdlHelper$b;

.field public static final enum d:Lcom/snapchat/android/livechat/AdlHelper$b;

.field public static final enum e:Lcom/snapchat/android/livechat/AdlHelper$b;

.field private static final synthetic f:[Lcom/snapchat/android/livechat/AdlHelper$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/livechat/AdlHelper$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 60
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    const-string v1, "REQUESTED"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/livechat/AdlHelper$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 63
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/livechat/AdlHelper$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->c:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 66
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/livechat/AdlHelper$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 69
    new-instance v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    const-string v1, "DEFERRED_DISCONNECTING"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/livechat/AdlHelper$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->e:Lcom/snapchat/android/livechat/AdlHelper$b;

    .line 53
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/livechat/AdlHelper$b;

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->a:Lcom/snapchat/android/livechat/AdlHelper$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->b:Lcom/snapchat/android/livechat/AdlHelper$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->c:Lcom/snapchat/android/livechat/AdlHelper$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->d:Lcom/snapchat/android/livechat/AdlHelper$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/livechat/AdlHelper$b;->e:Lcom/snapchat/android/livechat/AdlHelper$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->f:[Lcom/snapchat/android/livechat/AdlHelper$b;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/livechat/AdlHelper$b;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/livechat/AdlHelper$b;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/livechat/AdlHelper$b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/snapchat/android/livechat/AdlHelper$b;->f:[Lcom/snapchat/android/livechat/AdlHelper$b;

    invoke-virtual {v0}, [Lcom/snapchat/android/livechat/AdlHelper$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/livechat/AdlHelper$b;

    return-object v0
.end method
