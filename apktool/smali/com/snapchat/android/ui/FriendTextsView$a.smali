.class final enum Lcom/snapchat/android/ui/FriendTextsView$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/ui/FriendTextsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/ui/FriendTextsView$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/snapchat/android/ui/FriendTextsView$a;

.field public static final enum b:Lcom/snapchat/android/ui/FriendTextsView$a;

.field public static final enum c:Lcom/snapchat/android/ui/FriendTextsView$a;

.field public static final enum d:Lcom/snapchat/android/ui/FriendTextsView$a;

.field private static final synthetic e:[Lcom/snapchat/android/ui/FriendTextsView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/ui/FriendTextsView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 45
    new-instance v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    const-string v1, "HIDDEN_TO_SHOWN"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/ui/FriendTextsView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->b:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 46
    new-instance v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    const-string v1, "SHOWN"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/ui/FriendTextsView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 47
    new-instance v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    const-string v1, "SHOWN_TO_HIDDEN"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/ui/FriendTextsView$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->d:Lcom/snapchat/android/ui/FriendTextsView$a;

    .line 43
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/ui/FriendTextsView$a;

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->a:Lcom/snapchat/android/ui/FriendTextsView$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->b:Lcom/snapchat/android/ui/FriendTextsView$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->c:Lcom/snapchat/android/ui/FriendTextsView$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/ui/FriendTextsView$a;->d:Lcom/snapchat/android/ui/FriendTextsView$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->e:[Lcom/snapchat/android/ui/FriendTextsView$a;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/ui/FriendTextsView$a;
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/ui/FriendTextsView$a;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/ui/FriendTextsView$a;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/snapchat/android/ui/FriendTextsView$a;->e:[Lcom/snapchat/android/ui/FriendTextsView$a;

    invoke-virtual {v0}, [Lcom/snapchat/android/ui/FriendTextsView$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/ui/FriendTextsView$a;

    return-object v0
.end method
