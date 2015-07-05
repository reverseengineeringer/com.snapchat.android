.class public final enum Lcom/snapchat/android/model/FriendAction$BlockReason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/model/FriendAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlockReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/model/FriendAction$BlockReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/model/FriendAction$BlockReason;

.field public static final enum ANNOYING:Lcom/snapchat/android/model/FriendAction$BlockReason;

.field public static final enum DONT_KNOW_WHOM:Lcom/snapchat/android/model/FriendAction$BlockReason;

.field public static final enum HARASSING_ME:Lcom/snapchat/android/model/FriendAction$BlockReason;

.field public static final enum INAPPROPRIATE_SNAPS:Lcom/snapchat/android/model/FriendAction$BlockReason;

.field public static final enum OTHER:Lcom/snapchat/android/model/FriendAction$BlockReason;


# instance fields
.field private code:I

.field private textId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    const-string v1, "INAPPROPRIATE_SNAPS"

    const v2, 0x7f0c004b

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/snapchat/android/model/FriendAction$BlockReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->INAPPROPRIATE_SNAPS:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 35
    new-instance v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    const-string v1, "HARASSING_ME"

    const v2, 0x7f0c004a

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/snapchat/android/model/FriendAction$BlockReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->HARASSING_ME:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 36
    new-instance v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    const-string v1, "ANNOYING"

    const v2, 0x7f0c0048

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/snapchat/android/model/FriendAction$BlockReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->ANNOYING:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 37
    new-instance v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    const-string v1, "DONT_KNOW_WHOM"

    const v2, 0x7f0c0049

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/snapchat/android/model/FriendAction$BlockReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->DONT_KNOW_WHOM:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 38
    new-instance v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    const-string v1, "OTHER"

    const v2, 0x7f0c004c

    invoke-direct {v0, v1, v7, v3, v2}, Lcom/snapchat/android/model/FriendAction$BlockReason;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->OTHER:Lcom/snapchat/android/model/FriendAction$BlockReason;

    .line 33
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/model/FriendAction$BlockReason;

    sget-object v1, Lcom/snapchat/android/model/FriendAction$BlockReason;->INAPPROPRIATE_SNAPS:Lcom/snapchat/android/model/FriendAction$BlockReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/model/FriendAction$BlockReason;->HARASSING_ME:Lcom/snapchat/android/model/FriendAction$BlockReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/model/FriendAction$BlockReason;->ANNOYING:Lcom/snapchat/android/model/FriendAction$BlockReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/model/FriendAction$BlockReason;->DONT_KNOW_WHOM:Lcom/snapchat/android/model/FriendAction$BlockReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snapchat/android/model/FriendAction$BlockReason;->OTHER:Lcom/snapchat/android/model/FriendAction$BlockReason;

    aput-object v1, v0, v7

    sput-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->$VALUES:[Lcom/snapchat/android/model/FriendAction$BlockReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/snapchat/android/model/FriendAction$BlockReason;->code:I

    .line 46
    iput p4, p0, Lcom/snapchat/android/model/FriendAction$BlockReason;->textId:I

    .line 47
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/model/FriendAction$BlockReason;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/FriendAction$BlockReason;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/model/FriendAction$BlockReason;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/snapchat/android/model/FriendAction$BlockReason;->$VALUES:[Lcom/snapchat/android/model/FriendAction$BlockReason;

    invoke-virtual {v0}, [Lcom/snapchat/android/model/FriendAction$BlockReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/model/FriendAction$BlockReason;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/snapchat/android/model/FriendAction$BlockReason;->code:I

    return v0
.end method

.method public final getTextId()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/snapchat/android/model/FriendAction$BlockReason;->textId:I

    return v0
.end method
