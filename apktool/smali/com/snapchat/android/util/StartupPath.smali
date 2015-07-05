.class public final enum Lcom/snapchat/android/util/StartupPath;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/util/StartupPath;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/util/StartupPath;

.field public static final enum FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

.field public static final enum FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

.field public static final enum FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

.field public static final enum UNKNOWN:Lcom/snapchat/android/util/StartupPath;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/snapchat/android/util/StartupPath;

    const-string v1, "FROM_KILLED_STATE"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/StartupPath;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    .line 13
    new-instance v0, Lcom/snapchat/android/util/StartupPath;

    const-string v1, "FROM_DESTROYED_STATE"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/util/StartupPath;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    .line 14
    new-instance v0, Lcom/snapchat/android/util/StartupPath;

    const-string v1, "FROM_BACKGROUNDED_STATE"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/util/StartupPath;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    .line 15
    new-instance v0, Lcom/snapchat/android/util/StartupPath;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/util/StartupPath;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snapchat/android/util/StartupPath;

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_KILLED_STATE:Lcom/snapchat/android/util/StartupPath;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_DESTROYED_STATE:Lcom/snapchat/android/util/StartupPath;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->FROM_BACKGROUNDED_STATE:Lcom/snapchat/android/util/StartupPath;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/util/StartupPath;->UNKNOWN:Lcom/snapchat/android/util/StartupPath;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snapchat/android/util/StartupPath;->$VALUES:[Lcom/snapchat/android/util/StartupPath;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/util/StartupPath;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/snapchat/android/util/StartupPath;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/util/StartupPath;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/util/StartupPath;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/snapchat/android/util/StartupPath;->$VALUES:[Lcom/snapchat/android/util/StartupPath;

    invoke-virtual {v0}, [Lcom/snapchat/android/util/StartupPath;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/util/StartupPath;

    return-object v0
.end method
