.class public final enum Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field public static final enum ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field public static final enum FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

.field public static final enum NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 8
    new-instance v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    const-string v1, "FAIL_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 9
    new-instance v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    const-string v1, "ALL"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->NONE:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->FAIL_ONLY:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->ALL:Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    aput-object v1, v0, v4

    sput-object v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->$VALUES:[Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->$VALUES:[Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/save/SaveMediaNotificationsToShow;

    return-object v0
.end method
