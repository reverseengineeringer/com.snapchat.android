.class public final enum Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/AlertDialogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "YesNoOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

.field public static final enum NO:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

.field public static final enum YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

.field public static final enum YES_DONT_ASK_AGAIN:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 402
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    const-string v1, "YES"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    .line 403
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    const-string v1, "NO"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->NO:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    .line 404
    new-instance v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    const-string v1, "YES_DONT_ASK_AGAIN"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES_DONT_ASK_AGAIN:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    .line 401
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->NO:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->YES_DONT_ASK_AGAIN:Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->$VALUES:[Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

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
    .line 401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;
    .locals 1

    .prologue
    .line 401
    const-class v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->$VALUES:[Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/AlertDialogUtils$YesNoOption;

    return-object v0
.end method
