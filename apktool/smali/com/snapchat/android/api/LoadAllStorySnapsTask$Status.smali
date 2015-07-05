.class public final enum Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/api/LoadAllStorySnapsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field public static final enum FAILED_TO_LOAD:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field public static final enum INITIALIZED:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field public static final enum RUNNING:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field public static final enum SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

.field public static final enum TIMEOUT:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->INITIALIZED:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 39
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v3}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->RUNNING:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 40
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 41
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    const-string v1, "FAILED_TO_LOAD"

    invoke-direct {v0, v1, v5}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->FAILED_TO_LOAD:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 42
    new-instance v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v6}, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->TIMEOUT:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->INITIALIZED:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->RUNNING:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->SUCCESS:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->FAILED_TO_LOAD:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->TIMEOUT:Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    aput-object v1, v0, v6

    sput-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->$VALUES:[Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    return-object v0
.end method

.method public static values()[Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->$VALUES:[Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    invoke-virtual {v0}, [Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snapchat/android/api/LoadAllStorySnapsTask$Status;

    return-object v0
.end method
