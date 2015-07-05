.class public final enum Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InterruptReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum INITIAL_PROMPT:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum LOCATION_ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum LOCATION_PERMISSIONS:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

.field public static final enum NO_INTERNET_CONNECTION:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "LOCATION_PERMISSIONS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_PERMISSIONS:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 119
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "INITIAL_PROMPT"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INITIAL_PROMPT:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 120
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "LOCATION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 121
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 122
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "INTENTIONAL"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 123
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    const-string v1, "NO_INTERNET_CONNECTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    .line 117
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_PERMISSIONS:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INITIAL_PROMPT:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->LOCATION_ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->ERROR:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->INTENTIONAL:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->NO_INTERNET_CONNECTION:Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/addfriends/FindNearbyFriendsWorker$InterruptReason;

    return-object v0
.end method
