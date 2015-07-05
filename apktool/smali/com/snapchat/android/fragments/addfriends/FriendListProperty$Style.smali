.class public final enum Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/fragments/addfriends/FriendListProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

.field public static final enum OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

.field public static final enum TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

.field public static final enum WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    const-string v1, "OPAQUE_CHECKBOX"

    const v2, 0x7f02006e

    invoke-direct {v0, v1, v3, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    .line 28
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    const-string v1, "TRANSPARENT_CHECKBOX"

    const v2, 0x7f02006f

    invoke-direct {v0, v1, v4, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    .line 29
    new-instance v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    const-string v1, "WHITE_TEXT"

    const v2, 0x7f020070

    invoke-direct {v0, v1, v5, v2}, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->OPAQUE_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->TRANSPARENT_CHECKBOX:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->WHITE_TEXT:Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->a:I

    .line 36
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->$VALUES:[Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    invoke-virtual {v0}, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;

    return-object v0
.end method


# virtual methods
.method public final getBackgroundResId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/snapchat/android/fragments/addfriends/FriendListProperty$Style;->a:I

    return v0
.end method
