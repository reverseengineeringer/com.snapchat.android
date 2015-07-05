.class public final enum Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TouchMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

.field public static final enum ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

.field public static final enum NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

.field public static final enum SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

.field public static final enum TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    const-string v1, "ALWAYS_TAPPABLE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    .line 14
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    const-string v1, "TAPPABLE_FRIENDS"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    .line 19
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    const-string v1, "SWIPEABLE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    .line 20
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    const-string v1, "NON_TAPPABLE"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    .line 12
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->ALWAYS_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->TAPPABLE_FRIENDS:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->SWIPEABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->NON_TAPPABLE:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$TouchMode;

    return-object v0
.end method
