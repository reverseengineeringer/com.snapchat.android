.class public final enum Lcom/snapchat/android/api2/framework/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api2/framework/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api2/framework/HttpMethod;

.field public static final enum DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

.field public static final enum GET:Lcom/snapchat/android/api2/framework/HttpMethod;

.field public static final enum POST:Lcom/snapchat/android/api2/framework/HttpMethod;

.field public static final enum PUT:Lcom/snapchat/android/api2/framework/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api2/framework/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    .line 5
    new-instance v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api2/framework/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->PUT:Lcom/snapchat/android/api2/framework/HttpMethod;

    .line 6
    new-instance v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api2/framework/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    .line 7
    new-instance v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api2/framework/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/api2/framework/HttpMethod;

    sget-object v1, Lcom/snapchat/android/api2/framework/HttpMethod;->GET:Lcom/snapchat/android/api2/framework/HttpMethod;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api2/framework/HttpMethod;->PUT:Lcom/snapchat/android/api2/framework/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api2/framework/HttpMethod;->POST:Lcom/snapchat/android/api2/framework/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api2/framework/HttpMethod;->DELETE:Lcom/snapchat/android/api2/framework/HttpMethod;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->$VALUES:[Lcom/snapchat/android/api2/framework/HttpMethod;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api2/framework/HttpMethod;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/snapchat/android/api2/framework/HttpMethod;->$VALUES:[Lcom/snapchat/android/api2/framework/HttpMethod;

    invoke-virtual {v0}, [Lcom/snapchat/android/api2/framework/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api2/framework/HttpMethod;

    return-object v0
.end method
