.class public final enum Lcom/snapchat/android/model/FriendAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/FriendAction$BlockReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/FriendAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/FriendAction;

.field public static final enum ADD:Lcom/snapchat/android/model/FriendAction;

.field public static final enum BLOCK:Lcom/snapchat/android/model/FriendAction;

.field public static final enum DELETE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum HIDE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum IGNORE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum INVITE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum NONE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum REMOVE:Lcom/snapchat/android/model/FriendAction;

.field public static final enum REPORT_SPAM:Lcom/snapchat/android/model/FriendAction;

.field public static final enum SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

.field public static final enum UNBLOCK:Lcom/snapchat/android/model/FriendAction;


# instance fields
.field private mServerActionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 10
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "ADD"

    const-string v2, "add"

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    .line 11
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "DELETE"

    const-string v2, "delete"

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    .line 12
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "BLOCK"

    const-string v2, "block"

    invoke-direct {v0, v1, v6, v2}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    .line 13
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "UNBLOCK"

    const-string v2, "unblock"

    invoke-direct {v0, v1, v7, v2}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    .line 14
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "REMOVE"

    const-string v2, "remove"

    invoke-direct {v0, v1, v8, v2}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->REMOVE:Lcom/snapchat/android/model/FriendAction;

    .line 15
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "SET_DISPLAY_NAME"

    const/4 v2, 0x5

    const-string v3, "display"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    .line 16
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "REPORT_SPAM"

    const/4 v2, 0x6

    const-string v3, "report_spam"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->REPORT_SPAM:Lcom/snapchat/android/model/FriendAction;

    .line 17
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "IGNORE"

    const/4 v2, 0x7

    const-string v3, "ignore"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    .line 18
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "HIDE"

    const/16 v2, 0x8

    const-string v3, "hide"

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->HIDE:Lcom/snapchat/android/model/FriendAction;

    .line 20
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "INVITE"

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    .line 21
    new-instance v0, Lcom/snapchat/android/model/FriendAction;

    const-string v1, "NONE"

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/snapchat/android/model/FriendAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    .line 8
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/snapchat/android/model/FriendAction;

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->ADD:Lcom/snapchat/android/model/FriendAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->DELETE:Lcom/snapchat/android/model/FriendAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->BLOCK:Lcom/snapchat/android/model/FriendAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->UNBLOCK:Lcom/snapchat/android/model/FriendAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/snapchat/android/model/FriendAction;->REMOVE:Lcom/snapchat/android/model/FriendAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->SET_DISPLAY_NAME:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->REPORT_SPAM:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->IGNORE:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->HIDE:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->INVITE:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snapchat/android/model/FriendAction;->NONE:Lcom/snapchat/android/model/FriendAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snapchat/android/model/FriendAction;->$VALUES:[Lcom/snapchat/android/model/FriendAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/snapchat/android/model/FriendAction;->mServerActionName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/FriendAction;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snapchat/android/model/FriendAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendAction;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/FriendAction;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snapchat/android/model/FriendAction;->$VALUES:[Lcom/snapchat/android/model/FriendAction;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/FriendAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/FriendAction;

    return-object v0
.end method


# virtual methods
.method public final getServerActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/snapchat/android/model/FriendAction;->mServerActionName:Ljava/lang/String;

    return-object v0
.end method
