.class public final enum Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api2/IpRoutingErrorTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

.field public static final enum JSON_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

.field public static final enum NETWORK_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    const-string v1, "NETWORK_ERROR"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->NETWORK_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    .line 17
    new-instance v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    const-string v1, "JSON_ERROR"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->JSON_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    .line 15
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    sget-object v1, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->NETWORK_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->JSON_ERROR:Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->$VALUES:[Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->$VALUES:[Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/IpRoutingErrorTask$ErrorType;

    return-object v0
.end method
