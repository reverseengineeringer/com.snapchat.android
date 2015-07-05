.class public final enum Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/FriendSectionizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FriendSection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/FriendSectionizer$FriendSection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum ADD_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum DEFAULT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum JUST_ADDED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum NEEDS_LOVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum NEW_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum PENDING:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum SUGGESTED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

.field public static final enum USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "STORIES"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "LIVE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 19
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "SUGGESTED"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "ADD_FRIEND"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ADD_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v7}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->PENDING:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "BLOCKED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "BEST_FRIEND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "RECENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "NEEDS_LOVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEEDS_LOVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "DEFAULT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->DEFAULT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "JUST_ADDED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->JUST_ADDED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "NEW_FRIEND"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEW_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 20
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "ALPHABETICAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "ON_SNAPCHAT"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "INVITE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "ME"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "FRIENDS_WHO_ADDED_ME"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "MY_FRIENDS"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "USERNAME"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "NONE"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "MY_ADDRESS_BOOK"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 21
    new-instance v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    const-string v1, "SUGGESTED_FRIEND"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    .line 17
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->STORIES:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->LIVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ADD_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->PENDING:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BLOCKED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->BEST_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->RECENT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEEDS_LOVE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->DEFAULT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->JUST_ADDED:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NEW_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ALPHABETICAL:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ON_SNAPCHAT:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->INVITE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->FRIENDS_WHO_ADDED_ME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_FRIENDS:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->USERNAME:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->NONE:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->MY_ADDRESS_BOOK:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->SUGGESTED_FRIEND:Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->$VALUES:[Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/FriendSectionizer$FriendSection;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->$VALUES:[Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/FriendSectionizer$FriendSection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/FriendSectionizer$FriendSection;

    return-object v0
.end method
